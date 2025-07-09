# PinoyDatasets/R/data.R

#' Birth Records from Underage Mothers in the Philippines, 2023
#'
#' This dataset contains detailed birth registration information for children
#' born to underage mothers in the Philippines during the year 2023. It captures
#' demographic, geographic, and birth-specific attributes of newborns and their parents,
#' focusing on aspects relevant to births from younger mothers. The geographic variables
#' are coded, and a separate codebook is required for their interpretation.
#'
#' @format A data frame with an unspecified number of rows and 28 variables:
#' \describe{
#'   \item{\code{...1}}{A potential row identifier or an artifact from data import.
#'                       This column typically serves as an index and may not be
#'                       retained for analytical purposes. (Integer)}
#'   \item{\code{old_place_birth_region}}{Coded region of the original declared place of birth. Refer to the provided codebook for actual region names. (Integer/Character, Coded)}
#'   \item{\code{old_place_birth_province}}{Coded province of the original declared place of birth. Refer to the provided codebook for actual province names. (Integer/Character, Coded)}
#'   \item{\code{old_place_birth_mun}}{Coded municipality of the original declared place of birth. Refer to the provided codebook for actual municipality names. (Integer/Character, Coded)}
#'   \item{\code{new_place_birth_region}}{Coded region of the new/corrected place of birth. Refer to the provided codebook for actual region names. (Integer/Character, Coded)}
#'   \item{\code{new_place_birth_province}}{Coded province of the new/corrected place of birth. Refer to the provided codebook for actual province names. (Integer/Character, Coded)}
#'   \item{\code{new_place_birth_mun}}{Coded municipality of the new/corrected place of birth. Refer to the provided codebook for actual municipality names. (Integer/Character, Coded)}
#'   \item{\code{old_mother_residence_region}}{Coded region of the mother's original declared place of residence. Refer to the provided codebook for actual region names. (Integer/Character, Coded)}
#'   \item{\code{old_mother_residence_province}}{Coded province of the mother's original declared place of residence. Refer to the provided codebook for actual province names. (Integer/Character, Coded)}
#'   \item{\code{old_mother_residence_mun}}{Coded municipality of the mother's original declared place of residence. Refer to the provided codebook for actual municipality names. (Integer/Character, Coded)}
#'   \item{\code{new_mother_residence_region}}{Coded region of the mother's new/corrected place of residence. Refer to the provided codebook for actual region names. (Integer/Character, Coded)}
#'   \item{\code{new_mother_residence_province}}{Coded province of the mother's new/corrected place of residence. Refer to the provided codebook for actual province names. (Integer/Character, Coded)}
#'   \item{\code{new_mother_residence_mun}}{Coded municipality of the mother's new/corrected place of residence. Refer to the provided codebook for actual municipality names. (Integer/Character, Coded)}
#'   \item{\code{sex}}{The sex of the newborn. Coded as 1 for Male and 2 for Female. (Integer)}
#'   \item{\code{date_birth_day}}{The day of the newborn's birth. (Integer, 1-31)}
#'   \item{\code{date_birth_month}}{The month of the newborn's birth. (Integer, 1-12)}
#'   \item{\code{date_birth_year}}{The year of the newborn's birth. (Integer, specifically 2023)}
#'   \item{\code{place_type}}{The type of place where the birth occurred (e.g., hospital, home, clinic). (Character/Factor)}
#'   \item{\code{attendant}}{The type of person who attended the birth (e.g., doctor, nurse, midwife, traditional birth attendant). (Character/Factor)}
#'   \item{\code{birth_order}}{The birth order of the child (e.g., 1st, 2nd, 3rd child). (Integer)}
#'   \item{\code{birth_weight}}{The birth weight of the newborn. Units should be confirmed (e.g., grams). (Numeric)}
#'   \item{\code{children_still_living}}{The number of children the mother has who are still living. (Integer)}
#'   \item{\code{mother_age}}{The age of the mother at the time of birth. (Integer)}
#'   \item{\code{father_age}}{The age of the father at the time of birth. (Integer)}
#'   \item{\code{mother_citizenship}}{The citizenship of the mother. (Character/Factor)}
#'   \item{\code{father_citizenship}}{The citizenship of the father. (Character/Factor)}
#'   \item{\code{legitimacy_status}}{The legitimacy status of the child (e.g., legitimate, illegitimate). (Character/Factor)}
#'   \item{\code{registration_status}}{The status of the birth registration (e.g., registered, late registered). (Character/Factor)}
#' }
#' @source
#' Data collected from all registered births in the Philippines in 2023,
#' focusing specifically on births to underage mothers. Source likely the Philippine Statistics Authority (PSA).
#' @examples
#' # Load the dataset
#' data(underagemothersPH2023)
#'
#' # Display the first few rows
#' head(underagemothersPH2023)
#'
#' # Summarize mother's age
#' summary(underagemothersPH2023$mother_age)
#'
#' # Check the distribution of sex
#' table(underagemothersPH2023$sex)
#'
#' # Example of using the coded geographic data (assuming you have a lookup function for the codebook)
#' # For instance, if you have a 'get_region_name' function:
#' # underagemothersPH2023$old_place_birth_region_name <-
#' #   sapply(underagemothersPH2023$old_place_birth_region, get_region_name)
#' # table(underagemothersPH2023$old_place_birth_region_name)
#'
#' # Create a full date variable
#' # For this, you might need to ensure 'date_birth_day', 'date_birth_month', 'date_birth_year'
#' # are clean and ready for conversion.
#' # library(lubridate)
#' # underagemothersPH2023$birth_date <- make_date(
#' #   year = underagemothersPH2023$date_birth_year,
#' #   month = underagemothersPH2023$date_birth_month,
#' #   day = underagemothersPH2023$date_birth_day
#' # )
#' # summary(underagemothersPH2023$birth_date)
#'
#' @keywords datasets demographics birth Philippines underage mothers 2023
"underagemothersPH2023"

