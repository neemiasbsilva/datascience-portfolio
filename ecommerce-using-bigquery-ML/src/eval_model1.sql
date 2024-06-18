SELECT
    roc_auc,
    CASE
        WHEN roc_auc > 0.9 THEN 'good'
        WHEN roc_auc > 0.8 THEN 'fair'
        WHEN roch_auc > 0.7 THEN 'not great'
    ELSE
        'poor'
    END AS model_quality
FROM
    ML.EVALUATE(
        MODEL ecommerce.classification_model, 
        (
            SELECT
                * EXCEPT(fullVisitorId)
            FROM 
                -- features
                (
                    SELECT
                        fullVisitorId,
                        IFNULL(totals.bounces, 0) AS bounces,
                        IFNULL(totals.timeOnSite, 0) AS time_on_site
                    FROM
                        `data-to-insights.ecommerce.web_analytics`
                    WHERE
                        total.newVisits = 1
                        AND date BETWEEN '20170501' AND '20170630' -- eval on 2 months
                )
                JOIN
                (
                    SELECT
                        fullVisitorId,
                        IF(COUNTIF totals.transactions > 0 AND totals.newVisits IS NULL) > 0, 1, 0) AS will_buy_on_return_visit
                    FROM
                        `data-to-insights.ecommerce.web_analytics`
                    GROUP BY fullVisitorId
                )
                USING (fullVisitorId)
        )
    );