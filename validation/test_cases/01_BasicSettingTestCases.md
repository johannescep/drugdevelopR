#' @title 01. Basic setting test cases
#' @editor Johannes Cepicka
#' @editDate 2022-08-16
#' @coverage
#' 01.01: 01.03, 01.06, 01.12, 01.15
#' 01.02: 01.03, 01.05, 01.14, 01.16
#' 01.03: 01.10, 01.12
#' 01.04: 01.09, 01.13
#' 01.05: 01.11, 01.14, 01.15
#' 01.06: 01.04
#' 01.07: 01.07
#' 01.08: 01.02, 01.05, 01.12
#' 01.09: 01.02, 01.06
#' 01.10: 01.01, 01.06
#' 01.11: 01.01, 01.05, 01.15
#' 01.12: 01.08


## 01. Basic setting test cases {-}

### 01.01 (shows that req. 01.03, 01.06, 01.12 and 01.15 are met):  {-}
Use the function `optimal_tte()`. Supply the following input values to the function:
  
  * a significance level of 0.025,
  * a power of 0.9, i.e. $\beta$ of 0.1,
  * assumed true treatment effects of 0.69 and 0.88,
  * event rates of 0.7 for both phase II and phase III,
  * the optimization region {10, 11, …, 400} for the number of participants (events in the time-to-event setting) in phase II,
  * the optimization region {0.71, 0.72, ..., 0.95} for the threshold values,
  * boundaries of 1, 0.95 and 0.85 for the effect size categories small, medium and large,
  * expected gains of 100,000,000\$, 300,000,000\$, and 500,000,000\$ for each effect size, respectively,
  * three clusters for parallel computing,
  * fixed costs of 10,000,000\$ in phase II and of 15,000,000\$ in phase III,
  * variable costs of 75,000\$ in phase II and 100,000\$ in phase III,
  * “fixed=FALSE”, i.e. set the function to use a prior distribution,
  * weight of 0.3 for the prior distribution,
  * amount of information for prior true treatment effect given by 210  and 420 expected events for both treatment effects.

Verify that the function calculates an optimal sample size of 206 in phase II and 354 in phase III (i.e. a total of 560 participants), an expected utility of 432 (in 10^5\$), and an optimal threshold value of 0.84 as suggested by Stella Erdmann [2]. Furthermore, verify that one can expect 144 events in phase II and 248 events in phase III (i.e. 392 in total).

### 01.02 (shows that req. 01.03., 01.05., 01.14 and 01.16 are met):  {-}
Use the function `optimal_tte()`. Supply the same input values as in test case 01.01 to the function except for the following: Set the parameter “fixed” to be TRUE, thus using fixed assumed treatment effects and set the assumed true treatment effect, i.e. the hazard ratio to 0.8. As we assume fixed true treatment effects this corresponds to setting hr1 = 0.8, hr2 can be set to 0. Set the weight for the prior distribution to be NULL and the number of events to be NULL and NULL. 
Verify that the function calculates an optimal sample size of 240 in phase II, an expected utility of 352 (in 10^5\$) and an optimal threshold value of 0.88 as suggested by Stella Erdmann [2]. Furthermore, verify that the probability to go to phase III is given by 0.73 and the expected number of events in phase II and III is 168 and 546, respectively (714 in total).


### 01.03 (shows that req. 01.10 and 01.12 are met):  {-}
Use the function `optimal_tte()`. Supply the same input values as in test case 01.01 to the function except for the following changes and additions: Set the weight for the prior distribution to be 0.6 and set a cost constraint of K=750 (in 10^5\$).
Verify that the function calculates an optimal sample size of 228 in phase II, an expected utility of 996 (in 10^5\$) and an optimal threshold value of 0.84 as suggested by Stella Erdmann [2]. Furthermore, verify that the cost constraint is returned and that the total costs in phase II and III are 271 (in 10^5\$) and 478 (in 10^5\$). 

### 01.04 (shows that req. 01.09 and 01.13 are met):  {-}
Use the function `optimal_tte()`. Supply the same input values as in test case 01.01 to the function except for the following changes and additions: 
Set the weight for the prior distribution to be 0.6  and set a sample size constraint of N=500.
Verify that the function calculates an optimal sample size of 170 in phase II and 328 in phase III (i.e. a total sample size of 498), an expected utility of 956 (in 10^5\$) and an optimal threshold value of 0.83 as suggested by Stella Erdmann [2].

### 01.05 (shows that req. 01.11, 01.14 and 01.15 met):  {-}
Use the function `optimal_tte()`. Supply the same input values as in test case 01.01 to the function except for the following changes and additions: Set the weight for the prior distribution to be 0.6 and set a constraint on the minimal probability of a successful program of S=0.6.
Verify that the function calculates an optimal sample size of 470 in phase II, an expected utility of 899 (in 10^5\$) and an optimal threshold value of 0.89 as suggested by Stella Erdmann [2]. Furthermore, verify, that the probability to go phase III is given by 0.77 and the probability of a successful program is given by 0.6.

