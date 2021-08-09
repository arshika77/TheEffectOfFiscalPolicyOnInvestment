encode country, gen(country1)
xtset country1 time

tab time, gen(yr_)

/// within - individual 

xtreg priinv health yr* , fe vce(robust)
xtreg priinv edu yr* , fe vce(robust)
xtreg priinv ssw yr* , fe vce(robust)

/// within 

xtreg priinv health edu ssw yr* , fe vce(robust)

/// SYS-GMM - individual

xtabond2 priinv health yr*, ///
gmm(l.priinv,collapse) iv(health yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[health])/(1 - _b[health])

xtabond2 priinv edu yr*, ///
gmm(l.priinv,collapse) iv(edu yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[edu])/(1 - _b[edu])

xtabond2 priinv ssw yr*, ///
gmm(l.priinv,collapse) iv(ssw yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[ssw])/(1 - _b[ssw])

/// SYS-GMM

xtabond2 priinv health edu ssw yr*, ///
gmm(l.priinv,collapse) iv(health edu ssw yr*, equation(level)) ///
nodiffsargan twostep robust orthogonal small

nlcom (_b[health])/(1 - _b[health])
nlcom (_b[edu])/(1 - _b[edu])
nlcom (_b[ssw])/(1 - _b[ssw])
