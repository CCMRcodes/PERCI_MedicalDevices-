/*Author: Shirley Wang (xiaoqing.wang@va.gov*/

/*1/25/21: Med Device Epid Dataset 2013-2019, 2013 is the lookback year, so main analysis is 2014-2019*/
libname final '';
libname temp '';
libname diag '';
libname liz '';

/*use VA to VA transfer datsets*/
/*2013 data*/
DATA vatova2013_20201204 (compress=yes rename=dod_08052019_pull=dod rename=VA_risk_score20190716=va_risk_score); /*3139778 days*/
SET final.vatova2013_20201204 ;
drop scrssn other_micro_ind othermicro_collection_sample othermicro_topography sta3n
drugname_med1 drugname_med2 drugname_med3 drugname_med4 drugname_med5 drugname_med6 drugname_med7 drugname_med8 drugname_med9
lo_wbc_daily lo_glucose_daily lo_sodium_daily hi_potassium_daily lo_potassium_daily potassium_units
lo_urea_daily lo_albumin_daily hi_ph_daily lo_po2_daily  lo_pco2_daily pco2_units hi_pCO2_daily
hi_hemoglobin_daily lo_hemoglobin_daily hemoglobin_units lo_hematocrit_daily hi_bicarb_daily lo_bicarb_daily
bicarb_units /*hi_procalcitonin_daily lo_procalcitonin_daily procalcitonin_units hi_bnp_uln_daily
lo_bnp_uln_daily bnp_units hi_trop_uln_daily lo_trop_uln_daily troponin_units */ hi_systolic_daily
lo_systolic_daily hi_diastolic_daily lo_diastolic_daily hi_map_daily lo_map_daily hi_pulse_daily
lo_pulse_daily hi_respiration_daily lo_respiration_daily hi_temp_daily lo_temp_daily /*proccode_mechvent_daily
proccode_dialysis_daily liver_sofa renal_sofa coagulation_sofa any_pressor_daily cardio_sofa */ angus_def_infection
angus_organ_dysfunction angus_explicit_dx angus_implicit_dx angus_def_sepsis cdc_hosp_sepsis cdc_comm_sepsis
cdc_infection cdc_hosp_infection cdc_comm_infection hi_alt_daily lo_alt_daily alt_units diuretics_daily
steroids_daily major_surg_daily ndays_since_lagdis /*isa_readm30  follby_readm30 */ time2readm htn_hosp chf_hosp cardic_arrhym_hosp
valvular_d2_hosp pulm_circ_hosp pvd_hosp paralysis_hosp neuro_hosp pulm_hosp dm_uncomp_hosp dm_comp_hosp hypothyroid_hosp renal_hosp liver_hosp pud_hosp
ah_hosp lymphoma_hosp
cancer_met_hosp cancer_nonmet_hosp ra_hosp coag_hosp obesity_hosp wtloss_hosp fen_hosp anemia_cbl_hosp
anemia_def_hosp etoh_hosp drug_hosp psychoses_hosp depression_hosp Rurality unique_hosp_count_id EDIS_admit
abx_penicillin abx_pseudomonal_pcn abx_1st_gen_cephalosporin abx_2nd_gen_cephalosporin abx_3rd_gen_cephalosporin abx_4th_gen_cephalosporin
abx_fluoroquinolone abx_vancomycin_iv abx_vancomycin_po abx_antiviral abx_macrolide abx_flagyl abx_sulfa
abx_antifungal abx_aztreonam_iv abx_clinda abx_big_abx abx_aminoglycoside abx_tetracycline abx_other ;
RUN;

/*2014-2017 data*/
DATA vatova20142017_20201204 (compress=yes rename=dod_09212018_pull=dod rename=VA_risk_score20190716=va_risk_score); 
SET final.vatova20142017_20201204;
drop scrssn other_micro_ind othermicro_collection_sample othermicro_topography sta3n
drugname_med1 drugname_med2 drugname_med3 drugname_med4 drugname_med5 drugname_med6 drugname_med7 drugname_med8 drugname_med9
lo_wbc_daily lo_glucose_daily lo_sodium_daily hi_potassium_daily lo_potassium_daily potassium_units
lo_urea_daily lo_albumin_daily hi_ph_daily lo_po2_daily  lo_pco2_daily pco2_units hi_pCO2_daily
hi_hemoglobin_daily lo_hemoglobin_daily hemoglobin_units lo_hematocrit_daily hi_bicarb_daily lo_bicarb_daily
bicarb_units /*hi_procalcitonin_daily lo_procalcitonin_daily procalcitonin_units hi_bnp_uln_daily
lo_bnp_uln_daily bnp_units hi_trop_uln_daily lo_trop_uln_daily troponin_units */ hi_systolic_daily
lo_systolic_daily hi_diastolic_daily lo_diastolic_daily hi_map_daily lo_map_daily hi_pulse_daily
lo_pulse_daily hi_respiration_daily lo_respiration_daily hi_temp_daily lo_temp_daily /*proccode_mechvent_daily
proccode_dialysis_daily liver_sofa renal_sofa coagulation_sofa any_pressor_daily cardio_sofa */ angus_def_infection
angus_organ_dysfunction angus_explicit_dx angus_implicit_dx angus_def_sepsis cdc_hosp_sepsis cdc_comm_sepsis
cdc_infection cdc_hosp_infection cdc_comm_infection hi_alt_daily lo_alt_daily alt_units diuretics_daily
steroids_daily major_surg_daily ndays_since_lagdis /*isa_readm30  follby_readm30 */ time2readm htn_hosp chf_hosp cardic_arrhym_hosp
valvular_d2_hosp pulm_circ_hosp pvd_hosp paralysis_hosp neuro_hosp pulm_hosp dm_uncomp_hosp dm_comp_hosp hypothyroid_hosp renal_hosp liver_hosp pud_hosp
ah_hosp lymphoma_hosp
cancer_met_hosp cancer_nonmet_hosp ra_hosp coag_hosp obesity_hosp wtloss_hosp fen_hosp anemia_cbl_hosp
anemia_def_hosp etoh_hosp drug_hosp psychoses_hosp depression_hosp Rurality unique_hosp_count_id EDIS_admit
abx_penicillin abx_pseudomonal_pcn abx_1st_gen_cephalosporin abx_2nd_gen_cephalosporin abx_3rd_gen_cephalosporin abx_4th_gen_cephalosporin
abx_fluoroquinolone abx_vancomycin_iv abx_vancomycin_po abx_antiviral abx_macrolide abx_flagyl abx_sulfa
abx_antifungal abx_aztreonam_iv abx_clinda abx_big_abx abx_aminoglycoside abx_tetracycline abx_other;
RUN;

/*2018-2020 data*/
DATA VAPD_VATOVA20182020_210125 (compress=yes rename=VA_risk_score20210125=va_risk_score); 
SET final.VAPD_VATOVA20182020_210125;
drop scrssn other_micro_ind othermicro_collection_sample othermicro_topography sta3n 
drugname_med1 drugname_med2 drugname_med3 drugname_med4 drugname_med5 drugname_med6 drugname_med7 drugname_med8 drugname_med9
lo_wbc_daily lo_glucose_daily lo_sodium_daily hi_potassium_daily lo_potassium_daily potassium_units
lo_urea_daily lo_albumin_daily hi_ph_daily lo_po2_daily  lo_pco2_daily pco2_units hi_pCO2_daily
hi_hemoglobin_daily lo_hemoglobin_daily hemoglobin_units lo_hematocrit_daily hi_bicarb_daily lo_bicarb_daily
bicarb_units /*hi_procalcitonin_daily lo_procalcitonin_daily procalcitonin_units hi_bnp_uln_daily
lo_bnp_uln_daily bnp_units hi_trop_uln_daily lo_trop_uln_daily troponin_units */ hi_systolic_daily
lo_systolic_daily hi_diastolic_daily lo_diastolic_daily hi_map_daily lo_map_daily hi_pulse_daily
lo_pulse_daily hi_respiration_daily lo_respiration_daily hi_temp_daily lo_temp_daily /*proccode_mechvent_daily
proccode_dialysis_daily liver_sofa renal_sofa coagulation_sofa any_pressor_daily cardio_sofa */ angus_def_infection
angus_organ_dysfunction angus_explicit_dx angus_implicit_dx angus_def_sepsis cdc_hosp_sepsis cdc_comm_sepsis
cdc_infection cdc_hosp_infection cdc_comm_infection hi_alt_daily lo_alt_daily alt_units diuretics_daily
steroids_daily major_surg_daily ndays_since_lagdis /*isa_readm30  follby_readm30 */ time2readm htn_hosp chf_hosp cardic_arrhym_hosp
valvular_d2_hosp pulm_circ_hosp pvd_hosp paralysis_hosp neuro_hosp pulm_hosp dm_uncomp_hosp dm_comp_hosp hypothyroid_hosp renal_hosp liver_hosp pud_hosp
ah_hosp lymphoma_hosp
cancer_met_hosp cancer_nonmet_hosp ra_hosp coag_hosp obesity_hosp wtloss_hosp fen_hosp anemia_cbl_hosp
anemia_def_hosp etoh_hosp drug_hosp psychoses_hosp depression_hosp Rurality unique_hosp_count_id EDIS_admit
abx_penicillin abx_pseudomonal_pcn abx_1st_gen_cephalosporin abx_2nd_gen_cephalosporin abx_3rd_gen_cephalosporin abx_4th_gen_cephalosporin
abx_fluoroquinolone abx_vancomycin_iv abx_vancomycin_po abx_antiviral abx_macrolide abx_flagyl abx_sulfa
abx_antifungal abx_aztreonam_iv abx_clinda abx_big_abx abx_aminoglycoside abx_tetracycline abx_other ;
RUN;

