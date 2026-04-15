# ============================================================================
# Meta-analysis: Social Presence and User Experience with AI Agents
# Author: Brett Williams
# Publication: International Journal of Human-Computer Interaction (2025)
# ============================================================================

# Load libraries
library(metafor)
library(ggplot2)
library(dplyr)

# 1. Load data (adjust path as needed)
meta_data <- read.csv("C:/Users/Brett/OneDrive - University of Connecticut/UCONN/Projects/COMPLETE/ai_social_presence_meta.csv")

# Check column names (should be: study, ai_format, n, r)
names(meta_data)

meta_data <- subset(meta_data, Construct == "Social Presence")

# 2. Calculate effect sizes (Fisher's z) – note ni = n (lowercase)
meta_data <- escalc(measure = "ZCOR", ri = r, ni = N, data = meta_data)

# 3. Overall random-effects model
overall <- rma(yi, vi, data = meta_data, method = "REML")
summary(overall)

# 4. Create binary moderator: Multimodal (Avatar + Service Robot) vs. Text/Voice (others)
#    Use the correct column name: ai_format
meta_data$format_group <- ifelse(meta_data$AI.Format %in% c("Avatar", "Service Robot"),
                                 "Multimodal", "Text/Voice")

# 5. Subgroup analysis with binary moderator
subgroup_binary <- rma(yi, vi, mods = ~ format_group, data = meta_data, method = "REML")
summary(subgroup_binary)

# 6. Forest plot
forest(overall, slab = meta_data$Study, 
       xlab = "Fisher's z-transformed correlation", 
       main = "Social Presence and User Experience")

# 7. Funnel plot and Egger's test
funnel(overall, main = "Funnel Plot")
regtest(overall)

# 8. Optional: Save results to text file
sink("meta_analysis_results.txt")
print("Overall Model")
print(summary(overall))
print("Subgroup Analysis (Binary)")
print(summary(subgroup_binary))
sink()