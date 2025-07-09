library(readr)
library(usethis)
library(readxl)
underagemothersPH2023 <- read_csv("data-raw/PH_underage_mothers.csv")
PISAMathReadSciCRTSummaryScores <-read_csv("data-raw/PISACrtSummary.csv")
PISAAccesToDeviceAndInternet <- read_csv("data-raw/PISAStudentPropertiesAccessToDevicesAndInternet.csv")
PISABooksFamilyHighesteducation <- read_csv("data-raw/PISA2022BooksParentsSiblings.csv")
PISASkippingSchool <- read_csv("data-raw/PISA2022SkippingSchool.csv")

#Very raw names
PISATeacherRelationSafety <-read_csv("data-raw/PISA2022TeacherRelationSafety.csv")
#Update column names
new_column_names <- c(
  "SchoolID",
  "StudentID",
  "BelongSchool",
  "TeachersCare",
  "TeachersFair",
  "FeelSafeSchool",
  "StudentsFriendly",
  "MakeFriendsEasy",
  "HappySchool",
  "TeachersHelpLearn",
  "TeacherBelievesMe",
  "TeacherHelpsLearning",
  "TeacherIndividualHelp",
  "TeacherExtraHelp",
  "TeacherListensIdeas",
  "TeacherClearExpect",
  "TeachersDontListen",
  "StudentsDontGetAlong",
  "SchoolPositiveAtmosph",
  "StudentsBullied",
  "StudentsSkipClasses",
  "StudentsAbsent",
  "StudentsCooperate",
  "StudentsRespectTeachers",
  "StudentsListenTeachers",
  "AfraidHurtSchool",
  "AfraidBullySchool",
  "SafeWalkToFromSchool",
  "SafeInClassroom"
)
# Apply the new column names to your data frame
colnames(PISATeacherRelationSafety) <- new_column_names

PISA2022AdminSurvey <- read_xlsx("data-raw/PISA2022AdminTest.xlsx")