/*combine all 2013-2019 years*/
DATA liz.vatova20132019 (compress=yes); 
SET  vatova2013_20201204 vatova20142017_20201204  VAPD_VATOVA20182020_210125;
RUN;

PROC CONTENTS DATA= liz.vatova20132019 VARNUM;
RUN;

/*select ICU=1 & age > 18 only, 2013-2019, 2013 is lookback year*/
DATA basic (compress=yes); 
SET liz.vatova20132019;
if  ICU=1 and age >= 18;
if new_admitdate3 > '31DEC2019'd or new_admitdate3 < '01JAN2013'd then delete;
drop specialty_priority_order blood_cult_ind bloodcult_collection_sample bloodcult_topography proccode_dialysis_daily new_admitdate2 new_dischargedate2
specialtytransferdatetime specialtydischargedatetime unit_dx1-unit_dx26 hi_lactate_daily lo_lactate_daily lactate_units hi_plate_daily
lo_plate_daily plate_units hi_creat_daily lo_creat_daily creat_units hi_bili_daily lo_bili_daily bili_units hi_wbc_daily wbc_units
hi_glucose_daily glucose_units hi_sodium_daily sodium_units hi_urea_daily urea_units hi_albumin_daily albumin_units lo_ph_daily ph_units hi_po2_daily
po2_units hi_hematocrit_daily hematocrit_units hi_procalcitonin_daily lo_procalcitonin_daily procalcitonin_units hi_bnp_uln_daily lo_bnp_uln_daily
bnp_units hi_trop_uln_daily lo_trop_uln_daily troponin_units newcdc_hosp_sepsis newcdc_comm_sepsis newhospcomm_sepsis newcdc_Infection newcdc_hosp_infection
newcdc_comm_infection Obs VA_risk_score20210125 icdtype;
RUN;

PROC SORT DATA=basic nodupkey; 
BY  patienticn datevalue;
RUN;

/*assign each ICU pat-day an obs number for left join purposes later on */
DATA basic; 
SET  basic;
obs=_N_;
RUN;

*Must create new continuous specialtytransferdate and specialtydischargedate, ICU aggregate*/
/*1.assign each patienticn, newadmitdate & newdischargedate a unique hosp id*/;
PROC SORT DATA=basic  nodupkey  OUT=unique_ICU_hosp; 
BY patienticn new_admitdate3  new_dischargedate3;
RUN;

DATA unique_ICU_hosp; 
SET  unique_ICU_hosp;
unique_ICU_hosp=_N_; 
RUN;

/*match back to original dataset all_icu_daily_v5*/
PROC SQL;
	CREATE TABLE all_icu_daily_v6  (compress=yes)  AS 
	SELECT A.*, B.unique_ICU_hosp
	FROM  basic  A
	LEFT JOIN unique_ICU_hosp  B ON A.patienticn =B.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3;
QUIT;

PROC SORT DATA= all_icu_daily_v6;
BY unique_ICU_hosp patienticn datevalue;
RUN;

/*2. create lag_datevalue and diff_lagdatevalue_datevalue*/
data test_v1; 
set all_icu_daily_v6;
by unique_ICU_hosp;
if first.unique_ICU_hosp then do;
	lag_datevalue=datevalue; end;
format lag_datevalue mmddyy10.;
keep patienticn datevalue specialtytransferdate specialtydischargedate unique_ICU_hosp obs lag_datevalue  new_admitdate3  new_dischargedate3 unique_hosp_count_id;
run;

data test_v2; 
set test_v1;
by unique_ICU_hosp;
lag_datevalue_v2=lag(datevalue);
format lag_datevalue_v2 mmddyy10.;
run;

DATA test_v3; 
SET  test_v2;
if lag_datevalue NE . then lag_datevalue_v2= .;
if lag_datevalue = . then lag_datevalue=lag_datevalue_v2;
drop lag_datevalue_v2;
diff_days=datevalue-lag_datevalue;
RUN;

PROC FREQ DATA=test_v3  order=freq;
TABLE diff_days;
RUN;

/*view only, not for data processings*/
DATA view ; 
SET  test_v3;
if diff_days =2;
RUN; 

DATA view ;
SET  view;
view_obs=_n_;
RUN;

PROC SORT DATA=view ;
BY  view_obs;
RUN;

PROC SORT DATA= view nodupkey  OUT= view_hosp; 
BY patienticn  new_admitdate3  new_dischargedate3;
RUN;

PROC SORT DATA= view nodupkey  OUT= view_hosp2; /* there are two bedsections within 1 hospitalization*/
BY patienticn new_admitdate3  new_dischargedate3  specialtytransferdate specialtydischargedate;
RUN;

PROC SQL;
CREATE TABLE   view2  (COMPRESS=YES) AS 
SELECT A.* FROM view_hosp2 AS A
WHERE A.view_obs not IN (SELECT view_obs FROM  view_hosp);
QUIT;

PROC SQL;
CREATE TABLE  view2b   (COMPRESS=YES) AS 
SELECT A.* FROM test_v3 AS A
WHERE A.unique_ICU_hosp IN (SELECT unique_ICU_hosp FROM view2);
QUIT;
/*view only ends*/

/*if  diff_days >1 then it's a new speciality transfer date*/
/*but revision on 11/21/18, Liz and Jack decide to keep as same unit/specialty if patient is back in the ICU in less than 48 hours or 2 days*/
DATA test_v4b; 
SET test_v3 ;
if diff_days >2 then new_Specialty_ind=1; else new_Specialty_ind=0;  
RUN;

PROC SQL;
CREATE TABLE   view3  (COMPRESS=YES) AS 
SELECT A.* FROM test_v4b AS A
WHERE A.unique_ICU_hosp IN (SELECT unique_ICU_hosp  FROM work.view);
QUIT;

PROC SQL;
CREATE TABLE  view3b   (COMPRESS=YES) AS
SELECT A.* FROM test_v4b AS A
WHERE A.unique_ICU_hosp IN (SELECT unique_ICU_hosp  FROM view2);
QUIT;

/***************************/
/*assign each unique_ICU_hosp and new_Specialty_ind a unique ID, this is each new ICU specialty within each hospitalization*/
/*PROC SORT DATA=test_v4b nodupkey  OUT=Unique_ICU_specialty; /* 365709 ICU speicalty stays, can have more than one speicalty stays within a hospitalization*/*/
/*BY  unique_ICU_hosp new_Specialty_ind ;*/
/*RUN;*/;

data Unique_ICU_specialty;
set test_v4b;
if diff_days=0 then new_Specialty_ind=1;
if new_Specialty_ind=1;
run;



/********************************/

DATA  Unique_ICU_specialty;
SET  Unique_ICU_specialty;
Unique_ICU_specialty=_n_;
RUN;

/*left join Unique_ICU_specialty back to original dataset test_v4*/
PROC SQL;
	CREATE TABLE  test_v5 (compress=yes)  AS 
	SELECT A.*, B.Unique_ICU_specialty
	FROM  test_v4b  A
	LEFT JOIN unique_ICU_specialty  B ON A.patienticn =B.patienticn and a.specialtytransferdate=b.specialtytransferdate 
              and a.specialtydischargedate=b.specialtydischargedate and a.unique_ICU_hosp=b.unique_ICU_hosp ;
QUIT;

/*fill down in a table*/
data  test_v6 (drop=filledx);
set test_v5;
retain filledx; /*keeps the last non-missing value in memory*/
if not missing(Unique_ICU_specialty) then filledx=Unique_ICU_specialty; /*fills the new variable with non-missing value*/
Unique_ICU_specialty=filledx;
run;

PROC SORT DATA=test_v6;
BY  patienticn datevalue specialtytransferdate specialtydischargedate;
RUN;

PROC SQL;
CREATE TABLE  view6b (COMPRESS=YES) AS 
SELECT A.* FROM test_v6 AS A
WHERE A.unique_ICU_hosp IN (SELECT unique_ICU_hosp FROM view2);
QUIT;

PROC SORT DATA=view6b  nodupkey  OUT=view6b_test1; 
BY patienticn new_admitdate3  new_dischargedate3;
RUN;

PROC SORT DATA=view6b  nodupkey  OUT=view6b_test2; 
BY patienticn Unique_ICU_specialty;
RUN;

