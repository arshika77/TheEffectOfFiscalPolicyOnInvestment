encode country, gen(country1)
xtset country1 time

tab time, gen(yr_)

/// Running two step GMM

xtabond2 priinv gdp lfpr popgrowth adr yr*, ///
gmm(l.priinv,collapse) iv(gdp lfpr popgrowth adr yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[gdp])/(1 - _b[gdp])
nlcom (_b[adr])/(1 - _b[adr])

xtabond2 priinv taxrev yr*, ///
gmm(l.priinv,collapse) iv(gast yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv gast yr*, ///
gmm(l.priinv,collapse) iv(gast yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv proptax yr*, ///
gmm(l.priinv,collapse) iv(proptax yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[proptax])/(1 - _b[proptax])

xtabond2 priinv intax yr*, ///
gmm(l.priinv,collapse) iv(intax yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv payrolltax yr*, ///
gmm(l.priinv,collapse) iv(payrolltax yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv ssc yr*, ///
gmm(l.priinv,collapse) iv(ssc yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv wages yr*, ///
gmm(l.priinv,collapse) iv(wages yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv intpay yr*, ///
gmm(l.priinv,collapse) iv(intpay yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[intpay])/(1 - _b[intpay])

xtabond2 priinv subs yr*, ///
gmm(l.priinv,collapse) iv(subs yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[subs])/(1 - _b[subs])

xtabond2 priinv pubconsm yr*, ///
gmm(l.priinv,collapse) iv(pubconsm yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 priinv gdp lfpr popgrowth adr gast intax proptax payrolltax ssc yr*, ///
gmm(l.priinv,collapse) iv(gdp lfpr popgrowth adr gast intax proptax payrolltax ssc yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[proptax])/(1 - _b[proptax])

xtabond2 priinv gdp lfpr popgrowth adr wages intpay subs pubconsm yr*, ///
gmm(l.priinv,collapse) iv(gdp lfpr popgrowth adr wages intpay subs pubconsm yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[intpay])/(1 - _b[intpay])
nlcom (_b[subs])/(1 - _b[subs])
