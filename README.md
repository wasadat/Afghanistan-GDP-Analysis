# Afghanistan-GDP-Analysis
Difference-in-differences analysis of US investment and Afghanistan GDP growth vs. comparable fragile states.

# Overview
This project examines whether US investment and aid disbursements from 2002-2021 resulted in statistically significant GDP growth in Afghanistan compared to other relatively similar fragile states. This is done by using a difference-in-differences framework with country year and fixed effects.

# Key Findings
No statistically significant differential effect was found (DiD coefficient = 0.103, p = 0.537), suggesting that Afghanistan's GDP growth within the investment period wasn't meaningfully faster than comparable fragile states that had no equivelent intervention.

# Data
- World Bank Open Data: GDP per capita (NY.GDP.PCAP.CD)
- Comparison countries: Yemen, Mali, Chad, Niger, Mozambique, 
  DRC, Sierra Leone
- Period: 1995–2023

# Tools
- Stata (data cleaning, panel regression, visualization)
- xtreg with country and year fixed effects
- Clustered standard errors at country level

# Files
- code/analysis.do — full Stata do-file reproducing all results
- output/gdp_trends.png — main trend visualization
- brief/afghanistan_policy_brief.pdf — one-page policy summary

# Data Source
World Bank Open Data. US spending figure ($145B) sourced from 
SIGAR Quarterly Report to Congress.