/*use max and min group by Unique_ICU_specialty to get new speicaltytransferdate and specialtydischargedates*/
PROC SQL;
CREATE TABLE  test_final AS  
SELECT *, min(specialtytransferdate) as new_specialtytransferdate, max(specialtydischargedate) as new_specialtydischargedate
FROM test_v6
GROUP BY Unique_ICU_specialty;
QUIT;

DATA test_final;
SET  test_final;
format new_specialtytransferdate mmddyy10. new_specialtydischargedate mmddyy10.;
RUN;

PROC SORT DATA=test_final;
BY patienticn datevalue new_specialtytransferdate  new_specialtydischargedate;
RUN;

PROC SORT DATA= test_final; 
BY patienticn Unique_ICU_specialty datevalue ;
DATA test_final2;
SET test_final;
BY  Unique_ICU_specialty;
IF FIRST.Unique_ICU_specialty   THEN new_ICU_day_bedsection = 0; 
new_ICU_day_bedsection + 1;
RUN;

PROC SQL;
CREATE TABLE test_final3  AS   
SELECT *, max(new_ICU_day_bedsection) as new_SUM_ICU_days_bedsection
FROM test_final2
GROUP BY Unique_ICU_specialty ;
QUIT;

PROC SORT DATA= test_final3; 
BY patienticn Unique_ICU_specialty datevalue;
run;

/*remove duplicates*/
PROC SORT DATA=test_final3  nodupkey  OUT=test_final3_undup; 
BY patienticn obs;
RUN;

/*left join new_specialtytransferdate, new_specialtydischargedate, new_ICU_day_bedsection, new_SUM_ICU_days_bedsection back to basic*/
PROC SQL;
	CREATE TABLE  basic2 (compress=yes)  AS 
	SELECT A.*, B.new_specialtytransferdate, b.new_specialtydischargedate, b.new_ICU_day_bedsection , b.new_SUM_ICU_days_bedsection, b.unique_ICU_hosp
	FROM basic  A
	LEFT JOIN  test_final3_undup  B
	ON A.patienticn =B.patienticn  and a.obs=b.obs;
QUIT;

/*added admit_to_death_days & admit_to_ICU_days*/
DATA  basic2 (compress=yes); /* 2836418 */
SET  basic2;
if dod NE . then do;
admit_to_death_days=dod-new_admitdate3;
end;
admit_to_ICU_days=new_specialtytransferdate-new_admitdate3;
label 
admit_to_ICU_days='time from hospital admission to ICU admission'
admit_to_death_days='time from hospital admission to death';
RUN;

PROC FREQ DATA= basic2 order=freq;
TABLE  new_SUM_ICU_days_bedsection; /* no new_SUM_ICU_days_bedsection=1*/
RUN;

PROC SORT DATA=basic2  nodupkey  OUT=basic2_uniquehosp (compress=yes); 
BY  patienticn new_admitdate3 new_dischargedate3;
RUN;

PROC FREQ DATA=basic2_uniquehosp  order=freq;
TABLE admityear;
RUN;

PROC SORT DATA=basic2_uniquehosp out=chck_data (compress=yes);
BY  new_admitdate3;
RUN;

/*check ICU dates in dataset*/
DATA icu_data_view (compress=yes);
retain patienticn datevalue new_admitdate3 new_dischargedate3 specialtytransferdate specialtydischargedate
admitdate_icu hosp_day1_ind new_specialtytransferdate new_specialtydischargedate;
SET basic2;
keep patienticn datevalue new_admitdate3 new_dischargedate3 specialtytransferdate specialtydischargedate
admitdate_icu hosp_day1_ind new_specialtytransferdate new_specialtydischargedate;
RUN;

PROC SORT DATA=icu_data_view;
BY  patienticn datevalue new_admitdate3 new_dischargedate3;
RUN;

/*drop specialtytransferdate, specialtydischargedate, admitdate_icu since new dates were created*/
DATA ICU_newdatset (compress=yes); 
SET basic2;
drop specialtytransferdate specialtydischargedate admitdate_icu admitdatetime_icu inpatientsid patientsid hosp_day1_ind obs;
RUN;

/************************** exclude patinets with these health conditions ***************************************/
/*step 1: pull data using icd9 from CDW (both outpatient & inpatient tables). 
Step 2: create conditions indicator to exclude from the dataset*/

/*- Myasthenia Gravis*/
PROC SQL;
	CREATE TABLE  Exclude_MG_flow   AS 
	SELECT A.*, B.Myasthenia_Gravis_DiagDate, b.MG_diag
	FROM ICU_newdatset  A
	LEFT JOIN diag.Myasthenia_Gravis_13_19 B
	ON A.patienticn =B.patienticn and a.new_specialtytransferdate >b.Myasthenia_Gravis_DiagDate ;
QUIT;

DATA Exclude_MG_flow2; 
SET  Exclude_MG_flow;
if MG_diag=1;
RUN;

proc sql;
SELECT count(distinct patienticn ) 
FROM Exclude_MG_flow2;
quit;

PROC SORT DATA=Exclude_MG_flow2 nodupkey   OUT= unique_hosp_Exclude_MG_flow2; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;


/*Amyotrophic Lateral Sclerosis (ALS)*/
PROC SQL;
	CREATE TABLE   exclude_Amyotrophic_flow  AS  
	SELECT A.*, B.ALS_diag, b.Amyotrophic_DiagDate 
	FROM  Exclude_MG_flow   A
	LEFT JOIN  diag.Amyotrophic_13_19 B
	ON A.patienticn =B.patienticn and a.new_specialtytransferdate >b.Amyotrophic_DiagDate;
QUIT;

DATA exclude_Amyotrophic_flow2; 
SET  exclude_Amyotrophic_flow;
if ALS_diag=1;
RUN;

proc sql;
SELECT count(distinct patienticn ) 
FROM exclude_Amyotrophic_flow2;
quit;

PROC SORT DATA=exclude_Amyotrophic_flow2 nodupkey   OUT= unique_Amyotrophic_flow2; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

/*Multiple Sclerosis*/
PROC SQL;
	CREATE TABLE   exclude_MultipleSclerosis_flow  AS  
	SELECT A.*, B.Multiple_Sclerosis_diag, b.Multiple_Sclerosis_DiagDate 
	FROM  exclude_Amyotrophic_flow  A
	LEFT JOIN  diag.Multiple_Sclerosis_13_19 B
	ON A.patienticn =B.patienticn and a.new_specialtytransferdate>b.Multiple_Sclerosis_DiagDate;
QUIT;

DATA exclude_MultipleSclerosis_flow2; 
SET exclude_MultipleSclerosis_flow;
if Multiple_Sclerosis_diag=1;
RUN;

proc sql;
SELECT count(distinct patienticn ) 
FROM exclude_MultipleSclerosis_flow2;
quit;

PROC SORT DATA=exclude_MultipleSclerosis_flow2 nodupkey   OUT= unique_MultipleSclerosis_flow2; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

/*Stroke/CVA*/
PROC SQL;
	CREATE TABLE   exclude_Stroke_flow  AS 
	SELECT A.*, B.Stroke_diag, b.Stroke_DiagDate
	FROM  exclude_MultipleSclerosis_flow   A
	LEFT JOIN  diag.Stroke_13_19 B
	ON A.patienticn =B.patienticn and a.new_specialtytransferdate>b.Stroke_DiagDate;
QUIT;

DATA exclude_Stroke_flow2; 
SET exclude_Stroke_flow;
if Stroke_diag=1;
RUN;

proc sql;
SELECT count(distinct patienticn ) 
FROM exclude_Stroke_flow2;
quit;

PROC SORT DATA= exclude_Stroke_flow2 nodupkey   OUT= unique_hosp_exclude_Stroke_flow2; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

/*Spinal Cord Injury*/
PROC SQL;
	CREATE TABLE   exclude_Spinal_flow AS  
	SELECT A.*, B.Spinal_diag, b.Spinal_DiagDate
	FROM  exclude_Stroke_flow   A
	LEFT JOIN diag.Spinal_13_19 B
	ON A.patienticn =B.patienticn and a.new_specialtytransferdate>b.Spinal_DiagDate ;
QUIT;

DATA exclude_Spinal_flow2; 
SET exclude_Spinal_flow;
if Spinal_diag=1;
RUN;

proc sql;
SELECT count(distinct patienticn )
FROM exclude_Spinal_flow2;
quit;

PROC SORT DATA=exclude_Spinal_flow2 nodupkey   OUT= uniquehospexclude_Spinal_flow2; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

/*create all exclude indicator*/
DATA exclude_all_diag_flow;
SET exclude_Spinal_flow;
if ALS_diag=1 or MG_diag=1 or Multiple_Sclerosis_diag=1 or Spinal_diag=1 or Stroke_diag=1 then exclude_diag=1;
else exclude_diag=0;
RUN;

PROC FREQ DATA=exclude_all_diag_flow  order=freq;
TABLE exclude_diag; 
RUN;

/*if exclude_diag=1*/
DATA  exclude_all_diag_flow2; 
SET  exclude_all_diag_flow;
if  exclude_diag=1;
RUN;

