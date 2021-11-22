*****Code for GitHub****
encode specialty, gen (ICU_type)

encode gender, gen (Gender)
encode race, gen (Race)
tab Race
tab Race, nolab

gen RACE=.
replace RACE = 0 if Race >=8
replace RACE = 1 if Race == 3
replace RACE = 2 if Race ==6 | Race ==7
replace RACE = 3 if Race <6 & Race !=3 

tab RACE, m
label define race_l 0 "white" 1 "black" 2 "unknown" 3 "other"
label values RACE race_l

drop gender
gen gender=.
replace gender = 0 if Gender ==2
replace gender = 1 if Gender ==1
label define gender_label 0 "Male" 1"Female"
label values gender gender_label

gen icu_type=.
replace icu_type = 0 if ICU_type==2
replace icu_type = 1 if ICU_type==3
replace icu_type = 2 if ICU_type ==1
label define icu_type_lab 0 "MICU" 1"SICU" 2 "CICU"
label values icu_type icu_type_lab

tab final_tracheostomy
tab final_icd_pacemaker
tab final_ostomy
tab  final_gastrostomy
tab  any_procedure

gen trach_gtube=.
replace trach_gtube = 1 if final_tracheostomy==1 & final_gastrostomy==1
replace trach_gtube = 0 if final_tracheostomy==0 | final_gastrostomy==0

**Logistic regressions: Are there patient characteristics associated with acquiring a medical device in the ICU

**For regression need to exclude patients with prior trachs 
preserve
drop if tracheostomy_prior_proc==1
logit final_tracheostomy age i.gender i.RACE elixhauser_vanwalraven va_risk_score admit_to_icu_days i.icu_type , or
restore
**Now will drop patients with prior feeding tubes 
preserve
drop if gastrostomy_prior_proc==1
logit final_gastrostomy age i.gender i.RACE elixhauser_vanwalraven va_risk_score admit_to_icu_days i.icu_type , or
restore
**now will drop prior ostomy 
preserve
drop if ostomy_prior_proc==1
logit final_ostomy age i.gender i.RACE elixhauser_vanwalraven va_risk_score admit_to_icu_days i.icu_type , or
restore
**now will drop prior icd 
preserve
drop if icd_pacemaker_prior_proc==1
logit final_icd_pacemaker age i.gender i.RACE elixhauser_vanwalraven va_risk_score admit_to_icu_days i.icu_type , or
