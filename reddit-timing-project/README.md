# Timing Isn't Everything: Post Timing and Engagement on r/AskReddit

**Working paper** – University of Connecticut, 2024

This project investigates whether the **full date‑time** of a post on r/AskReddit influences the number of comments it receives.

## Files

- `reddit_timing_analysis.R` – R script that collects live data from Reddit, runs linear regression (full datetime predictor), and produces a scatter plot.
- `reddit_timing_data.csv` – (optional) static snapshot of the data used in the analysis.

## Methods

- **Data collection**: RedditExtractoR package (Reddit API)
- **Variables**: 
  - Independent: full date‑time of post (POSIXct format)
  - Dependent: number of comments
- **Analysis**: Linear regression (`lm` in R)
- **Visualization**: Scatter plot with regression line (`ggplot2`)

## Key Findings

- Linear regression found a **statistically significant but extremely weak** relationship (R² = 0.0048, p = 0.035).
- The negative coefficient indicates a very slight decrease in comments over the collection period, but timing explains less than 0.5% of the variance.
- **Practical interpretation**: While the p‑value is significant, the effect size is negligible. Other factors (content quality, question wording, user engagement) are far more important.

## How to Run

1. Install required R packages: `RedditExtractoR`, `ggplot2`, `dplyr`, `lubridate`.
2. Run `reddit_timing_analysis.R` line by line.
   - The script will fetch current data from Reddit (requires internet and Reddit API access).
   - Alternatively, load the provided CSV and comment out the API lines.
3. The regression summary and scatter plot will be displayed.

## Reproducibility

The script includes an optional `write.csv()` line to save a static snapshot of the data for future reference. This ensures the analysis can be reproduced even if the live API changes.

## Citation

If you use this code or findings, please cite as:

Williams, B. A. (2024). Timing Isn't Everything: Analyzing the Dynamics of Post Timing and Engagement on Reddit. (Working paper). University of Connecticut.
