encode Countries, gen(country1)
xtset country1 Time

tab Time, gen(yr_)

xtabond2 priinv gdp lfpr popgrowth adr yr*, ///
gmm(l.priinv, collapse) iv(gdp lfpr popgrowth adr yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 pubinv gdp lfpr popgrowth adr yr*, ///
gmm(l.pubinv, collapse) iv(gdp lfpr popgrowth adr yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small