PROC SORT DATA=exclude_all_diag_flow2  nodupkey  OUT=exclude_all_diag_hosp_flow (keep=patienticn  new_admitdate3 new_dischargedate3 ALS_diag MG_diag
 Multiple_Sclerosis_diag spinal_diag Stroke_diag  exclude_diag); 
BY   patienticn  new_admitdate3 new_dischargedate3;
RUN;

PROC SQL;
	CREATE TABLE  no_prior_ICU_diag (compress=yes)  AS 
	SELECT A.*, B.ALS_diag, b.MG_diag, b.Multiple_Sclerosis_diag, b.spinal_diag, b.Stroke_diag, b.exclude_diag
	FROM  ICU_newdatset  A
	LEFT JOIN exclude_all_diag_hosp_flow  B
	ON A.patienticn =B.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3;
QUIT;

/*not exlcuded population*/
DATA no_prior_ICU_diag_exclude (compress=yes); 
SET  no_prior_ICU_diag;
if exclude_diag =1;
RUN;

PROC SQL;
CREATE TABLE  not_exclude_all_diag_flow2 (COMPRESS=YES) AS 
SELECT A.* FROM exclude_all_diag_flow AS A
WHERE A.unique_ICU_hosp not IN (SELECT unique_ICU_hosp  FROM no_prior_ICU_diag_exclude);
QUIT;

PROC SORT DATA=not_exclude_all_diag_flow2  nodupkey  OUT=not_exclude_all_diag_hosp_flow; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

PROC SORT DATA=no_prior_ICU_diag_exclude  nodupkey  OUT=exclude_all_diag_hosp_flow; 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

/****** end of diagnosis section *******/

/*drop 2013 look back year. Use 2014-2019 for analysis*/
DATA VAPD2014_2019 (compress=yes); 
SET not_exclude_all_diag_flow2;
if admityear<2014 then delete; /*only select 2014-2019, delete admityear of 2013*/
RUN;

PROC SORT DATA=VAPD2014_2019 nodupkey  OUT=VAPD2014_2019_hosp (compress=yes); 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

/*exclude ICU LOS <14 days*/
DATA PERCIVAPD2014_2019 (compress=yes); 
SET  VAPD2014_2019;
if new_SUM_ICU_days_bedsection<14 then delete;
RUN;

PROC SORT DATA=PERCIVAPD2014_2019 nodupkey  OUT=PERCIVAPD2014_2019_hosp (compress=yes); 
BY  patienticn  new_admitdate3 new_dischargedate3;
RUN;

PROC CONTENTS DATA=PERCIVAPD2014_2019_hosp  VARNUM;
RUN;


/*only keep those important for hosp-level data*/
DATA PERCIVAPD2014_2019_hosp_v2 (compress=yes);
SET  PERCIVAPD2014_2019_hosp;
keep sta6a icu admityear specialty patienticn patientsid  sum_elixhauser_count race gender dob age elixhauser_vanwalraven 
new_teaching region ethnicity hispanic beds_in_use female icu_level_score_child  admit_to_ICU_days new_admitdate3 new_dischargedate3 hosp_los inhosp_mort
va_risk_score hosp_los  new_specialtytransferdate new_specialtydischargedate  new_sum_icu_days_bedsection ;
RUN;

/*ADD DOD and calculate 1 year mort, 30-day and 90-day post discharge */
libname happi '';

PROC SQL;
	CREATE TABLE PERCIVAPD2014_2019_hosp_v3 (compress=yes)  AS 
	SELECT A.*, B.dod_20210112_pull
	FROM  PERCIVAPD2014_2019_hosp_v2   A
	LEFT JOIN happi.DOD_20210112_PULL  B ON A.patienticn=B.patienticn;
QUIT;

/*recalculate 30 day mort and in hosp mort*/
DATA PERCIVAPD2014_2019_hosp_v4 (compress=yes);  
SET PERCIVAPD2014_2019_hosp_v3;
if not missing(DOD_20210112_PULL) then do; 
	deathdaysafterdis=datdif(new_dischargedate3,DOD_20210112_PULL, 'act/act');
end;
if not missing(DOD_20210112_PULL) and abs(deathdaysafterdis) <=365 then mort365_discharge=1; /*365 day mort after discharge*/
       else mort365_discharge=0;
if not missing(DOD_20210112_PULL) and abs(deathdaysafterdis) <=30 then mort30_discharge=1; /*30 day mort after discharge*/
       else mort30_discharge=0;
if not missing(DOD_20210112_PULL) and abs(deathdaysafterdis) <=90 then mort90_discharge=1; /*90 day mort after discharge*/
       else mort90_discharge=0;
RUN;

/*make comorbids on hosp-level*/
PROC CONTENTS DATA=PERCIVAPD2014_2019 VARNUM;
RUN;

DATA comorbids (compress=yes); 
SET PERCIVAPD2014_2019;
keep patienticn  new_admitdate3 new_dischargedate3 chf cardic_arrhym valvular_d2 pulm_circ pvd paralysis neuro pulm dm_uncomp drug psychoses depression htn
dm_comp hypothyroid renal liver pud ah lymphoma cancer_met cancer_nonmet ra coag obesity wtloss fen anemia_cbl anemia_def etoh;
RUN;

PROC SORT DATA= comorbids  nodupkey  OUT= comorbids_hosp  (compress=yes keep=patienticn new_admitdate3 new_dischargedate3); 
BY  patienticn new_admitdate3 new_dischargedate3;
RUN;


/*macro codes to make comorbid on hosp_level*/
%macro comorbids (comorbid);

data &comorbid._hosp (compress=yes) ;
set comorbids ;
if &comorbid. =1;
&comorbid._hosp =1;
keep patienticn new_admitdate3 new_dischargedate3 &comorbid._hosp ;
run;

PROC SORT DATA=&comorbid._hosp  nodupkey  ;
BY patienticn new_admitdate3 new_dischargedate3;
RUN;

%mend comorbids;
%comorbids(chf);
%comorbids(cardic_arrhym);
%comorbids(valvular_d2);
%comorbids(pulm_circ);
%comorbids(pvd);
%comorbids(paralysis);
%comorbids(neuro);
%comorbids(pulm);
%comorbids(dm_uncomp);
%comorbids(drug);
%comorbids(psychoses);
%comorbids(depression);
%comorbids(htn);
%comorbids(dm_comp);
%comorbids(hypothyroid);
%comorbids(renal);
%comorbids(liver);
%comorbids(pud);
%comorbids(ah);
%comorbids(lymphoma);
%comorbids(cancer_met);
%comorbids(cancer_nonmet);
%comorbids(ra);
%comorbids(coag);
%comorbids(obesity);
%comorbids(wtloss);
%comorbids(fen);
%comorbids(anemia_cbl);
%comorbids(anemia_def);
%comorbids(etoh);


PROC SQL;
	CREATE TABLE comorbids_hosp_v1  (compress=yes)  AS
	SELECT A.*, B.chf_hosp, c.cardic_arrhym_hosp, d.valvular_d2_hosp, e.pulm_circ_hosp, f.pvd_hosp
	FROM  comorbids_hosp   A
	LEFT JOIN chf_hosp  B ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3  
	LEFT JOIN cardic_arrhym_hosp  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3 
	LEFT JOIN valvular_d2_hosp  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN pulm_circ_hosp  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3 
	LEFT JOIN pvd_hosp  f ON A.patienticn=f.patienticn and a.new_admitdate3=f.new_admitdate3 and a.new_dischargedate3=f.new_dischargedate3;
QUIT;


PROC SQL;
	CREATE TABLE comorbids_hosp_v2  (compress=yes)  AS
	SELECT A.*, B.paralysis_hosp, c.neuro_hosp, d.pulm_hosp, e.dm_uncomp_hosp, f.drug_hosp
	FROM  comorbids_hosp_v1   A
	LEFT JOIN paralysis_hosp  B ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3 
	LEFT JOIN neuro_hosp  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN pulm_hosp  d 	ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN dm_uncomp_hosp  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3
	LEFT JOIN drug_hosp  f 	ON A.patienticn=f.patienticn and a.new_admitdate3=f.new_admitdate3 and a.new_dischargedate3=f.new_dischargedate3;
QUIT;

PROC SQL;
	CREATE TABLE comorbids_hosp_v3  (compress=yes)  AS
	SELECT A.*, B.psychoses_hosp, c.depression_hosp, d.htn_hosp, e.dm_comp_hosp, f.hypothyroid_hosp
	FROM  comorbids_hosp_v2   A
	LEFT JOIN psychoses_hosp  B ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3 
	LEFT JOIN depression_hosp  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN htn_hosp  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN dm_comp_hosp  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3
	LEFT JOIN hypothyroid_hosp  f ON A.patienticn=f.patienticn and a.new_admitdate3=f.new_admitdate3 and a.new_dischargedate3=f.new_dischargedate3;
QUIT;

