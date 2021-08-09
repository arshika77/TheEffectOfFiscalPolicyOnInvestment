encode country, gen(country1)
xtset country1 time

tab time, gen(yr_)

/// Running two step GMM

xtabond2 pubinv gdp lfpr popgrowth adr yr*, ///
gmm(l.pubinv,collapse) iv(gdp lfpr popgrowth adr yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[gdp])/(1 - _b[gdp])
nlcom (_b[adr])/(1 - _b[adr])

xtabond2 pubinv taxrev yr*, ///
gmm(l.pubinv,collapse) iv(gast yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 pubinv gast yr*, ///
gmm(l.pubinv,collapse) iv(gast yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[gast])/(1 - _b[gast])

xtabond2 pubinv proptax yr*, ///
gmm(l.pubinv,collapse) iv(proptax yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 pubinv intax yr*, ///
gmm(l.pubinv,collapse) iv(intax yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 pubinv payrolltax yr*, ///
gmm(l.pubinv,collapse) iv(payrolltax yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[payrolltax])/(1 - _b[payrolltax])

xtabond2 pubinv ssc yr*, ///
gmm(l.pubinv,collapse) iv(ssc yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 pubinv wages yr*, ///
gmm(l.pubinv,collapse) iv(wages yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

xtabond2 pubinv intpay yr*, ///
gmm(l.pubinv,collapse) iv(intpay yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[intpay])/(1 - _b[intpay])

xtabond2 pubinv subs yr*, ///
gmm(l.pubinv,collapse) iv(subs yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[subs])/(1 - _b[subs])

xtabond2 pubinv pubconsm yr*, ///
gmm(l.pubinv,collapse) iv(pubconsm yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[pubconsm])/(1 - _b[pubconsm])

xtabond2 pubinv gdp lfpr popgrowth adr gast intax proptax payrolltax ssc yr*, ///
gmm(l.pubinv,collapse) iv(gdp lfpr popgrowth adr gast intax proptax payrolltax ssc yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[payrolltax])/(1 - _b[payrolltax])

xtabond2 pubinv gdp lfpr popgrowth adr wages intpay subs pubconsm yr*, ///
gmm(l.pubinv,collapse) iv(gdp lfpr popgrowth adr wages intpay subs pubconsm yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[intpay])/(1 - _b[intpay])
nlcom (_b[subs])/(1 - _b[subs])
