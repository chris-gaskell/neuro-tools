library(reactable)
library(htmltools)

# Sample data with tribble and dates as per the previous structure
set.seed(123)
start_date <- as.Date("2022-01-01")
end_date <- Sys.Date()
random_dates <- sample(seq.Date(from = start_date, to = end_date, by = "day"), size = 100, replace = TRUE)

resources <- tribble(
  ~Name, ~Description, ~Medium, ~Contributors, ~Subject, ~Group, ~Date_Added,
  "NeuroPsych Insights", "A comprehensive guide to understanding neuropsychology basics.", "book", "Dr. John Smith", "research", "brain injury", random_dates[1],
  "Cognitive Health Podcast", "Weekly podcast discussing the latest in neuropsychology.", "podcast", "Jane Doe", "practice", "none", random_dates[2],
  "Functional Epilepsy Test", "Test designed to assess functional seizures.", "test", "Dr. Alice Brown", "research", "epilepsy", random_dates[3],
  "NeuroData Series", "Dataset of brain scan results for neuropsychological research.", "data", "Emily Davis", "research", "none", random_dates[4],
  "Practice Development Journal", "Journal for neuropsychological practitioners.", "article", "Michael Green", "service development", "none", random_dates[5],
  "Brain Health Assessment", "Assessment tool for brain injury patients.", "test", "Dr. Peter Parker", "practice", "brain injury", random_dates[17]
)

# Professional and functional reactable table
reactable(
  resources,
  # Pagination
  pagination = TRUE,
  defaultPageSize = 10,
  
  # Enable filtering for all columns
  filterable = TRUE,
  
  # Table appearance settings
  bordered = TRUE,       # Add borders around the table
  striped = TRUE,        # Add striped rows for better readability
  highlight = TRUE,      # Highlight rows when hovered
  wrap = FALSE          # Prevent text wrapping in columns
)

