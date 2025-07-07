library(readr)
library(usethis)

underagemothersPH2023 <- read_csv("data-raw/PH_underage_mothers.csv")
PISAMathReadSciCRTSummaryScores <-read_csv("data-raw/PISACrtSummary.csv")
PISAAccesToDeviceAndInternet <- read_csv("data-raw/PISAStudentPropertiesAccessToDevicesAndInternet.csv")
PISABooksFamilyHighesteducation <- read_csv("data-raw/PISA2022BooksParentsSiblings.csv")
PISASkippingSchool <- read_csv("data-raw/PISA2022SkippingSchool.csv")
PISATeacherRelationSafety <-read_csv("data-raw/PISA2022TeacherRelationSafety.csv")