#' PISA 2022 Philippines Individual Student Scores for Core Subjects and Creativity
#'
#' This dataset contains individual student-level data from the Programme for
#' International Student Assessment (PISA) 2022 for the Philippines. It includes
#' the average scores across all PISA scoring methods for Mathematics, Reading,
#' Science, and the Creativity Test. The data is filtered specifically for
#' students in the Philippines.
#'
#' @format A data frame with an unspecified number of rows and 8 variables:
#' \describe{
#'   \item{\code{CNT}}{The country code for the Philippines ("PHL"). (Character)}
#'   \item{\code{CNTSCHID}}{Unique identifier for the school that the student attends within the Philippines. (Integer)}
#'   \item{\code{CNTSTUID}}{Unique identifier for the individual student within the Philippines. (Integer)}
#'   \item{\code{STRATUM}}{The local sampling stratum, representing the administrative region of the student's school within the Philippines (e.g., "NCR", "CALABARZON", "Region 1"). (Character/Factor)}
#'   \item{\code{MeanCrtScore}}{The mean score for the PISA 2022 Creativity Test. (Numeric, PISA scale score, OECD average ~33 points)}
#'   \item{\code{MeanMthScore}}{The mean Mathematics score, averaged across all PISA scoring methods. (Numeric, PISA scale score, OECD average ~500 points)}
#'   \item{\code{MeanReadScore}}{The mean Reading score, averaged across all PISA scoring methods. (Numeric, PISA scale score, OECD average ~500 points)}
#'   \item{\code{MeanSciScore}}{The mean Science score, averaged across all PISA scoring methods. (Numeric, PISA scale score, OECD average ~500 points)}
#' }
#' @details
#' PISA scores for Mathematics, Reading, and Science are scaled to have an
#' **OECD average of 500 points** with a standard deviation of 100 points.
#'
#' The PISA 2022 Creativity Test scores are scaled differently. The **OECD average
#' for Creative Thinking was 33 points**. For context, the highest-performing
#' country (Singapore) scored 41 points, while the Philippines had a mean score
#' of 14 points.
#'
#' @source
#' Data derived from the Programme for International Student Assessment (PISA) 2022
#' Creativity Test and main assessment. Conducted by the Organisation for Economic
#' Co-operation and Development (OECD). Data filtered to include only responses
#' from the Philippines.
#' @examples
#' # Load the dataset
#' data(PISAMathReadSciCRTSummaryScores)
#'
#' # Display the first few rows
#' head(PISAMathReadSciCRTSummaryScores)
#'
#' # Summarize the mean scores for different subjects
#' summary(PISAMathReadSciCRTSummaryScores$MeanMthScore)
#' summary(PISAMathReadSciCRTSummaryScores$MeanCrtScore)
#'
#' # Calculate the national average for a specific score
#' mean(PISAMathReadSciCRTSummaryScores$MeanReadScore, na.rm = TRUE)
#'
#' # Explore scores by region (STRATUM)
#' # If STRATUM is a factor:
#' # aggregate(MeanMthScore ~ STRATUM, data = PISAMathReadSciCRTSummaryScores, FUN = mean, na.rm = TRUE)
#' # If STRATUM needs to be converted to a factor first:
#' # PISAMathReadSciCRTSummaryScores$STRATUM_factor <- as.factor(PISAMathReadSciCRTSummaryScores$STRATUM)
#' # aggregate(MeanMthScore ~ STRATUM_factor, data = PISAMathReadSciCRTSummaryScores, FUN = mean, na.rm = TRUE)
#'
#' @keywords datasets education PISA 2022 Philippines scores creativity
"PISAMathReadSciCRTSummaryScores"
#' PISA 2022 Philippines Student Access to Devices and Internet
#'
#' This dataset contains individual student-level data from the Programme for
#' International Student Assessment (PISA) 2022 for the Philippines, focusing
#' on students' access to various digital devices, internet connectivity,
#' and household amenities. It provides insights into the home learning environment
#' and resources available to students.
#'
#' @format A data frame with an unspecified number of rows and 26 variables:
#' \describe{
#'   \item{\code{SchoolID}}{Unique identifier for the school that the student attends within the Philippines. (Integer)}
#'   \item{\code{StudentID}}{Unique identifier for the individual student within the Philippines. (Integer)}
#'   \item{\code{STRATUM}}{The local sampling stratum, representing the administrative region of the student's school within the Philippines (e.g., "NCR", "CALABARZON", "Region 1"). (Character/Factor)}
#'   \item{\code{StudentBIrthMonth}}{The birth month of the student. (Integer, 1-12)}
#'   \item{\code{StudentBirthYear}}{The birth year of the student. (Integer)}
#'   \item{\code{Gender}}{The reported gender of the student, with descriptive text labels (e.g., "Male", "Female"). (Factor)}
#'   \item{\code{OwnRoom}}{Indicates whether the student has their own room at home, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{ComputerLaptopPhoneForSchool}}{Indicates whether the student has a computer, laptop, or phone specifically for schoolwork, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{EducationalApps}}{Indicates whether the student has educational applications available, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{OwnPhonewithInternet}}{Indicates whether the student owns a phone with internet access, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{InternetAccess}}{Indicates whether the student has internet access at home, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{CarsVansOrTrucks}}{The number of cars, vans, or trucks available in the student's household. (Integer)}
#'   \item{\code{MopedOrMotorcycles}}{The number of mopeds or motorcycles available in the student's household. (Integer)}
#'   \item{\code{RoomsWBathShower}}{The number of rooms in the household with a bath or shower. (Integer)}
#'   \item{\code{RoomsWFlushToilet}}{The number of rooms in the household with a flush toilet. (Integer)}
#'   \item{\code{MusicalInstruments}}{Indicates whether there are musical instruments in the household, with descriptive text labels (e.g., "Yes", "No", "Few", "Many" - please specify if not just Yes/No). (Factor or Integer count)}
#'   \item{\code{ArtWorks}}{Indicates whether there are original artworks in the household, with descriptive text labels (e.g., "Yes", "No", "Few", "Many" - please specify if not just Yes/No). (Factor or Integer count)}
#'   \item{\code{VideoGame}}{Indicates whether there is a video game console in the household, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{SmartTV}}{Indicates whether there is a Smart TV in the household, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{Screens}}{The number of screens (e.g., computer monitors, tablets, smartphones) available in the household. (Integer)}
#'   \item{\code{TVs}}{The number of televisions in the household. (Integer)}
#'   \item{\code{PCs}}{The number of desktop personal computers in the household. (Integer)}
#'   \item{\code{LaptopNotebook}}{The number of laptops or notebooks in the household. (Integer)}
#'   \item{\code{Tablets}}{The number of tablets in the household. (Integer)}
#'   \item{\code{EbookReader}}{Indicates whether there is an E-book reader in the household, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{PhoneWInternet}}{Indicates whether there is a phone with internet access in the household (could be distinct from 'OwnPhonewithInternet'), with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#' }
#' @details
#' These variables provide proxies for socioeconomic status and access to digital
#' learning resources, which are often correlated with educational outcomes.
#' All categorical variables use descriptive text labels for ease of interpretation.
#'
#' @source
#' Data derived from the Programme for International Student Assessment (PISA) 2022
#' student background questionnaires. Conducted by the Organisation for Economic
#' Co-operation and Development (OECD). Data filtered to include only responses
#' from students in the Philippines.
#' @examples
#' # Load the dataset
#' data(PISAAccesToDeviceAndInternet)
#'
#' # Display the first few rows
#' head(PISAAccesToDeviceAndInternet)
#'
#' # Summarize access to internet
#' table(PISAAccesToDeviceAndInternet$InternetAccess)
#'
#' # Mean number of PCs per household
#' summary(PISAAccesToDeviceAndInternet$PCs)
#'
#' # Explore differences in device access by Gender
#' table(PISAAccesToDeviceAndInternet$Gender, PISAAccesToDeviceAndInternet$OwnPhonewithInternet)
#'
#' @keywords datasets education PISA 2022 Philippines technology access home environment
"PISAAccesToDeviceAndInternet"

