# Project: Analyzing Sales Data

# Function to calculate total sales
calculate_total_sales <- function(sales_data) {
  total_sales <- sum(sales_data$amount)
  return(total_sales)
}

# Function to calculate average sales per month
calculate_average_sales <- function(sales_data) {
  average_sales <- mean(sales_data$amount)
  return(average_sales)
}

# Function to visualize sales data
visualize_sales_data <- function(sales_data) {
  library(ggplot2)
  ggplot(sales_data, aes(x = month, y = amount, fill = month)) +
    geom_bar(stat = "identity") +
    labs(title = "Monthly Sales Data", x = "Month", y = "Amount") +
    theme_minimal() +
    scale_fill_brewer(palette = "Set3")  # Color palette for fill
}

# Main function
main <- function() {
  # Load sales data from CSV file
  sales_data <- read.csv("sales_data.csv")
  
  # Display the sales data
  cat("Sales Data:\n")
  print(sales_data)
  
  # Calculate and display the total sales
  total_sales <- calculate_total_sales(sales_data)
  cat("\nTotal Sales:", total_sales, "\n")
  
  # Calculate and display the average sales per month
  average_sales <- calculate_average_sales(sales_data)
  cat("Average Sales per Month:", average_sales, "\n")
  
  # Visualize the sales data
  visualize_sales_data(sales_data)
}

# Call the main function to run the project
main()




