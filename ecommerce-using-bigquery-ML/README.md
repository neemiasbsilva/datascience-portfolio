# Predict wich new visitors will come back and purchase using the Google Merchandise Store dataset

This repository has the purpose to apply BigQuery ML in the [Google Merchandise Store dataset](https://cloud.google.com/bigquery/public-data). The tasks doing here was:

---

## Experiments

### First approach

Training using a `logitisc regression` model using the following structure:
- **Features**:
    - Bounces;
    - time_on_site. 
- **Labels**: `will_buy_on_return_vistit`

The file to train this models are available here: [train_model1.sql](src/train_model1.sql).
The file to run the evaluation it located here: [eval_model1.sql](src/eval_model1.sql)

### Second approach

Training using a `logitisc regression` model using the following structure:
- **Features**:
    - Bounces;
    - time_on_site;
    - page_views;
    - source,
    - medium,
    - channels_grouping;
    - device_category;
    - country.
- **Labels**: `will_buy_on_return_vistit`

- The file to train this models are available here: [train_model2.sql](src/train_model2.sql).
- The file to run the evaluation it located here: [eval_model2.sql](src/eval_model2.sql)

### Third approach

Training using a `XGBOOST` model using the following structure:
- **Features**:
    - Bounces;
    - time_on_site;
    - page_views;
    - source,
    - medium,
    - channels_grouping;
    - device_category;
    - country.
- **Labels**: `will_buy_on_return_vistit`

- The file to train this models are available here: [train_xgboost.sql](src/train_xgboost.sql).
- The file to run the evaluation it located here: [eval_xgboost.sql](src/eval_model2.sql)

---

## Results

For each experiments we use the ROC (Receiver Operating Charateristics) curve where we try to maximize the area under the curve or AUC.

| Approachs       | ML Model          | Numbers of Independent Features | ROC AUC |
|-----------------|-------------------|---------------------------------|---------|
| First Approach  | Linear Regression |                2                |   0.78  |
| Second Approach | Linear Regression |                8                |   0.92  |
| Third Approach  | XGBoost           |                8                |   0.94  |