PROC SQL;
	CREATE TABLE comorbids_hosp_v4  (compress=yes)  AS
	SELECT A.*, B.renal_hosp, c.liver_hosp, d.pud_hosp, e.ah_hosp, f.lymphoma_hosp
	FROM  comorbids_hosp_v3   A
	LEFT JOIN renal_hosp  B	ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3 
	LEFT JOIN liver_hosp  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN pud_hosp  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN ah_hosp  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3
	LEFT JOIN lymphoma_hosp  f ON A.patienticn=f.patienticn and a.new_admitdate3=f.new_admitdate3 and a.new_dischargedate3=f.new_dischargedate3;
QUIT;

PROC SQL;
	CREATE TABLE comorbids_hosp_v5  (compress=yes)  AS
	SELECT A.*, B.cancer_met_hosp, c.cancer_nonmet_hosp, d.ra_hosp, e.coag_hosp, f.obesity_hosp
	FROM  comorbids_hosp_v4   A
	LEFT JOIN cancer_met_hosp  B ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3
	LEFT JOIN cancer_nonmet_hosp  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN ra_hosp  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN coag_hosp  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3
	LEFT JOIN obesity_hosp  f ON A.patienticn=f.patienticn and a.new_admitdate3=f.new_admitdate3 and a.new_dischargedate3=f.new_dischargedate3;
QUIT;

PROC SQL;
	CREATE TABLE comorbids_hosp_v6  (compress=yes)  AS
	SELECT A.*, B.wtloss_hosp, c.fen_hosp, d.anemia_cbl_hosp, e.anemia_def_hosp, f.etoh_hosp
	FROM  comorbids_hosp_v5   A
	LEFT JOIN wtloss_hosp  B ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3 
	LEFT JOIN fen_hosp  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN anemia_cbl_hosp  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN anemia_def_hosp  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3
	LEFT JOIN etoh_hosp  f ON A.patienticn=f.patienticn and a.new_admitdate3=f.new_admitdate3 and a.new_dischargedate3=f.new_dischargedate3;
QUIT;

PROC SQL;
	CREATE TABLE PERCIVAPD2014_2019_hosp_V5 (compress=yes)  AS 
	SELECT A.*, B.*
	FROM PERCIVAPD2014_2019_hosp_v4  A
	LEFT JOIN comorbids_hosp_v6  B
	ON A.patienticn=b.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3 ;
QUIT;



/********************************************************************************/
/*add the procedures, keep proc ind only if NO previous same procedure done*/
/*Clean newly pulled CPT and ICD procedure data*/
/*CPT */
DATA  meddevinptcpt20132019_sw210729 (compress=yes); 
SET liz.meddevinptcpt20132019_sw210729;
ProcedureDate=datepart(CPTProcedureDateTime);
format ProcedureDate mmddyy10.;
if CPTCode in ('31600','31603','31605','31610')
  then Tracheostomy_proc=1; else Tracheostomy_proc=0;

if CPTCode in ('49440','49441','43246','49446','44373' )
 then Gastrostomy_proc=1; else Gastrostomy_proc=0;

if  CPTCode in ('44187','44188','44310','44320','49442'', 49442NL',
'44125','44130','44141','44143',
'44144','44146','44150','44151','44155','44156','44157','44158','44206','44208',
'44210','44211','44212','44322','44605','45110','45113','45119','45123','45126','45395','45805')
 then Ostomy_proc=1; else Ostomy_proc=0;

if   CPTCode in ('33285','33206','33207','33208'
'33249','33230','33231','33240','33221','33208','33249','33225'
,'33207','33216','33202','33213','33217','33224','33206','33212','33240','33270','33230','33231','33203','33271')
 then ICD_pacemaker=1; else ICD_pacemaker=0;

if  ICD_pacemaker=1 or Ostomy_proc=1 or Gastrostomy_proc=1 or Tracheostomy_proc=1;
keep patienticn proceduredate ICD_pacemaker Ostomy_proc Gastrostomy_proc Tracheostomy_proc;
RUN;

 /*InpatientICDProcedure*/
DATA  meddev_icdproc (compress=yes); 
SET  liz.meddevproc20132019_sw210608;
ProcedureDate=datepart(ICDProcedureDateTime);
format ProcedureDate mmddyy10.;
if (ICD9ProcedureCode in ('31.1', '31.2', '31.21', '31.29') ) or (ICD10ProcedureCode in ('0B110F4', '0B113F4', '0B114F4','0B110Z4', '0B113Z4', '0B114Z4') )
  then Tracheostomy_proc=1; else Tracheostomy_proc=0;

if (ICD9ProcedureCode in ('46.39', '46.32', '43.19', '43.11', '44.32', '46.31','46.34') ) or 
(ICD10ProcedureCode in ('0DHB8UZ', '0DHB7UZ', '0DHB4UZ', '0DHB3UZ', '0DHB0UZ', '0DHA8UZ', '0DHA7UZ', '0DHA4UZ', '0DHA3UZ', '0DHA0UZ', '0DH98UZ', '0DH97UZ', 
'0DH94UZ', '0DH93UZ', '0DH90UZ', '0DH88UZ', '0DH87UZ', '0DH84UZ', '0DH83UZ', '0DH80UZ', '0DH68UZ', '0DH67UZ', '0DH63UZ', '0DH64UZ', '0DH60UZ', 
'0D160Z4', '0D164K4', '0D163J4', '0D164J4', '0D168J4', '0D168K4','0D160K4', '0D160J4', '0D16874', '0D164Z4','0D16474', '0D16074', '0D168Z4') )  
 then Gastrostomy_proc=1; else Gastrostomy_proc=0;

if (ICD9ProcedureCode in ('46.01', '46.03','46.10', '46.11', '46.13', '46.14','46.20', '46.21', '46.23', '46.24', '46.30') ) or 
(ICD10ProcedureCode in ('0D1B074', '0D1B0J4', '0D1B0K4', '0D1B0Z4',
'0D1B3J4', '0D1B474', '0D1B4J4', '0D1B4K4', '0D1B4Z4', '0D1B874', '0D1B8J4', '0D1B8K4', '0D1B8Z4', '0D1H074', '0D1H0J4', '0D1H0Z4', '0D1H3J4', '0D1H474', '0D1H4J4', '0D1H4K4',
'0D1H4Z4', '0D1H874', '0D1H8J4', '0D1H8K4', '0D1H8Z4','0D1K074', '0D1K0J4', '0D1K0K4', '0D1K0Z4', '0D1K3J4', '0D1K474', '0D1K4J4', '0D1K4K4', '0D1K4Z4', '0D1K874', '0D1K8J4',
'0D1K8K4', '0D1K8Z4', '0D1L074', '0D1L0J4', '0D1L0K4', '0D1L0Z4', '0D1L3J4', '0D1L474', '0D1L4J4', '0D1L4K4',  '0D1L4Z4', '0D1L874', '0D1L8J4', '0D1L8K4', '0D1L8Z4', '0D1M074',
'0D1M0J4', '0D1M0K4', '0D1M0Z4', '0D1M3J4', '0D1M474','0D1M4J4', '0D1M4K4', '0D1M4Z4', '0D1M874', '0D1M8J4', '0D1M8K4', '0D1M8Z4', '0D1N074', '0D1N0J4', '0D1N0K4', '0D1N0Z4',
'0D1N3J4', '0D1N474', '0D1N4J4', '0D1N4K4', '0D1N4Z4', '0D1N874', '0D1N8J4', '0D1N8K4', '0D1N8Z4') )  
 then Ostomy_proc=1; else Ostomy_proc=0;

if (ICD9ProcedureCode in ('37.94', '37.96', '37.95', '00.54', '00.53', '00.52', '00.51', '00.50','37.80', '37.70', '37.79',
'37.71', '37.72', '37.73', '37.74','37.82', '37.83', '37.81') ) or 
(ICD10ProcedureCode in ('02H60KZ', '02H63KZ', '02H64KZ', '0JH607Z', '0JH637Z', '0JH807Z','02H70KZ', '02H73KZ', '02H74KZ', '02HK0KZ', 
'02HK3KZ', '02HK4KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z', '0JH609Z', '0JH639Z', '0JH809Z', '0JH839Z', 
'02HK0KZ', '02HK3KZ', '02HK4KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ','02H63KZ', '02H60KZ', '02H64KZ', '02H40KZ', '02H43KZ', '02H44KZ', '02H43JZ', '02H43KZ', 
'02H43MZ', '0JH607Z', '0JH637Z', '0JH609Z', '0JH639Z', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z', '02H60KZ', '02H63KZ', '02H64KZ', '02H70KZ', '02H73KZ', 
'02H74KZ', '02HK0KZ', '02HK3KZ', '02HK4KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z', '02H40KZ', '02H44KZ', '02H60KZ', 
'02H63KZ', '02H64KZ', '02H70KZ', '02H73KZ', '02H74KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ','02HN0KZ', '02HN3KZ', '02HN4KZ', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z',
'0JH602Z', '0JH632Z', '0JWT02Z', '0JWT0PZ', '0JWT32Z', '0JWT3PZ','0JH60PZ', '0JH63PZ', '0JH80PZ', '0JH83PZ', '0JPT3PZ' ,
'02HK0JZ', '02HK3JZ', '02HK4JZ', '02HL0JZ', '02HK3JZ', 'O2HL4JZ', '02H60JZ', '02H63JZ', '02H64JZ', '02H40JZ', '02H43JZ', '02H44JZ',
'02H40JZ', '02H40MZ', '02H44JZ', '02H44MZ', '02H44JZ', '02H44MZ', '02H60JZ', '02H60MZ', '02H63JZ', '02H4JZ', '02H64MZ', '02H70JZ', '02H70MZ',
'02H73JZ', '02H74JZ', '02H74MZ', '02HK0JZ', '02HK0MZ', '02HK3JZ', '02HK4JZ', '02HK4MZ', '02HL0JZ', '02HL0MZ', '02HL3JZ', '02HL4JZ', '02HL4MZ', 
'02HK3JZ', '02HK3MZ', '02HL3MZ', '02HK3JZ', '02H63JZ', '02H73JZ', '02H63JZ', '02H73JZ', '02HN0JZ', '02HN0MZ', '02HN3JZ', '02HN3MZ', '02HN4JZ', 
'02HN4MZ', '0JH604Z', '0JH634Z', '0JH804Z', '0JH834Z', '0JH605Z', '0JH635Z', '0JH805Z', '0JH835Z', '0JH606Z', '0JH636Z', '0JH806Z', '0JH836Z') )  
 then ICD_pacemaker=1; else ICD_pacemaker=0;

