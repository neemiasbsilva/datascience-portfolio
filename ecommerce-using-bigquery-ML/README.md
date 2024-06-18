# Predict wich new visitors will come back and purchase using the Google Merchandise Store dataset

This repository has the purpose to apply BigQuery ML in the [Google Merchandise Store dataset](https://cloud.google.com/bigquery/public-data). The tasks doing here was:

- Training using a `logitisc regression` model using the following structure:
    - **Features**:
        - Bounces;
        - time_on_site. 
    - **Labels**: `will_buy_on_return_vistit`

- The file to train this models are available here: [train_model1.sql](src/train_model1.sql).
- The file to run the evaluation it located here: [eval_model1.sql](src/eval_model1.sql)

The results for for each model are showed in table below:


