# Emoji Use and Perceived CMC Effectiveness

This folder contains the R analysis script and anonymized data for:

**Williams, B., & Christensen, J. (2026). Exploring emojis in the landscape of digital discourse.**  
*Communication Research Reports*, 1–12. https://doi.org/10.1080/08824096.2025.2609671

## Files

- `emoji_CMC_replication.R` – R script that replicates the hierarchical regression analysis (Table 2, CMC effectiveness model).
- `emoji_survey_data_anonymized.csv` – Survey data (N=472) with personally identifiable information removed.

## Purpose

This script reproduces the key finding that using emojis to **express feelings** and **add humor** significantly predicts higher perceived computer‑mediated communication (CMC) effectiveness.

## Requirements

- R (version 4.0+)
- Package: `lm.beta` (for standardized coefficients; base `lm()` also works)

Install the package in R:
```r
install.packages("lm.beta")
```

## How to Run

1. Download both files to the same folder on your computer.
2. Open `emoji_CMC_replication.R` in RStudio.
3. Run the script line by line or source it.

## Results

When run, the script produces the following standardized coefficients (β):


| Motive | Standardized β | p‑value |
| -------- | -------- | -------- |
| Express feelings    | .22   | .005   |
| Make content more fun/comical   | .23   | .003   |

These closely match the published coefficients (β = .21 and .26, respectively). Minor differences are due to software and missing data handling.

## Notes

- The analysis uses complete cases (listwise deletion). Sample size: N = 424.
- The script does not include demographic controls, following the published model.

## Citation

If you use this code or data, please cite the original article:

Williams, B., & Christensen, J. (2026). Exploring emojis in the landscape of digital discourse. Communication Research Reports, 1–12. https://doi.org/10.1080/08824096.2025.2609671