if Tracheostomy_proc=1 or Gastrostomy_proc=1 or Ostomy_proc=1 or ICD_pacemaker=1;
keep patienticn proceduredate ICD_pacemaker Ostomy_proc Gastrostomy_proc Tracheostomy_proc;
RUN;

PROC FREQ DATA=meddev_icdproc  order=freq;
TABLE ICD_pacemaker Ostomy_proc Gastrostomy_proc Tracheostomy_proc;
RUN;


/*INPTSURGICAL PROCEDURE*/
DATA  meddev_surgicd  (compress=yes); 
SET  liz.MEDDEVSURGPROC20132019_SW210608;
ProcedureDate=datepart(SurgicalProcedureDateTime);
format ProcedureDate mmddyy10.;
if (ICD9ProcedureCode in ('31.1', '31.2', '31.21', '31.29') ) or (ICD10ProcedureCode in ('0B110F4', '0B113F4', '0B114F4','0B110Z4', '0B113Z4', '0B114Z4') )
  then Tracheostomy_proc=1; else Tracheostomy_proc=0;

if (ICD9ProcedureCode in ('46.39', '46.32', '43.19', '43.11', '44.32', '46.31','46.34') ) or 
(ICD10ProcedureCode in ('0DHB8UZ', '0DHB7UZ', '0DHB4UZ', '0DHB3UZ', '0DHB0UZ', '0DHA8UZ', '0DHA7UZ', '0DHA4UZ', '0DHA3UZ', '0DHA0UZ', '0DH98UZ', '0DH97UZ', 
'0DH94UZ', '0DH93UZ', '0DH90UZ', '0DH88UZ', '0DH87UZ', '0DH84UZ', '0DH83UZ', '0DH80UZ', '0DH68UZ', '0DH67UZ', '0DH63UZ', '0DH64UZ', '0DH60UZ', 
'0D160Z4', '0D164K4', '0D163J4', '0D164J4', '0D168J4', '0D168K4','0D160K4', '0D160J4', '0D16874', '0D164Z4','0D16474', '0D16074', '0D168Z4') )  
 then Gastrostomy_proc=1; else Gastrostomy_proc=0;

if (ICD9ProcedureCode in ('46.01', '46.03','46.10', '46.11', '46.13', '46.14','46.20', '46.21', '46.23', '46.24', '46.30') ) or 
(ICD10ProcedureCode in ('0D1B074', '0D1B0J4', '0D1B0K4', '0D1B0Z4',
'0D1B3J4', '0D1B474', '0D1B4J4', '0D1B4K4', '0D1B4Z4', '0D1B874', '0D1B8J4', '0D1B8K4', '0D1B8Z4', '0D1H074', '0D1H0J4', '0D1H0Z4', '0D1H3J4', '0D1H474', '0D1H4J4', '0D1H4K4',
'0D1H4Z4', '0D1H874', '0D1H8J4', '0D1H8K4', '0D1H8Z4','0D1K074', '0D1K0J4', '0D1K0K4', '0D1K0Z4', '0D1K3J4', '0D1K474', '0D1K4J4', '0D1K4K4', '0D1K4Z4', '0D1K874', '0D1K8J4',
'0D1K8K4', '0D1K8Z4', '0D1L074', '0D1L0J4', '0D1L0K4', '0D1L0Z4', '0D1L3J4', '0D1L474', '0D1L4J4', '0D1L4K4',  '0D1L4Z4', '0D1L874', '0D1L8J4', '0D1L8K4', '0D1L8Z4', '0D1M074',
'0D1M0J4', '0D1M0K4', '0D1M0Z4', '0D1M3J4', '0D1M474','0D1M4J4', '0D1M4K4', '0D1M4Z4', '0D1M874', '0D1M8J4', '0D1M8K4', '0D1M8Z4', '0D1N074', '0D1N0J4', '0D1N0K4', '0D1N0Z4',
'0D1N3J4', '0D1N474', '0D1N4J4', '0D1N4K4', '0D1N4Z4', '0D1N874', '0D1N8J4', '0D1N8K4', '0D1N8Z4') )  
 then Ostomy_proc=1; else Ostomy_proc=0;

if (ICD9ProcedureCode in ('37.94', '37.96', '37.95', '00.54', '00.53', '00.52', '00.51', '00.50','37.80', '37.70', '37.79',
'37.71', '37.72', '37.73', '37.74','37.82', '37.83', '37.81') ) or 
(ICD10ProcedureCode in ('02H60KZ', '02H63KZ', '02H64KZ', '0JH607Z', '0JH637Z', '0JH807Z','02H70KZ', '02H73KZ', '02H74KZ', '02HK0KZ', 
'02HK3KZ', '02HK4KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z', '0JH609Z', '0JH639Z', '0JH809Z', '0JH839Z', 
'02HK0KZ', '02HK3KZ', '02HK4KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ','02H63KZ', '02H60KZ', '02H64KZ', '02H40KZ', '02H43KZ', '02H44KZ', '02H43JZ', '02H43KZ', 
'02H43MZ', '0JH607Z', '0JH637Z', '0JH609Z', '0JH639Z', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z', '02H60KZ', '02H63KZ', '02H64KZ', '02H70KZ', '02H73KZ', 
'02H74KZ', '02HK0KZ', '02HK3KZ', '02HK4KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z', '02H40KZ', '02H44KZ', '02H60KZ', 
'02H63KZ', '02H64KZ', '02H70KZ', '02H73KZ', '02H74KZ', '02HL0KZ', '02HL3KZ', '02HL4KZ','02HN0KZ', '02HN3KZ', '02HN4KZ', '0JH608Z', '0JH638Z', '0JH808Z', '0JH838Z',
'0JH602Z', '0JH632Z', '0JWT02Z', '0JWT0PZ', '0JWT32Z', '0JWT3PZ','0JH60PZ', '0JH63PZ', '0JH80PZ', '0JH83PZ', '0JPT3PZ' ,
'02HK0JZ', '02HK3JZ', '02HK4JZ', '02HL0JZ', '02HK3JZ', 'O2HL4JZ', '02H60JZ', '02H63JZ', '02H64JZ', '02H40JZ', '02H43JZ', '02H44JZ',
'02H40JZ', '02H40MZ', '02H44JZ', '02H44MZ', '02H44JZ', '02H44MZ', '02H60JZ', '02H60MZ', '02H63JZ', '02H4JZ', '02H64MZ', '02H70JZ', '02H70MZ',
'02H73JZ', '02H74JZ', '02H74MZ', '02HK0JZ', '02HK0MZ', '02HK3JZ', '02HK4JZ', '02HK4MZ', '02HL0JZ', '02HL0MZ', '02HL3JZ', '02HL4JZ', '02HL4MZ', 
'02HK3JZ', '02HK3MZ', '02HL3MZ', '02HK3JZ', '02H63JZ', '02H73JZ', '02H63JZ', '02H73JZ', '02HN0JZ', '02HN0MZ', '02HN3JZ', '02HN3MZ', '02HN4JZ', 
'02HN4MZ', '0JH604Z', '0JH634Z', '0JH804Z', '0JH834Z', '0JH605Z', '0JH635Z', '0JH805Z', '0JH835Z', '0JH606Z', '0JH636Z', '0JH806Z', '0JH836Z') )  
 then ICD_pacemaker=1; else ICD_pacemaker=0;

if Tracheostomy_proc=1 or Gastrostomy_proc=1 or Ostomy_proc=1 or ICD_pacemaker=1;
keep patienticn proceduredate ICD_pacemaker Ostomy_proc Gastrostomy_proc Tracheostomy_proc;
RUN;

PROC FREQ DATA=meddev_surgicd  order=freq;
TABLE ICD_pacemaker Ostomy_proc Gastrostomy_proc Tracheostomy_proc;
RUN;