### 01.06 (shows that req. 01.04 is met):  {-}
Use the function `optimal_tte()`. Supply the same input values as in test case 01.01 to the function except for the following changes and additions: Set the weight for the prior distribution to be 0.6 and use the option to skip phase II.
Verify that the function calculates an optimal sample size of 824 in phase III (corresponding to the total sample size), an expected utility of 1706 (in 10^5\$) and an effect size of 0.76 used for planning phase III (returned as HR, as the classical "optimal" threshold value HRgo is returned as Inf) as suggested by Stella Erdmann [2].

### 01.07 (shows that req. 01.07 is met):  {-}
Use the function `optimal_tte()`. Supply the same input values as in test case 01.01 to the function except for the following changes and additions: Set the weight for the prior distribution to be 0.6 and use the option to model different population structures and set the parameter $\gamma$ to 0.025.
Verify that the function calculates an optimal sample size of 310 in phase II, an expected utility of 1207 (in 10^5\$) and an optimal threshold value of 0.86 as suggested by Stella Erdmann [2].

### 01.08 (shows that req. 01.02, 01.05 and 01.12 are met):  {-}
Use the function ` optimal_binary()`. Supply the following input values to the function:

  * a significance level of 0.025,
  * a power of 0.9, i.e. $\beta$ of 0.1,
  * assumed true treatment rate of 0.6 in the control group and assumed true rates of 0.5 and NULL for the prior distribution of the treatment group, 
  * the optimization region of all even numbers {10, 12, …, 500} for the number of participants in phase II,
  * the optimization region {0.7, 0.71, …, 0.9} for the threshold values,
  * boundaries of 1, 0.95 and 0.85 for the effect size categories small, medium and large,
  * expected gains of 100,000,000\$, 300,000,000\$, and 500,000,000\$ for each effect size, respectively,
  * three clusters for parallel computing,
  * fixed costs of 10,000,000\$ in phase II and of 15,000,000\$ in phase III,
  * variable costs of 75,000\$ in phase II and 100,000\$ in phase III,
  * “fixed=TRUE”, i.e. set the function to use fixed treatment effects not modelled on a prior distribution,
  * weight of NULL for the prior distribution,
  * NULL and NULL events for both treatment effects.

Verify that the function calculates an optimal sample size of 204, an expected utility of 299 (in 10^5\$) and an optimal threshold value of 0.90 as suggested by Stella Erdmann [2]. Furthermore, verify that the programs returns the cost constraint (Inf in this case) as well as the total costs in phase II and III, 253 (in 10^5\$) and 810 (in 10^5\$), respectively.

### 01.09 (shows that req. 01.02 and 01.06 are met):  {-}
Use the function `optimal_binary()`. Supply the same input values as in test case 01.08 to the function except for the following changes and additions: Set the parameter “fixed” to be FALSE. Set the weight for the prior distribution to be 0.4, the assumed true rates for the prior distribution of the treatment group to be 0.3 and 0.5 and the number of events to be 30 and 60. 
Verify that the function calculates an optimal sample size of 224, an expected utility of 1542 (in 10^5\$) and an optimal threshold value of 0.89 as suggested by Stella Erdmann [2].

### 01.10 (shows that req. 01.01 and 01.06 are met): {-}
Use the function `optimal_normal()`. Supply the following input values to the function:

  * a significance level of 0.025,
  * a power of 0.9, i.e. $\beta$ of 0.1,
  * assumed true treatment effects of 0.375 and 0.5,
  * the optimization region of even numbers {10, 12, …, 500} for the number of participants in phase II,
  * the optimization region {0.01, 0.02,…, 0.5} for the threshold values,
  * boundaries of 0, 0.375 and 0.625 for the effect size categories small, medium and large,
  * expected gains of 62,500,000\$, 200,000,000\$ and 1,000,000,000\$ for each effect size, respectively,
  * three clusters for parallel computing,
  * fixed costs of 1,500,000\$ in phase II and of 2,000,000\$ in phase III,
  * variable costs of 67,500\$ in phase II and 72,000\$ in phase III,
  * “fixed=FALSE”, i.e. set the function to model the treatment effects on a prior distribution,
  * weight of 0.5 for the prior distribution,
  * 300 and 600 expected events for both treatment effects,
  * truncation values of a = 0 and b = 0.75.

Verify that the function calculates an optimal sample size of 86 in phase II, an expected utility of 337 (in 10^5\$) and an optimal threshold value of 0.19 as suggested by Stella Erdmann [2].

### 01.11 (shows that req. 01.01, 01.05 and 01.15 are met): {-}
Use the function `optimal_normal()`. Supply the same input values as in test case 01.10 to the function except for the following changes and additions: Set the parameter “fixed” to be TRUE and set the value for the assumed true treatment effect to 0.625 and NULL. Set the weight for the prior distribution to be NULL, the number of events to be NULL and NULL and the truncation values to be a = NULL and b = NULL.
Verify that the function calculates an optimal sample size of 78 in phase II, an expected utility of 944 (in 10^5\$)  and an optimal threshold value of 0.12 as suggested by Stella Erdmann [2]. Furthermore, verify that the probability of a successful program is given by 0.83, which is the sum of the probabilities of a small (0.51), medium (0.30) or large (0.02) treatment effect.

### 01.12 (shows that req. 01.08 is met): {-}
Use the `function optimal_tte`. Supply the same input values as in test case 01.01 to the function except for the following change: Set the number of cores for parallel computing to 1. Verify that the computation time will increase compared to the setting in 01.01.


