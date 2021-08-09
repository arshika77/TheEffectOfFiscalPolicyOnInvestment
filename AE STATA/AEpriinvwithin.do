encode country, gen(country1)
xtset country1 time

tab time, gen(yr_)

xtreg priinv gdp lfpr popgrowth adr yr*, fe vce(robust)

xtreg priinv taxrev yr*, fe vce(robust)
xtreg priinv gast yr*, fe vce(robust)
xtreg priinv intax yr*, fe vce(robust)
xtreg priinv proptax yr*, fe vce(robust)
xtreg priinv payrolltax yr*, fe vce(robust)
xtreg priinv ssc yr*, fe vce(robust)
xtreg priinv wages yr*, fe vce(robust)
xtreg priinv intpay yr*, fe vce(robust)
xtreg priinv subs yr*, fe vce(robust)
xtreg priinv pubconsm yr*, fe vce(robust)

xtreg priinv gdp lfpr popgrowth adr gast intax proptax payrolltax ssc yr*, fe vce(robust)
xtreg priinv gdp lfpr popgrowth adr wages intpay subs pubconsm yr*, fe vce(robust)