/*combine all three (CPT, ICD proc, ICD surg) tables and then undup*/
DATA  all_proc (compress=yes); 
SET  meddev_surgicd meddev_icdproc meddevinptcpt20132019_sw210729;
RUN;

DATA Tracheostomy (compress=yes) 
Gastrostomy (compress=yes)   
Ostomy (compress=yes)   
ICD_pacemaker (compress=yes); 
SET  all_proc ;
if Tracheostomy_proc=1 then output Tracheostomy;
if Gastrostomy_proc=1 then output Gastrostomy ;
if Ostomy_proc=1 then output Ostomy;
if ICD_pacemaker=1 then output ICD_pacemaker;
RUN;

PROC SORT DATA=Tracheostomy  nodupkey; 
BY  patienticn ProcedureDate;
RUN;

PROC SORT DATA=Gastrostomy  nodupkey; 
BY  patienticn ProcedureDate;
RUN;

PROC SORT DATA=Ostomy  nodupkey; 
BY  patienticn ProcedureDate;
RUN;

PROC SORT DATA=ICD_pacemaker  nodupkey; 
BY  patienticn ProcedureDate;
RUN;

/*clean each medical device procedure*/
/*Patients would be excluded from the tracheostomy cohort if they had a prior trach, 
but could still be included in the feeding tube, icd, ostomy cohorts if the newly acquired 
those during 2014-2019. */

/*Tracheostomy*/
/*first merge to hosp-level data, by patienticn*/
PROC SQL;
	CREATE TABLE  Tracheostomy_v1 (compress=yes)  AS 
	SELECT A.patienticn, a.new_admitdate3, a.new_dischargedate3, 
           B.ProcedureDate as Tracheostomy_ProcedureDate
	FROM   PERCIVAPD2014_2019_hosp   A
	LEFT JOIN  Tracheostomy B ON A.patienticn=B.patienticn;
QUIT;

PROC SORT DATA=Tracheostomy_v1;
BY  patienticn Tracheostomy_ProcedureDate;
RUN;

/*see how many total Tracheostomy hosps*/
DATA Tracheostomy_total_hosps (compress=yes);
SET  Tracheostomy_v1;
if new_admitdate3<=Tracheostomy_ProcedureDate<=new_dischargedate3;
RUN;

PROC SORT DATA=Tracheostomy_total_hosps  nodupkey; 
BY  patienticn new_admitdate3 new_dischargedate3;
RUN;

/*Assign unique hosp ID*/
DATA Tracheostomy_total_hosps (compress=yes); 
SET  Tracheostomy_total_hosps;
unique_hosp_id=_N_;
RUN;

PROC SQL;
	CREATE TABLE  Tracheostomy_total_hosps2 (compress=yes)  AS 
	SELECT A.*, B.ProcedureDate as Tracheostomy_ProcedureDate2
	FROM   Tracheostomy_total_hosps   A
	LEFT JOIN  Tracheostomy B ON A.patienticn=B.patienticn;
QUIT;

DATA Tracheostomy_v2 (compress=yes); 
SET  Tracheostomy_total_hosps2;
if Tracheostomy_ProcedureDate2<new_admitdate3 then prior_proc=1; else prior_proc=0;
if prior_proc=1;
RUN;

PROC SORT DATA=Tracheostomy_v2  nodupkey; 
BY unique_hosp_id;
RUN;

PROC SQL;
	CREATE TABLE  Tracheostomy_total_hosps3 (compress=yes)  AS 
	SELECT A.*, B.prior_proc
	FROM   Tracheostomy_total_hosps  A
	LEFT JOIN Tracheostomy_v2   B 	ON A.unique_hosp_id =B.unique_hosp_id;
QUIT;

DATA Tracheostomy_total_hosps3 (compress=yes); 
SET Tracheostomy_total_hosps3 ;
if prior_proc NE 1 then final_Tracheostomy=1; else final_Tracheostomy=0;
if final_Tracheostomy=1;
RUN;

/*Gastrostomy*/
/*first merge to hosp-level data, by patienticn*/
PROC SQL;
	CREATE TABLE  Gastrostomy_v1 (compress=yes)  AS 
	SELECT A.patienticn, a.new_admitdate3, a.new_dischargedate3, 
           B.ProcedureDate as Gastrostomy_ProcedureDate
	FROM   PERCIVAPD2014_2019_hosp   A
	LEFT JOIN  Gastrostomy B ON A.patienticn=B.patienticn;
QUIT;

PROC SORT DATA=Gastrostomy_v1;
BY  patienticn Gastrostomy_ProcedureDate;
RUN;

/*see how many total Gastrostomy hosps*/
DATA Gastrostomy_total_hosps (compress=yes);
SET  Gastrostomy_v1;
if new_admitdate3<=Gastrostomy_ProcedureDate<=new_dischargedate3;
RUN;

PROC SORT DATA=Gastrostomy_total_hosps  nodupkey; 
BY  patienticn new_admitdate3 new_dischargedate3;
RUN;

/*Assign unique hosp ID*/
DATA Gastrostomy_total_hosps (compress=yes);
SET  Gastrostomy_total_hosps;
unique_hosp_id=_N_;
RUN;

PROC SQL;
	CREATE TABLE  Gastrostomy_total_hosps2 (compress=yes)  AS 
	SELECT A.*, B.ProcedureDate as Gastrostomy_ProcedureDate2
	FROM   Gastrostomy_total_hosps   A
	LEFT JOIN  Gastrostomy B ON A.patienticn=B.patienticn;
QUIT;

DATA Gastrostomy_v2 (compress=yes); 
SET  Gastrostomy_total_hosps2;
if Gastrostomy_ProcedureDate2<new_admitdate3 then prior_proc=1; else prior_proc=0;
if prior_proc=1;
RUN;

PROC SORT DATA=Gastrostomy_v2  nodupkey; 
BY unique_hosp_id ;
RUN;

PROC SQL;
	CREATE TABLE  Gastrostomy_total_hosps3 (compress=yes)  AS 
	SELECT A.*, B.prior_proc
	FROM   Gastrostomy_total_hosps  A
	LEFT JOIN Gastrostomy_v2   B 	ON A.unique_hosp_id =B.unique_hosp_id ;
QUIT;

DATA Gastrostomy_total_hosps3 (compress=yes); 
SET Gastrostomy_total_hosps3 ;
if prior_proc NE 1 then final_Gastrostomy=1; else final_Gastrostomy=0;
if final_Gastrostomy=1;
RUN;


/*Ostomy*/
/*first merge to hosp-level data, by patienticn*/
PROC SQL;
	CREATE TABLE  Ostomy_v1 (compress=yes)  AS 
	SELECT A.patienticn, a.new_admitdate3, a.new_dischargedate3, 
           B.ProcedureDate as Ostomy_ProcedureDate
	FROM   PERCIVAPD2014_2019_hosp   A
	LEFT JOIN  Ostomy B ON A.patienticn=B.patienticn;
QUIT;

PROC SORT DATA=Ostomy_v1;
BY  patienticn Ostomy_ProcedureDate;
RUN;

/*see how many total Ostomy hosps*/
DATA Ostomy_total_hosps (compress=yes);
SET  Ostomy_v1;
if new_admitdate3<=Ostomy_ProcedureDate<=new_dischargedate3;
RUN;

PROC SORT DATA=Ostomy_total_hosps  nodupkey; 
BY  patienticn new_admitdate3 new_dischargedate3;
RUN;

/*Assign unique hosp ID*/
DATA Ostomy_total_hosps (compress=yes); 
SET  Ostomy_total_hosps;
unique_hosp_id=_N_;
RUN;

PROC SQL;
	CREATE TABLE  Ostomy_total_hosps2 (compress=yes)  AS 
	SELECT A.*, B.ProcedureDate as Ostomy_ProcedureDate2
	FROM   Ostomy_total_hosps   A
	LEFT JOIN  Ostomy B ON A.patienticn=B.patienticn;
QUIT;

DATA Ostomy_v2 (compress=yes); 
SET  Ostomy_total_hosps2;
if Ostomy_ProcedureDate2<new_admitdate3 then prior_proc=1; else prior_proc=0;
if prior_proc=1;
RUN;

PROC SORT DATA=Ostomy_v2  nodupkey; 
BY unique_hosp_id;
RUN;

PROC SQL;
	CREATE TABLE  Ostomy_total_hosps3 (compress=yes)  AS 
	SELECT A.*, B.prior_proc
	FROM   Ostomy_total_hosps  A
	LEFT JOIN Ostomy_v2   B ON A.unique_hosp_id =B.unique_hosp_id;
QUIT;

DATA Ostomy_total_hosps3 (compress=yes); 
SET Ostomy_total_hosps3 ;
if prior_proc NE 1 then final_Ostomy=1; else final_Ostomy=0;
if final_Ostomy=1;
RUN;


