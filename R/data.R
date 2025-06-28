# mydataPKG/R/data.R

#' Philippine Vital Statistic Records for Underaged Mothers
#'
#' The dataset `underagemothersPH2023` contains all birth records with mothers aged 17 and below based off all registered births in the Philippines in 2023.
#' This dataset includes information about [the demographics of underaged mothers including their location, husband's nationality and other infant related records, like birthweight.].
#'
#' @format A data frame with 28527 rows and 28 variables:
#' \describe{
#'   \item{place_of_birth_region}{`numeric`, geocode identifier for birth region.codebook is at VSRBCodes.xlsx}
#'   \item{place_of_birth_mun}{`numeric`, geocode identifier for the munipality of the birthplace.}
#'   \item{place_of_birth_prov}{`numeric`, geocode identifier for the province of the birthplace}
#'   \item{mother_residence_region}{`numeric`, total amount spent by the customer.}
#' }
#' @source Data was collected from [mention source, e.g., "internal company records" or provide a URL].
#'         \url{https://example.com/source_for_dataset_a}
#' @examples
#' data(my_dataset_a)
#' head(my_dataset_a)
#' summary(my_dataset_a$purchase_amount)
#' hist(my_dataset_a$age)
"my_dataset_a" # <--- IMPORTANT: This links the comments to the 'my_dataset_a' object

#' My Second Related Dataset
#'
#' This dataset, `my_dataset_b`, provides details on product categories and sales
#' for items referenced in `my_dataset_a`. It serves as a lookup table for product information.
#'
#' @format A data frame (or tibble) with P rows and Q variables:
#' \describe{
#'   \item{product_id}{`character`, unique identifier for each product.}
#'   \item{category}{`factor`, the product's main category (e.g., "Electronics", "Clothing", "Books").}
#'   \item{price_per_unit}{`numeric`, average price of the product.}
#'   \item{stock_quantity}{`integer`, current inventory level.}
#' }
#' @source Data was compiled from [mention source, e.g., "product inventory system" or provide a URL].
#'         \url{https://example.com/source_for_dataset_b}
#' @examples
#' data(my_dataset_b)
#' head(my_dataset_b)
#' # Example of joining with the first dataset (if applicable)
#' # library(dplyr)
#' # joined_data <- left_join(my_dataset_a, my_dataset_b, by = c("product_id_col_in_a" = "product_id"))
"my_dataset_b" # <--- IMPORTANT: This links the comments to the 'my_dataset_b' object

#' My Third Time-Series Dataset
#'
#' This dataset, `my_dataset_c`, tracks daily website traffic over the past year.
#' It includes metrics like daily visitors and page views.
#'
#' @format A data frame (or tibble) with R rows and S variables:
#' \describe{
#'   \item{date}{`Date` object, the specific date of the observation.}
#'   \item{daily_visitors}{`integer`, number of unique visitors on that day.}
#'   \item{page_views}{`integer`, total page views for the day.}
#'   \item{bounce_rate}{`numeric`, percentage of visitors who leave after viewing only one page.}
#' }
#' @source Data extracted from [mention source, e.g., "Google Analytics" or provide a URL].
#'         \url{https://example.com/source_for_dataset_c}
#' @examples
#' data(my_dataset_c)
#' head(my_dataset_c)
#' plot(my_dataset_c$date, my_dataset_c$daily_visitors, type = "l",
#'      main = "Daily Website Visitors", xlab = "Date", ylab = "Visitors")
"my_dataset_c" # <--- IMPORTANT: This links the comments to the 'my_dataset_c' object
