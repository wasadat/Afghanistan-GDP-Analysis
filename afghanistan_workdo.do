
*Line trend comparison
twoway (line gdp_per_capita year if country == "Yemen, Rep.", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Mali", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Chad", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Niger", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Mozambique", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Congo, Dem. Rep.", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Sierra Leone", lcolor(navy) lwidth(thin) lpattern(solid)) (line gdp_per_capita year if country == "Afghanistan", lcolor(cranberry) lwidth(medthick) lpattern(solid)), xline(2002, lcolor(gray) lpattern(dash)) xline(2021, lcolor(gray) lpattern(dash)) title("GDP per Capita: Afghanistan vs. Fragile States") xtitle("Year") ytitle("GDP per Capita (current USD)") legend(order(8 "Afghanistan" 1 "Comparison countries") rows(1))

*Regression now
* Load the analysis dataset
use "gdp_analysis.dta", clear

* DiD regression with country and year fixed effects
xtreg log_gdp did_term i.year, fe vce(cluster country_id)

*Save
ssc install outreg2
outreg2 using "regression_results.doc", replace ///
    title("DiD Regression: US Investment and Afghanistan GDP per Capita") ///
    ctitle("Log GDP per Capita") keep(did_term)
	
* Average GDP per capita for Afghanistan by era
bysort country: summarize gdp_per_capita if country == "Afghanistan"

* Compare pre and post averages
tabstat gdp_per_capita, by(country) statistics(mean)

* To double check numbers
list year gdp_per_capita if country == "Afghanistan", clean
