/*Author: Shirley Wang (xiaoqing.wang@va.gov)*/
/*Liz's Med Dev project, pull data 2013-2019*/

use ord_studyname
go

/*CPT codes*/
SELECT distinct a.InpatientCPTProcedureSID, a.Sta3n, a.PatientSID, a.InpatientSID,
a.AdmitDateTime, a.DischargeDateTime,    a.CPTProcedureDateTime, a.CPTSID,
 c.PatientICN, e.CPTCode, e.CPTName, e.CPTDescription, e.CPTCategorySID
into dflt.MedDevinptCPT20132019_SW210729 
from [Src].[Inpat_InpatientCPTProcedure] a 
left join [CDWWORK].[Dim].[CPT] e on a.CPTSID=e.CPTSID
left join  Src.SPatient_SPatient c on a.patientsid=c.PatientSID
where  a.AdmitDateTime >='2013-01-01' and a.AdmitDateTime < '2020-01-01' 
and  e.CPTCode in ('31600','31603','31605','31610',
'49440','49441','43246','49446','44373',
'44187','44188','44310','44320','49446','49442NL',
'44125','44130','44141','44143',
'44144','44146','44150','44151','44155','44156','44157','44158','44206','44208',
'44210','44211','44212','44322','44605','45110','45113','45119','45123','45126','45395','45805',
'33285','33206','33207','33208','33249','33230','33231','33240','33221','33208','33249','33225','33207',
'33216','33202','33213','33217','33224','33206','33212','33240','33270','33230','33231','33203','33271')
/*not restricting to any cohort so will get many duplicates, pulling in distinct data already*/
--(32094 row(s) affected)

/*ICD Procedure codes*/
/*6/8/21: Liz wants to add icd-9 and icd-10 procedure codes the for Med Dev Epic/Freq paper. Pull in all Med Devs*/
SELECT distinct  a.InpatientICDProcedureSID, a.Sta3n, a.PatientSID, a.InpatientSID,
a.AdmitDateTime, a.DischargeDateTime,  a.ICD9ProcedureSID, a.ICD10ProcedureSID,  a.ICDProcedureDateTime,
  e.ICD10ProcedureCode, d.ICD9ProcedureCode, c.PatientICN
into dflt.MedDevProc20132019_sw210608
from [Src].[Inpat_InpatientICDProcedure] a 
left join [CDWWORK].[Dim].[ICD10Procedure] e on a.ICD10ProcedureSID=e.ICD10ProcedureSID
left join [CDWWORK].[Dim].[ICD9Procedure] d on a.ICD9ProcedureSID=d.ICD9ProcedureSID
left join  Src.SPatient_SPatient c on a.patientsid=c.PatientSID
where  a.AdmitDateTime >='2013-01-01' and a.AdmitDateTime < '2020-01-01' 
--(8113166 row(s) affected)

/*InpatientSurgicalProcedure*/
SELECT distinct a.InpatientSurgicalProcedureSID, a.Sta3n, a.PatientSID, a.InpatientSID,
a.AdmitDateTime, a.DischargeDateTime,  a.ICD9ProcedureSID, a.ICD10ProcedureSID,  a.SurgicalProcedureDateTime,
 e.ICD10ProcedureCode, d.ICD9ProcedureCode, c.PatientICN 
into dflt.MedDevsurgproc20132019_SW210608
from [Src].[Inpat_InpatientSurgicalProcedure] a 
left join [CDWWORK].[Dim].[ICD10Procedure] e on a.ICD10ProcedureSID=e.ICD10ProcedureSID
left join [CDWWORK].[Dim].[ICD9Procedure] d on a.ICD9ProcedureSID=d.ICD9ProcedureSID
left join  Src.SPatient_SPatient c on a.patientsid=c.PatientSID
where   a.AdmitDateTime >='2013-01-01' and a.AdmitDateTime < '2020-01-01'