#' PISA 2022 Philippines Student School Attendance and History
#'
#' This dataset contains individual student-level data from the Programme for
#' International Student Assessment (PISA) 2022 for the Philippines, focusing
#' on students' school attendance patterns, educational history (e.g., grade repetition),
#' and reported reasons for missing school. It offers insights into factors affecting
#' school engagement and completion.
#'
#' @format A data frame with an unspecified number of rows and 29 variables:
#' \describe{
#'   \item{\code{CNTSCHID}}{Unique identifier for the school that the student attends within the Philippines. (Integer)}
#'   \item{\code{CNTSTUID}}{Unique identifier for the individual student within the Philippines. (Integer)}
#'   \item{\code{STRATUM}}{The local sampling stratum, representing the administrative region of the student's school within the Philippines (e.g., "NCR", "CALABARZON", "Region 1"). (Character/Factor)}
#'   \item{\code{ST003D02T}}{PISA internal variable for student birth month. (Integer, 1-12)}
#'   \item{\code{ST003D03T}}{PISA internal variable for student birth year. (Integer)}
#'   \item{\code{ST004D01T}}{PISA internal variable, typically related to student gender or another demographic. (Character/Factor, please confirm)}
#'   \item{\code{YearsEnrolled}}{The total number of years the student has been enrolled in school. (Integer)}
#'   \item{\code{AgeAtKinder}}{The age of the student when they started Kindergarten. (Integer)}
#'   \item{\code{AgeAtPrimary}}{The age of the student when they started Primary school. (Integer)}
#'   \item{\code{RepeatedPrimary}}{Indicates whether the student has repeated a grade level in Primary school. (Logical/Factor, e.g., "Yes", "No")}
#'   \item{\code{RepeatedLowerSecondary}}{Indicates whether the student has repeated a grade level in Lower Secondary school. (Logical/Factor, e.g., "Yes", "No")}
#'   \item{\code{RepeatedUpperSecondary}}{Indicates whether the student has repeated a grade level in Upper Secondary school. (Logical/Factor, e.g., "Yes", "No")}
#'   \item{\code{MissedSchoolfor3mosInKinder}}{Indicates if the student missed school for 3 months or more in Kindergarten. (Logical/Factor, e.g., "Yes", "No")}
#'   \item{\code{MissSchoolfor3MosInLowerSecond}}{Indicates if the student missed school for 3 months or more in Lower Secondary school. (Logical/Factor, e.g., "Yes", "No")}
#'   \item{\code{MissSchoolin3mosUpperSecon}}{Indicates if the student missed school for 3 months or more in Upper Secondary school. (Logical/Factor, e.g., "Yes", "No")}
#'   \item{\code{MissSchoolBoredom}}{Reason for missing school: due to boredom. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolSuspension}}{Reason for missing school: due to suspension. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolPregnant}}{Reason for missing school: due to pregnancy. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolTranspo}}{Reason for missing school: due to transportation issues. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolNurseFamily}}{Reason for missing school: to care for a sick family member. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolFamilyBusinessLand}}{Reason for missing school: for family business or land-related work. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolWork}}{Reason for missing school: due to employment/work. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolSick}}{Reason for missing school: due to personal illness. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolNotSafe}}{Reason for missing school: feeling unsafe at school. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolNonPayment}}{Reason for missing school: due to non-payment of school fees. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{MissSchoolNaturalDisaster}}{Reason for missing school: due to natural disaster. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{NumOfMissSchooldays}}{The reported number of days missed from school within a specific reference period (e.g., past month/year). (Integer)}
#'   \item{\code{CuttingClasses}}{Indicates whether the student has cut classes. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#'   \item{\code{Late}}{Indicates whether the student has been late for school. (Logical/Factor, e.g., "Yes", "No" or frequency levels)}
#' }
#' @details
#' This dataset is crucial for analyzing factors related to school engagement,
#' dropout risks, and educational barriers in the Philippine context.
#' The "MissedSchool" variables are generally indicators of whether the event
#' occurred, while others might capture frequency.
#'
#' @source
#' Data derived from the Programme for International Student Assessment (PISA) 2022
#' student questionnaires. Conducted by the Organisation for Economic
#' Co-operation and Development (OECD). Data filtered to include only responses
#' from students in the Philippines.
#' @examples
#' # Load the dataset
#' data(PISASkippingSchool)
#'
#' # Display the first few rows
#' head(PISASkippingSchool)
#'
#' # Summarize school repetition rates
#' table(PISASkippingSchool$RepeatedPrimary)
#'
#' # Analyze reasons for missing school
#' table(PISASkippingSchool$MissSchoolBoredom)
#'
#' # Distribution of days missed
#' summary(PISASkippingSchool$NumOfMissSchooldays)
#'
#' @keywords datasets education PISA 2022 Philippines school attendance dropout
"PISASkippingSchool"

