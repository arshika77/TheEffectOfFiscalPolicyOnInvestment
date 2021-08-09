encode country, gen(country1)
xtset country1 time

tab time, gen(yr_)

xtreg pubinv gdp lfpr popgrowth adr yr*, fe vce(robust)

xtreg pubinv taxrev yr*, fe vce(robust)
xtreg pubinv gast yr*, fe vce(robust)
xtreg pubinv intax yr*, fe vce(robust)
xtreg pubinv proptax yr*, fe vce(robust)
xtreg pubinv payrolltax yr*, fe vce(robust)
xtreg pubinv ssc yr*, fe vce(robust)
xtreg pubinv proptax yr*, fe vce(robust)
xtreg pubinv wages yr*, fe vce(robust)
xtreg pubinv intpay yr*, fe vce(robust)
xtreg pubinv subs yr*, fe vce(robust)
xtreg pubinv pubconsm yr*, fe vce(robust)

xtreg pubinv gdp lfpr popgrowth adr gast intax proptax payrolltax ssc yr*, fe vce(robust)
xtreg pubinv gdp lfpr popgrowth adr wages intpay subs pubconsm yr*, fe vce(robust)
