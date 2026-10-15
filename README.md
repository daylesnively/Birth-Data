# Prenatal Care Adequacy and Preterm Birth

## Abstract and Interpretation

**Research Question:** What is the association between adequacy of prenatal care utilization and preterm birth?

The extremely high chi square statistic indicates that there is a statistically significant association between inadequate prenatal care and preterm birth. Additionally, the p-value of 0.00 indicates that there is a 0.00% chance that the results we see could happen by chance.

Results will not be biased based on the missing data. Whenever participants with missing data were removed, the distribution of inadequate prenatal care is extremely similar to the distribution prior to removal.

21.2% of all eligible births had inadequate prenatal care. Among preterm births, 23.9% had inadequate prenatal care. Among term births, 20.6% had inadequate prenatal care. Covariates such as maternal age, race and ethnicity, maternal education, and smoking during pregnancy were also evaluated.

The Stata code was written with the following goals:

- Describe the contents of a data set
- Describe continuous variables using graphs and descriptive statistics
- Describe categorical variables using tabulations and descriptive statistics
- Identify and recode missing data
- Identify out of range or extreme values and recode when appropriate
- Generate and document new variables, and confirm they are defined and coded directly
- Conduct bivariate statistics of exposure with the outcome

## Data Description

All data in the file are taken directly from live birth certificates, which are filed by all hospitals and birthing centers. All live births in 2021 were eligible for this cross-sectional study (n=189,175).

## Codebook

| Variable Name | Description | Coding |
| :--- | :--- | :--- |
| combgest | Obstetrical estimate of gestation | 0-47 weeks, 99 = unknown |
| kotel | Kotelchuck prenatal care index | 1 = Inadequate<br>2 = Intermediate<br>3 = Adequate<br>4 = Adequate Plus |
| mager | Age of mother | 12-50 years |
| mrace | Race of mother | 1 = White<br>2 = Black or African American<br>3 = American Indian or Alaska Native<br>4 = Other |
| methnic | Hispanic origin of mother | 1 = Yes<br>0 = No |
| cigdur | Cigarette smoking during pregnancy | Y = Yes<br>N = No<br>U = Unknown |
| meduc_r | Education of mother | 1 = Less than high school<br>2 = High school graduate or GED<br>3 = Some college<br>4 = Bachelors Degree<br>5 = Masters or PhD |
Introduction + Objective
Research Question: What is the association between adequacy of prenatal care utilization and preterm birth?


## Workflow

1. Create, combine, and recode variables so that they fit the format needed to answer the research question, and run one-way (univariate) descriptive statistics to obtain the mean and standard deviation for continuous variables, or the frequency and percentage for categorical variables.
   - Determine how many observations are missing data for gestational age and how many are implausible (gestational age > 42 weeks)
   - Create a new variable that recodes missing observations to the Stata-defined value for missing data, as well as recoding implausible values
   - Graph the distribution of gestational age in the study population
   - Create a dichotomous categorical variable for preterm birth based on gestr
   - Determine what proportion of births are term and preterm

2. Examine the frequencies and proportions of observations with each possible value on the Kotelchuck Prenatal Care Index (kotel)
   - Create a dichotomous categorical variable for inadequate prenatal care based on the variable kotel
   - Determine the frequencies and proportions of observations in each category of inadequate prenatal care in the population as a whole

3. Examine confounders and covariates in regard to the research question
   - Determine the mean, standard deviation, range, median, 5th and 95th percentile, and number of observations for mother's age in the population
   - Create a new race variable
   - Create a new variable mhisp that is a numeric format version of ethnic
   - Create a new variable that classifies mothers according to race and Hispanic ethnicity
   - Determine the frequencies and proportions of observations in each category of race-ethnicity in the population as a whole
   - Create a new variable cigdur to evaluate whether or not a mother smoked during pregnancy, and tabulate the frequencies and proportions of observations in each category of smoking during pregnancy in the population
   - Create a variable to evaluate maternal education

4. Generate descriptive statistics for the exposure at both levels of the dependent variable
   - Determine the distribution of the outcome by the main exposure of interest
   - Conduct a formal statistical test of the relationship between inadequate prenatal care and preterm birth

5. Assess bias due to missingness by recreating the data analysis with the sample of participants with complete case information
   - Create an analytic dataset that only has participants with complete case information

## Conclusions

### Table 1

**Characteristics of eligible live births (overall and according to preterm birth status) among United States residents in 2021\* (N=189,175)**

