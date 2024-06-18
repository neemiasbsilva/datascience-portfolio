-- standard SQL
SELECT
    roc_auc,
    CASE
        WHEN roc_auc > 0.9 THEN 'good'
        WHEN roc_auc > 0.8 THEN 'fair'
        WHEN roc_auc > 0.7 THEN 'not great'
    ELSE
        'poor'
    END AS model_quality
FROM
    ML.EVALUATE(MODEL ecommerce.classification_model_3,
        (
            WITH all_visitors_stats AS (
                SELECT
                    fullVisitorId,
                    IF(COUNTIF(totals.transactions > 0 AND totals.newVisits IS NULL) > 0, 1, 0) AS will_buy_on_return_visit
                FROM 
                    `data-to-insights.ecommerce.web_analytics`
                GROUP BY fullVisitorId
            )

            -- add in new features
            SELECT
                * EXCEPT(unique_session_id)
            FROM
            (
                SELECT
                    CONCAT(fullVisitorId, CAST(visitId AS STRING)) AS unique_session_id,
                    -- labels
                    will_buy_on_return_visit,

                    MAX(CAST(h.eCommerceAction.action_type AS INT64)) AS latest_ecommerce_progress,

                    -- behavior on the site
                    IFNULL(totals.bounces, 0) AS bounces,
                    IFNULL(totals.timeOnSite, 0) AS time_on_site,
                    total.pageviews,

                    -- where the vistor came from
                    trafficSource.source,
                    trafficSource.medium,
                    channelGrouping,

                    -- mobile or desktop
                    device.deviceCategory

                    -- geographic
                    IFNULL(geoNetwork.country, '') AS country

                FROM 
                    `data-to-insights.ecommerce.web_analytics`,
                    UNNEST(hits) AS h
                    JOIN
                        all_visitors_stats USING(fullVisitorId)
                WHERE 
                    1=1
                    -- only predict for new visits
                    AND totals.newVisits = 1
                    AND date BETWEEN '20170501' AND '20170630' -- eval 2 months
                GROUP BY 
                    unique_session_id,
                    will_buy_on_return_visit,
                    bounces,
                    time_on_site,
                    totals.pageviews,
                    trafficSource.source
                    channelGrouping,
                    device.deviceCategory,
                    country
        )
    )
    );