/*ICD_pacemaker*/
/*first merge to hosp-level data, by patienticn*/
PROC SQL;
	CREATE TABLE  ICD_pacemaker_v1 (compress=yes)  AS
	SELECT A.patienticn, a.new_admitdate3, a.new_dischargedate3, 
           B.ProcedureDate as ICD_pacemaker_ProcedureDate
	FROM   PERCIVAPD2014_2019_hosp   A
	LEFT JOIN  ICD_pacemaker B ON A.patienticn=B.patienticn;
QUIT;

PROC SORT DATA=ICD_pacemaker_v1;
BY  patienticn ICD_pacemaker_ProcedureDate;
RUN;

/*see how many total ICD_pacemaker hosps*/
DATA ICD_pacemaker_total_hosps (compress=yes);
SET  ICD_pacemaker_v1;
if new_admitdate3<=ICD_pacemaker_ProcedureDate<=new_dischargedate3;
RUN;

PROC SORT DATA=ICD_pacemaker_total_hosps  nodupkey; 
BY  patienticn new_admitdate3 new_dischargedate3;
RUN;

/*Assign unique hosp ID*/
DATA ICD_pacemaker_total_hosps (compress=yes); 
SET  ICD_pacemaker_total_hosps;
unique_hosp_id=_N_;
RUN;

PROC SQL;
	CREATE TABLE  ICD_pacemaker_total_hosps2 (compress=yes)  AS 
	SELECT A.*, B.ProcedureDate as ICD_pacemaker_ProcedureDate2
	FROM   ICD_pacemaker_total_hosps   A
	LEFT JOIN  ICD_pacemaker B ON A.patienticn=B.patienticn;
QUIT;

DATA ICD_pacemaker_v2 (compress=yes); 
SET  ICD_pacemaker_total_hosps2;
if ICD_pacemaker_ProcedureDate2<new_admitdate3 then prior_proc=1; else prior_proc=0;
if prior_proc=1;
RUN;

PROC SORT DATA=ICD_pacemaker_v2  nodupkey; 
BY unique_hosp_id ;
RUN;

PROC SQL;
	CREATE TABLE  ICD_pacemaker_total_hosps3 (compress=yes)  AS 
	SELECT A.*, B.prior_proc
	FROM   ICD_pacemaker_total_hosps  A
	LEFT JOIN ICD_pacemaker_v2   B 	ON A.unique_hosp_id =B.unique_hosp_id;
QUIT;

DATA ICD_pacemaker_total_hosps3 (compress=yes); 
SET ICD_pacemaker_total_hosps3;
if prior_proc NE 1 then final_ICD_pacemaker=1; else final_ICD_pacemaker=0;
if final_ICD_pacemaker=1;
RUN;

/*Merge all proc inds back to PERCIVAPD2014_2019_hosp_V5*/
PROC SQL;
	CREATE TABLE PERCIVAPD2014_2019_hosp_V6  (compress=yes)  AS 
	SELECT A.*, B.final_ICD_pacemaker, c.final_Ostomy, d.final_tracheostomy, e.final_Gastrostomy
	FROM  PERCIVAPD2014_2019_hosp_V5   A
	LEFT JOIN  ICD_pacemaker_total_hosps3  B ON A.patienticn=B.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3
	LEFT JOIN  Ostomy_total_hosps3  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN  tracheostomy_total_hosps3  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN  Gastrostomy_total_hosps3  e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3;
QUIT;

DATA PERCIVAPD2014_2019_hosp_V7 (compress=yes) ;
SET  PERCIVAPD2014_2019_hosp_V6 ;
if final_ICD_pacemaker NE 1  then final_ICD_pacemaker=0;
if final_Ostomy NE 1  then final_Ostomy=0;
if final_tracheostomy NE 1  then final_tracheostomy=0;
if final_Gastrostomy NE 1  then final_Gastrostomy=0;
if final_ICD_pacemaker=1 or final_Ostomy=1 or final_tracheostomy=1 or final_Gastrostomy=1 
then any_procedure=1; else any_procedure=0;
RUN;

PROC FREQ DATA=PERCIVAPD2014_2019_hosp_V7  order=freq;
TABLE final_ICD_pacemaker final_Ostomy final_tracheostomy final_Gastrostomy any_procedure;
RUN;

PROC FREQ DATA=PERCIVAPD2014_2019_hosp_V7  order=freq;
TABLE  specialty;
RUN;


/*macro to change all variables from uppercase to lowercases because unlike SAS, STATA is case sensitive*/ 
%macro lowcase(dsn); 
     %let dsid=%sysfunc(open(&dsn)); 
     %let num=%sysfunc(attrn(&dsid,nvars)); 
     %put &num;
     data &dsn; 
           set &dsn(rename=( 
        %do i = 1 %to &num; 
        %let var&i=%sysfunc(varname(&dsid,&i));      /*function of varname returns the name of a SAS data set variable*/
        &&var&i=%sysfunc(lowcase(&&var&i))         /*rename all variables*/ 
        %end;)); 
        %let close=%sysfunc(close(&dsid)); 
  run; 
%mend lowcase; 

%lowcase(PERCIVAPD2014_2019_hosp_V7)

data liz.PERCIVAPD2014_2019_hosp_210730 (compress=yes);
set PERCIVAPD2014_2019_hosp_V7;
run;



/*Table 1 Prolonged ICU hospitalization    */
proc means data=PERCIVAPD2014_2019_hosp_V7 median q1 q3;
var age elixhauser_vanwalraven va_risk_score new_sum_icu_days_bedsection hosp_los;
run;

PROC FREQ DATA=PERCIVAPD2014_2019_hosp_V7;
TABLE race female inhosp_mort mort30_discharge mort90_discharge mort365_discharge ;
RUN;

/*Table 1 any procedures only   */
DATA any_proc_only (compress=yes) ;
SET  PERCIVAPD2014_2019_hosp_V7;
if any_procedure=1;
RUN;

proc means data=any_proc_only median q1 q3;
var age elixhauser_vanwalraven va_risk_score new_sum_icu_days_bedsection hosp_los;
run;

PROC FREQ DATA=any_proc_only;
TABLE race female inhosp_mort mort30_discharge mort90_discharge mort365_discharge ;
RUN;


/*****************************************************************************/
/*Liz wants the excludsion proc ind as well*/
PROC SQL;
	CREATE TABLE PERCIVAPD2014_2019_hosp_210806  (compress=yes)  AS
	SELECT A.*, B.prior_proc as Tracheostomy_prior_proc, 
             c.prior_proc as Gastrostomy_prior_proc , d.prior_proc as Ostomy_prior_proc ,
       e.prior_proc as ICD_pacemaker_prior_proc 
	FROM  liz.PERCIVAPD2014_2019_hosp_210730   A
	LEFT JOIN Tracheostomy_v2  B ON A.patienticn=B.patienticn and a.new_admitdate3=b.new_admitdate3 and a.new_dischargedate3=b.new_dischargedate3
	LEFT JOIN Gastrostomy_v2  c ON A.patienticn=c.patienticn and a.new_admitdate3=c.new_admitdate3 and a.new_dischargedate3=c.new_dischargedate3
	LEFT JOIN Ostomy_v2  d ON A.patienticn=d.patienticn and a.new_admitdate3=d.new_admitdate3 and a.new_dischargedate3=d.new_dischargedate3
	LEFT JOIN ICD_pacemaker_v2 e ON A.patienticn=e.patienticn and a.new_admitdate3=e.new_admitdate3 and a.new_dischargedate3=e.new_dischargedate3;
QUIT;

DATA PERCIVAPD2014_2019_hosp_210806 (compress=yes) ;
SET PERCIVAPD2014_2019_hosp_210806 ;
if Tracheostomy_prior_proc ne 1 then Tracheostomy_prior_proc=0;
if Gastrostomy_prior_proc ne 1 then Gastrostomy_prior_proc=0;
if Ostomy_prior_proc ne 1 then Ostomy_prior_proc=0;
if ICD_pacemaker_prior_proc ne 1 then ICD_pacemaker_prior_proc=0;
RUN;

proc freq data=PERCIVAPD2014_2019_hosp_210806;
table Tracheostomy_prior_proc Gastrostomy_prior_proc Ostomy_prior_proc ICD_pacemaker_prior_proc;
run;

/*macro to change all variables from uppercase to lowercases because unlike SAS, STATA is case sensitive*/ 
%macro lowcase(dsn); 
     %let dsid=%sysfunc(open(&dsn)); 
     %let num=%sysfunc(attrn(&dsid,nvars)); 
     %put &num;
     data &dsn; 
           set &dsn(rename=( 
        %do i = 1 %to &num; 
        %let var&i=%sysfunc(varname(&dsid,&i));      /*function of varname returns the name of a SAS data set variable*/
        &&var&i=%sysfunc(lowcase(&&var&i))         /*rename all variables*/ 
        %end;)); 
        %let close=%sysfunc(close(&dsid)); 
  run; 
%mend lowcase; 

%lowcase(PERCIVAPD2014_2019_hosp_210806)

data liz.PERCIVAPD2014_2019_hosp_210806 (compress=yes); /**/
set PERCIVAPD2014_2019_hosp_210806;
run;

