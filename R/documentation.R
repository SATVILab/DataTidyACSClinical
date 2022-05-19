#' The clinical variables for the ACS cohort, including both fixed and time-varying variables.
#' @name data_tidy_clinical
#' @docType data
#' @title The clinical variables for the ACS cohort.
#' @details
#' For missing data, a "999" indicates that the element was structurally missing (e.g. there was no cough history length when the participant had no cough).
#' A "998" indicates that the element was accidentally missing (e.g. the participant was seen at that visit, but it is not indicated whether they had a cough.)
#'
#' @format a \code{tbl_df} containing the following fields:
#' \describe{
#' \item{SubjectID}{Participant ID}
#' \item{PID}{New participant ID.}
#' \item{ProgressorOrControl}{Whether an individual was a progressor OR matched control ("yes") or not ("no").}
#' \item{Progressor}{Whether an individual was a progressor ("yes") or a matched control ("no"). If neither, then the value 999 is given.}
#' \item{Zak2016Progressor}{Whether an individual was a progressor ('yes') or not ("no") as per the Zak (2016) Lancet paper. No information as to whether an individual is a matched control is provided by this column.}
#' \item{Scriba2018ProgressorOrControl}{Whether an individual was a progress("progressor"), a matched control ("control") or neither ("neither") as per the Scriba (2018) PLOS Pathogens paper. This column was used to decide whether subjects that did not develop TB during the study and had assay data were matched controls or not.}
#' \item{TBCase}{Labelled "yes" if the subject either had TB at study entry or developed it during the study.}
#' \item{TBCaseType}{Whether TB case was prevalent (TB already at study entry) or incident (TB developed during study).}
#' \item{EndOfStudyStatus}{Follow-up status of subject at end of study.}
#' \item{EnrolmentDate}{Date of enrolment.}
#' \item{DateAWOL}{If applicable, date of leaving study for no known reason.}
#' \item{DateConsentWithdrawn}{Date consent was withdrawn.}
#' \item{DateDeath}{If applicable, date of death.}
#' \item{DateCensor}{If applicable, date of censoring.}
#' \item{TreatmentStart}{Date of initiating TB treatment, if begun during study.}
#' \item{TreatmentEnd}{Date of ending TB treatment, if ended during study.}
#' \item{timeToTB}{Number of days to TB diagnosis. Negative values indicate diagnosis in the past.}
#' \item{DateOfLstVisitOrDeath}{Date of last visit or death.}
#' \item{DateSurvExit}{Date of exit from a survival analysis study.}
#' \item{EverInfected}{Whether an individual ever had either QFT>0.35 or TST>5 at any visit.}
#' \item{StudyGroup}{Study arm.}
#' \item{HIVPositive}{Whether an individual was found to be HIV+ during the study.}
#' \item{Pregnant}{Whether an individual was found to be pregnant during the study.}
#' \item{Sex}{Gender.}
#' \item{AgeAtLastBirthday}{Age at last birthday in years at study entry.}
#' \item{Ethnicity}{Ethnicity.}
#' \item{VaccinatedWithBCG}{Whether subject was vaccinated with BCG.}
#' \item{BCGScar}{Whether subject had a BCG scar.}
#' \item{Height}{Height in metres at study entry.}
#' \item{Weight}{Weight in kilograms at study entry.}
#' \item{PreviousDiagnosisOfTB}{Whether participant had been diagnosed with TB before entering study.}
#' \item{YearPreviousDiagnosisOfTB}{Year of previous diagnosis of TB, if diagnosed with TB before entering study.}
#' \item{CurrentlyOnTBTreatment}{Whether participant was on TB treatment at study entry.}
#' \item{TBTreatmentStarted}{When treatment was started, if subject was on TB treatment at study entry.}
#' \item{HouseholdMemberOnTBTreatment}{Whether a household member was on TB treatment at study entry.}
#' \item{LivedInHouseWithTBPatient}{Whether the subject had lived in a house with a TB patient at study entry.}
#' \item{TBContactYear}{Year of contact with a household TB contact, if the subject had a household TB contact before study entry.}
#' \item{TBContactYearFinal}{Last year of contact with a household TB contact, if the subject had a household TB contact before study entry.}
#' \item{SchoolCode}{Code indicating school at study entry. Anonymised.}
#' \item{SchoolGrade}{School grade at study entry.}
#' \item{MotherGrossMonthlyIncome, FatherGrossMonthlyIncome, GuardianGrossMonthlyIncome}{Gross monthly income of mother, father and guardian, respectively, at study entry.}
#' \item{PastMedicalHistory}{Whether subject had a past medical history at study entry.}
#' \item{ChronicIllness}{Whether subject had a chronic illness at study entry.}
#' \item{ChronicIllnessDetails}{Type of chronic illness at study entry.}
#' \item{ConfirmedInformationWithSubject}{Whether information provided was confirmed by parent or guardian.}
#' \item{SampleID}{Concatenation of SubjectID and VisitType.}
#' \item{SampleAvailable}{Whether a sample was available from that subject at that visit.}
#' \item{VisitType}{The type of the visit.}
#' \item{VisitTypeDaysSinceEntry}{Number of days planned between visit and enrolment date.}
#' \item{VisitDate}{The date of the visit.}
#' \item{DaysSinceEntry}{Number of days between actual visit date and enrolment date.}
#' \item{WasSubjectSeen}{When subject was seen at that visit.}
#' \item{ReasonNotSeen}{If subject was not seen at that visit, the reason why.}
#' \item{OrigReasonNotSeen}{Unformatted reason not seen originally provided. These reasons were combiend to form the \code{ReasonNotSeen} column.}
#' \item{CurrentlyInfected}{Whether the individual had either QFT>0.35 or TST>5 at this visit.}
#' \item{InfectedNowOrBefore}{Whether the individual had either QFT>0.35 or TST>5 at either this visit or a previous visit.}
#' \item{Cough}{Presence of cough.}
#' \item{CoughTime}{Length of cough history in weeks.}
#' \item{Fever}{Presence of fever.}
#' \item{FeverTime}{Length of fever history in weeks.}
#' \item{Haemoptysis}{Presence of haemoptysis.}
#' \item{HaemoptysisTime}{Length of haemoptysis history in weeks.}
#' \item{WeightLoss}{Presence of weight loss.}
#' \item{WeightLossTime}{Length of weight loss history in weeks.}
#' \item{NightSweats}{Presence of night sweats.}
#' \item{NightSweatsTime}{Length of night sweats history in weeks.}
#' \item{OtherSymptoms1}{Presence of first additional symptom.}
#' \item{OtherSymptoms1Details}{Type of first additional symptom.}
#' \item{OtherSymptoms1Time}{Length of first additional symptom history in weeks.}
#' \item{OtherSymptoms2}{Presence of second additional symptom.}
#' \item{OtherSymptoms2Details}{Type of second additional symptom.}
#' \item{OtherSymptoms2Time}{Length of second additional symptom history in weeks.}
#' \item{DateOfTSTAdministered}{Date of TST administration.}
#' \item{DateTSTRead}{Date of TST reading.}
#' \item{TSTResult}{Measurement of Mantoux induration in transverse diameter.}
#' \item{QuantiferonInTubeResult}{Qualitative QFT result.}
#' \item{QFT_TBAg_Nil}{Quantitative QFT reading.}
#' \item{SP[n]DTC}{Date of sputum count "n", for n from 1 to 4.}
#' \item{SputumType[n]}{Whether sputum was induced or taken normally for sputum "n".}
#' \item{CUL[n]RST}{Culture positivity result for sputum "n".}
#' \item{DIF[n]RST}{Test indicating if bacterium is Mtb or another Mycobacterium for sputum "n".}
#' \item{SINH[n]}{First test indicating drug resistance for sputum "n".}
#' \item{SRIF[n]}{Second test indicating drug resistance (of a different type to first) for sputum "n".}
#' \item{SubjectPutOnTBRxSinceLastVisit}{Whether subject was placed on TB treatment since last visit.}
#' \item{DateTBRx}{Date of beginning TB treatment, if begun since last interview.}
#' \item{SubjectHospitilisedSinceLastVisit}{Whether subject was hospitalised since last visit.}
#' \item{NewHousholdContactSinceLastVisit}{Whether subject had a new household TB contact since last visit.}
#' \item{NewOrWorseningSymptoms}{Whether the subject developed new or worse symptoms since last visit.}
#' \item{HouseholdTBContactSinceLastInterview}{Whether anyone in subject's household was diagnosed with TB since last interview.}
#' \item{BloodTakenQuantiferon, BloodTakenImmunology, BloodTakenPaxgene}{Whether blood was taken for QFT, immunology and Paxgene, respectively.}
#' \item{DateOfQuantiferon}{Date on which QFT was performed.}
#' \item{SeverityOfReaction}{Severity of reaction to TST test.}
#' \item{ReasonBloodNotTaken}{If blood was not taken for QFT, immmunology or Paxgene, why.}
#' \item{ReferredForTBInvestigation}{Whether subject was referred for TB investigation at that visit.}
#' \item{ReasonForTBReferral}{Reason for subject being referred for TB investigation, if they were.}
#' \item{DateOfReferral}{Date of referral for TB investigation.}
#' \item{ReasonNotRead}{Reason for TST not being read.}
#' \item{ReasonNoMicroResults}{Reason no microbiological tests.}
#' }
#' @source The data comes from SATVI.
#' @seealso
#' \link{TuberculomicsCompendium}
NULL