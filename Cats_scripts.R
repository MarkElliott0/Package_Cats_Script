# install.packages("devtools")

library(devtools)

# devtools::install_github("klutometis/roxygen")

library(roxygen2)

# set the working directory  
setwd("C:/Users/MarkE/OneDrive/Desktop")
create("cats")

## Cat function 
cat_function <- function(love=TRUE){
  if(love==TRUE){
    print("I love cats!")
  }
  else {
    print("I am not a cool person.")
  }
}

# Add description 

#' A Cat Function
#'
#' This function allows you to express your love of cats.
#' @param love Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' cat_function()

cat_function <- function(love=TRUE){
  if(love==TRUE){
    print("I love cats!")
  }
  else {
    print("I am not a cool person.")
  }
}


setwd("./cats")
document()

# Run the cat function from the parent directory to install
setwd("..")
install("cats")

# Install the cats to github - using the github username.
install_github('cats','github_username')
