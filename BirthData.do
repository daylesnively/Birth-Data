sum combgest, detail
tab combgest
replace combgest=. if combgest<20
replace combgest=. if combgest>42
gen gestr = combgest if !missing(combgest)
sum gestr, detail
gen preterm=.
replace preterm = 0 if gestr >=37 & gestr <= 42
replace preterm = 1 if gestr >=20 & gestr < 37
label define yesnol 0 "No" 1 "Yes", modify
label values preterm yesnol
label variable preterm "Preterm birth"
sum preterm, detail
recode kotel (1=1) (2/4=0) (else=.), generate(inadequate)
label values inadequate yesnol
label variable inadequate "Inadequate prenatal care"
tab inadequate
recode mrace (1=0) (2=1) (4=3) (else=.), generate(race)
label define racel 0 "White" 1 "Black" 2 "AI/AN" 3 "Other", modify
label values race racel
label variable race "Mother's Race"
tab race
gen mhisp=.
replace mhisp = 1 if methnic == 1
replace mhisp = 0 if methnic == 0
replace mhisp =. if methnic ==.
label define hispl 0 "Non-Hispanic" 1 "Hispanic", modify
label values mhisp hispl
label variable mhisp "Mother's Ethnicity"
gen raceth=.
replace raceth = 4 if mhisp == 1
replace raceth = 0 if mhisp == 0 & mrace == 1
replace raceth = 1 if mhisp == 0 & mrace == 2
replace raceth = 2 if mhisp == 0 & mrace == 3
replace raceth = 3 if mhisp == 0 & mrace == 4
replace raceth = 3 if mhisp == 0 & mrace == 5
replace raceth = 3 if mhisp == 0 & mrace == 6
label define racethl 0 "White" 1 "Black" 2 "AI/AN" 3 "Other" 4 "Hispanic", modify
label values raceth racethl
label variable raceth "Mother's race/ethnicity"
tab raceth
gen smoker =.
replace smoker = 0 if cigdur == "No"
replace smoker = 1 if cigdur == "Yes"
replace smoker =. if cigdur == ""
label define smokerl 0 "Did not smoke during pregnancy" 1 "Smoked during pregnancy", modify
label values smoker smokerl
label variable smoker "Smoked during pregnancy"
gen educ = meduc_r
replace educ=. if meduc_r == 9
label define educl 1 "Less than high school" 2 "High school graduate or GED" 3 "Some college" 4 "Bachelors Degree" 5"Masters or PhD", modify 
label values educ educl
label variable educ "Mother's Education Level"

drop if missing(preterm)
drop if missing(inadequate)
drop if missing(mager)
drop if missing(raceth)
drop if missing(meduc_r)
drop if missing(cigdur)