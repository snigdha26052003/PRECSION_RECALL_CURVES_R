# Recall Gain vs Precision Gain Curve in R

This R script calculates and plots **Recall Gain vs Precision Gain curves** for a given dataset of observed and predicted values. It is designed for evaluating multiple classification models based on their performance across various threshold levels.

## 📂 Dataset

The input CSV file must be structured as follows:
- The **first column** should contain **observed binary values** (0 or 1).
- Each **subsequent column** should contain **predicted probabilities** from different models.


## 📈 What the Script Does

1. **Reads the data** from a user-provided file path.
2. Extracts the **observed values** and computes the **positive class proportion**.
3. For each model:
   - Converts predicted probabilities to binary classes using a range of thresholds.
   - Calculates **TP, FP, TN, FN** at each threshold.
   - Computes **Recall** and **Precision**.
   - Computes **Recall Gain** and **Precision Gain**.
4. Plots **Recall Gain vs Precision Gain curves** for all models using base R's `plot()` and `lines()`.

## 🛠️ How to Use

1. Save your data as a CSV file (e.g., `trialdata.csv`).
2. Run the R script.
3. When prompted, enter the **full path** to your data file (e.g., `C:\\Users\\mypc\\Documents\\trialdata.csv`).
4. The plot will be generated comparing the models visually.

## 📌 Requirements

- Base R (no additional libraries required).
- Compatible with `.csv` files where column 1 is observed values, and others are predicted values.

## 🧠 Key Metrics

- **Recall Gain (recG)**: Adjusted recall score normalized by the proportion of positive class.
- **Precision Gain (precG)**: Adjusted precision score normalized similarly.

These metrics help interpret performance better, especially in **imbalanced datasets**.

## 🎨 Output

- A line graph of **Recall Gain vs Precision Gain**.
- Each line represents one predictive model, color-coded.

## 👨‍💻 Author

Developed as part of an internship project for evaluating classification model performance using gain-based metrics.

