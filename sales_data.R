# Generate sample sales data
sales_data <- data.frame(
  month = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October"),
  amount = c(1000, 1500, 1200, 1800, 1350, 1600, 1250, 1400, 1650, 1100)
)

# Save sales data to CSV file
write.csv(sales_data, "sales_data.csv", row.names = FALSE)