#' PISA 2022 Philippines Student Home Environment and Family Background
#'
#' This dataset contains individual student-level data from the Programme for
#' International Student Assessment (PISA) 2022 for the Philippines, focusing
#' on aspects of the student's home environment, including household book ownership,
#' parental education levels, economic perceptions, and migration background.
#'
#' @format A data frame with an unspecified number of rows and 36 variables:
#' \describe{
#'   \item{\code{CNTSCHID}}{Unique identifier for the school that the student attends within the Philippines. (Integer)}
#'   \item{\code{CNTSTUID}}{Unique identifier for the individual student within the Philippines. (Integer)}
#'   \item{\code{STRATUM}}{The local sampling stratum, representing the administrative region of the student's school within the Philippines (e.g., "NCR", "CALABARZON", "Region 1"). (Character/Factor)}
#'   \item{\code{ST003D02T}}{PISA internal variable for student birth month. (Integer, 1-12)}
#'   \item{\code{ST003D03T}}{PISA internal variable for student birth year. (Integer)}
#'   \item{\code{ST004D01T}}{PISA internal variable for student gender, with descriptive text labels (e.g., "Male", "Female"). (Factor)}
#'   \item{\code{Books}}{Total number of books in the home. Value labels indicate ranges (e.g., "0-10", "11-50", "50+"). (Factor, with descriptive labels)}
#'   \item{\code{BooksReligious}}{Presence or quantity of religious books in the home. Value labels provide descriptive text (e.g., "Yes", "No", or ranges). (Factor)}
#'   \item{\code{BooksClassical}}{Presence or quantity of classical literature books in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{BooksContemporary}}{Presence or quantity of contemporary fiction/non-fiction books in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{BooksScience}}{Presence or quantity of science-related books in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{BooksArtsMusicDesign}}{Presence or quantity of books on arts, music, or design in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{BooksTechnical}}{Presence or quantity of technical or professional books in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{BooksDictionaries}}{Presence or quantity of dictionaries in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{BooksForSchoolwork}}{Presence or quantity of books specifically for schoolwork in the home. Value labels provide descriptive text. (Factor)}
#'   \item{\code{Siblings}}{The number of siblings the student has. (Integer)}
#'   \item{\code{HighestSchoolMother}}{The highest level of education attained by the mother, using PISA standard categorical levels for educational attainment. (Factor)}
#'   \item{\code{PHDMom}}{Indicator for whether the mother has a PhD or equivalent degree, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{MAMom}}{Indicator for whether the mother has a Master's degree or equivalent, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{BAMom}}{Indicator for whether the mother has a Bachelor's degree or equivalent, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{ShortCollegeMom}}{Indicator for whether the mother has a short-cycle tertiary education (e.g., associate's degree, diploma), with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{PostSecondaryMom}}{Indicator for whether the mother has completed non-tertiary post-secondary education, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{HighestSchoolFather}}{The highest level of education attained by the father, using PISA standard categorical levels for educational attainment. (Factor)}
#'   \item{\code{PHDDad}}{Indicator for whether the father has a PhD or equivalent degree, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{MADad}}{Indicator for whether the father has a Master's degree or equivalent, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{BADad}}{Indicator for whether the father has a Bachelor's degree or equivalent, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{ShortCollegeDad}}{Indicator for whether the father has a short-cycle tertiary education, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{PostSecondaryDad}}{Indicator for whether the father has completed non-tertiary post-secondary education, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{MissedEating}}{Indicates whether the student has missed eating due to lack of food or money, with descriptive text labels (e.g., "Yes", "No"). (Factor)}
#'   \item{\code{FamilyPerceptionEconomic}}{Student's perception of their family's economic well-being. Value labels describe economic status (e.g., "Well off", "Average", "Struggling"). (Factor)}
#'   \item{\code{PersonalPerception30}}{Student's perceived personal status (e.g., financial, social) by the age of 30. Value labels describe perception levels. (Factor)}
#'   \item{\code{CountryOfBirth}}{The country of birth of the student. (Character/Factor)}
#'   \item{\code{CountryOfBirthMom}}{The country of birth of the mother. (Character/Factor)}
#'   \item{\code{CountryOfBirthDad}}{The country of birth of the father. (Character/Factor)}
#'   \item{\code{AgeonPhil}}{The student's age when they first arrived in the Philippines. (Integer)}
#'   \item{\code{LanguageSpokenHome}}{Indicates whether the language primarily spoken at home is the same as the test language (e.g., "Yes", "No"). (Factor)}
#' }
#' @details
#' This dataset offers valuable insights into the socio-economic and cultural capital
#' available to students in their home environments, which can significantly influence
#' their educational experiences and outcomes. All categorical variables use descriptive
#' text labels for ease of interpretation.
#'
#' @source
#' Data derived from the Programme for International Student Assessment (PISA) 2022
#' student and parent questionnaires. Conducted by the Organisation for Economic
#' Co-operation and Development (OECD). Data filtered to include only responses
#' from students in the Philippines.
#' @examples
#' # Load the dataset
#' data(PISABooksFamilyHighesteducation)
#'
#' # Display the first few rows
#' head(PISABooksFamilyHighesteducation)
#'
#' # Summarize the distribution of books in homes
#' table(PISABooksFamilyHighesteducation$Books)
#'
#' # Analyze highest education level of mothers
#' table(PISABooksFamilyHighesteducation$HighestSchoolMother)
#'
#' # Explore family's economic perception
#' table(PISABooksFamilyHighesteducation$FamilyPerceptionEconomic)
#'
#' # Analyze language spoken at home relative to the test language
#' table(PISABooksFamilyHighesteducation$LanguageSpokenHome)
#'
#' @keywords datasets education PISA 2022 Philippines family background socioeconomic
"PISABooksFamilyHighesteducation"

