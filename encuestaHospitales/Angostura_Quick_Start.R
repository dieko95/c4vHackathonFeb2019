####################################
### Angostura Connection Snippet#####
######################################
# https://cloud.google.com/ai-platform/notebooks/docs/use-r-bigquery



if (!require("bigrquery")) install.packages("bigrquery")
if (!require("gargle")) install.packages("gargle")



bq_auth(bq_auth(
  path = 'https://storage.googleapis.com/angostura-public/hult-hackathon-key.json'
))

# Set your query
sql <- 'SELECT * from `angostura_dev.eh_health_survey_response`'

# Run the query and store the data in a dataframe
df <- query_exec(sql, 'angostura_dev', use_legacy_sql = FALSE)

# Print the query result
df