| Characteristic | All Births N/M | All Births %/SD | Preterm N/M | Preterm %/SD | Term N/M | Term %/SD |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| **Total** | 189,175 | 100% | 23,056 | 12.5% | 160,958 | 87.5% |
| **Inadequate Prenatal Care†** | | | | | | |
| No | 145,949 | 78.8% | 16,981 | 76.1% | 125,332 | 79.4% |
| Yes | 39,169 | 21.2% | 5,334 | 23.9% | 32,503 | 20.6% |
| **Maternal Age (mean; SD)** | 29.4 | 5.8 | 29.7 | 6.1 | 29.4 | 5.7 |
| **Race & Hispanic Ethnicity‡** | | | | | | |
| White, non-Hispanic | 96,980 | 51.2% | 10,306 | 45.2% | 84,198 | 52.8% |
| Black, non-Hispanic | 26,837 | 14.3% | 4,687 | 20.6% | 21,422 | 13.4% |
| Amer Indian/Alaska Native | 1,353 | 0.7% | 208 | 0.9% | 1,093 | 0.7% |
| Other, non-Hispanic | 15,865 | 8.5% | 1,860 | 8.2% | 13,617 | 8.5% |
| Hispanic | 46,222 | 24.7% | 5,739 | 25.1% | 39,053 | 24.5% |
| **Maternal Smoking§** | | | | | | |
| No | 179,633 | 95.4% | 21,369 | 93.3% | 153,484 | 95.7% |
| Yes | 8,744 | 4.6% | 1,540 | 6.7% | 6,871 | 4.3% |
| **Maternal Education** | | | | | | |
| Less than high school | 20,673 | 11.1% | 3,049 | 13.5% | 16,885 | 10.7% |
| High school graduate/GED | 48,800 | 26.2% | 6,805 | 30.1% | 40,360 | 25.5% |
| Some College | 50,527 | 27.1% | 6,289 | 27.8% | 42,869 | 27.1% |
| Bachelor's | 41,059 | 22.1% | 4,006 | 17.7% | 36,202 | 22.8% |
| Master's or PhD | 25,089 | 13.5% | 2,467 | 10.9% | 22,167 | 14.0% |

\* All data were derived from United States Live Birth Certificate data for 2021.

† Inadequate prenatal care was determined based on the Kotelchuck Prenatal Care Index.

‡ Based on the mother's self-reported race and Hispanic origin.

§ Births with maternal smoking during pregnancy recorded on the birth certificate were classified as smokers. Data are missing for births with unknown smoking status.

N refers to number, M to mean, and SD to standard deviation.

### Table 1a

**Complete case analysis characteristics of eligible live births (overall and according to preterm birth status) among United States residents in 2021\* (N=189,175)**

| Characteristic | All Births N/M | All Births %/SD | Preterm N/M | Preterm %/SD | Term N/M | Term %/SD |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| **Total** | 176,248 | 100% | 21,831 | 12.4% | 154,940 | 87.7% |
| **Inadequate Prenatal Care†** | | | | | | |
| No | 138,723 | 78.9% | 16,626 | 76.2% | 123,097 | 79.4% |
| Yes | 37,048 | 21.2% | 5,205 | 23.8% | 31,843 | 20.6% |
| **Maternal Age (mean; SD)** | 29.4 | 5.8 | 29.7 | 6.1 | 29.4 | 5.7 |
| **Race & Hispanic Ethnicity‡** | | | | | | |
| White, non-Hispanic | 92,347 | 52.2% | 9,884 | 45.5% | 82,196 | 53.2% |
| Black, non-Hispanic | 25,199 | 14.3% | 4,450 | 20.5% | 20,642 | 13.4% |
| Amer Indian/Alaska Native | 1,250 | 0.7% | 192 | 0.9% | 1,051 | 0.7% |
| Other, non-Hispanic | 14,873 | 8.4% | 1,752 | 8.0% | 13,083 | 8.5% |
| Hispanic | 43,102 | 24.4% | 5,469 | 25.1% | 37,542 | 24.3% |
| **Maternal Smoking§** | | | | | | |
| No | 168,099 | 95.4% | 20,268 | 93.3% | 147,831 | 95.7% |
| Yes | 8,149 | 4.6% | 1,466 | 6.8% | 6,683 | 4.3% |
| **Maternal Education** | | | | | | |
| Less than high school | 19,274 | 10.9% | 2,918 | 13.4% | 16,356 | 10.6% |
| High school graduate/GED | 45,679 | 25.9% | 6,507 | 29.9% | 39,172 | 25.4% |
| Some College | 47,886 | 27.2% | 6,040 | 27.8% | 41,846 | 27.1% |
| Bachelor's | 39,332 | 22.3% | 3,866 | 17.8% | 35,466 | 23.0% |
| Master's or PhD | 24,077 | 13.7% | 2,403 | 11.1% | 21,674 | 14.0% |

Footnotes are the same as Table 1.