#' PISA 2022 Philippines Student Perceptions of Teacher Relations and School Safety
#'
#' This dataset contains individual student-level data from the Programme for
#' International Student Assessment (PISA) 2022 for the Philippines. It focuses
#' on students' perceptions regarding their relationships with teachers, the
#' overall school climate, and feelings of safety and belonging within the school
#' environment. The variable names have been re-coded for clarity and ease of use.
#'
#' @format A data frame with an unspecified number of rows and 29 variables:
#' \describe{
#'   \item{\code{SchoolID}}{Unique identifier for the school that the student attends within the Philippines. (Integer)}
#'   \item{\code{StudentID}}{Unique identifier for the individual student within the Philippines. (Integer)}
#'   \item{\code{BelongSchool}}{Student's agreement to "I feel like I belong at school." (Factor, e.g., "Strongly agree", "Agree", "Disagree", "Strongly disagree")}
#'   \item{\code{TeachersCare}}{Student's agreement to "Teachers are interested in students' well-being." (Factor)}
#'   \item{\code{TeachersFair}}{Student's agreement to "My teachers treat me fairly." (Factor)}
#'   \item{\code{FeelSafeSchool}}{Student's agreement to "I feel safe at school." (Factor)}
#'   \item{\code{StudentsFriendly}}{Student's agreement to "Other students are friendly to me." (Factor)}
#'   \item{\code{MakeFriendsEasy}}{Student's agreement to "I make friends easily at school." (Factor)}
#'   \item{\code{HappySchool}}{Student's agreement to "I am happy at school." (Factor)}
#'   \item{\code{TeachersHelpLearn}}{Student's agreement to "My teachers are good at helping me learn." (Factor)}
#'   \item{\code{TeacherBelievesMe}}{Student's perception of teacher support: "The teacher believes in me." (Factor, e.g., "Every lesson", "Most lessons", "Some lessons", "Never or hardly ever")}
#'   \item{\code{TeacherHelpsLearning}}{Student's perception: "The teacher helps me with my learning." (Factor)}
#'   \item{\code{TeacherIndividualHelp}}{Student's perception: "The teacher gives me individual help when I need it." (Factor)}
#'   \item{\code{TeacherExtraHelp}}{Student's perception: "The teacher provides me with extra help when I need it." (Factor)}
#'   \item{\code{TeacherListensIdeas}}{Student's perception: "The teacher listens to my ideas." (Factor)}
#'   \item{\code{TeacherClearExpect}}{Student's perception: "The teacher has clear expectations for my learning." (Factor)}
#'   \item{\code{TeachersDontListen}}{Student's perception: "Teachers don't listen to what students have to say." (Factor, e.g., "Agree", "Disagree" or frequency)}
#'   \item{\code{StudentsDontGetAlong}}{Student's perception: "Students don't get along with most teachers." (Factor)}
#'   \item{\code{SchoolPositiveAtmosph}}{Student's perception: "The school has a positive atmosphere." (Factor)}
#'   \item{\code{StudentsBullied}}{Student's perception: "Students are often bullied at school." (Factor)}
#'   \item{\code{StudentsSkipClasses}}{Student's perception: "Students often skip classes." (Factor)}
#'   \item{\code{StudentsAbsent}}{Student's perception: "Students are often absent from school." (Factor)}
#'   \item{\code{StudentsCooperate}}{Student's agreement: "Students cooperate with each other." (Factor)}
#'   \item{\code{StudentsRespectTeachers}}{Student's agreement: "Students respect their teachers." (Factor)}
#'   \item{\code{StudentsListenTeachers}}{Student's agreement: "Students listen to what the teacher says." (Factor)}
#'   \item{\code{AfraidHurtSchool}}{Student's agreement/perception: "I am afraid of being hurt at school." (Factor)}
#'   \item{\code{AfraidBullySchool}}{Student's agreement/perception: "I am afraid of being bullied at school." (Factor)}
#'   \item{\code{SafeWalkToFromSchool}}{Student's agreement/perception: "I feel safe walking to and from school." (Factor)}
#'   \code{SafeInClassroom}}{Student's agreement/perception: "I feel safe in my classroom." (Factor)}
#' }
#' @details
#' These variables provide a detailed view of the non-cognitive aspects of the
#' school environment as perceived by students in the Philippines. They are
#' essential for understanding student well-being, engagement, and the quality
#' of the school climate. Response categories for agreement items are typically
#' Likert-type scales (e.g., "Strongly agree" to "Strongly disagree"), while
#' perception of teacher actions often use frequency scales (e.g., "Every lesson"
#' to "Never or hardly ever").
#'
#' @source
#' Data derived from the Programme for International Student Assessment (PISA) 2022
#' student questionnaires. Conducted by the Organisation for Economic
#' Co-operation and Development (OECD). Data filtered to include only responses
#' from students in the Philippines.
#' @examples
#' # Load the dataset
#' data(PISATeacherRelationSafety)
#'
#' # Display the first few rows
#' head(PISATeacherRelationSafety)
#'
#' # Summarize student perceptions of safety at school
#' table(PISATeacherRelationSafety$FeelSafeSchool)
#'
#' # Analyze teacher support
#' table(PISATeacherRelationSafety$TeacherBelievesMe)
#'
#' # Cross-tabulate bullying perception with sense of belonging
#' table(PISATeacherRelationSafety$AfraidBullySchool, PISATeacherRelationSafety$BelongSchool)
#'
#' @keywords datasets education PISA 2022 Philippines school climate teacher relations safety
"PISATeacherRelationSafety"
