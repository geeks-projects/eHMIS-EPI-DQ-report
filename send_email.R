library(blastula)


# read environment variables ----------------------------------------------
EMAIL_SENDER <- Sys.getenv("EMAIL_SENDER")
SMTP_PASSWORD <- Sys.getenv("SMTP_PASSWORD")
EMAIL_RECIPIENT <- Sys.getenv("EMAIL_RECIPIENT")

# set gmail credentials ---------------------------------------------------
credentials <- creds_envvar(
  user = EMAIL_SENDER,
  pass_envvar = "SMTP_PASSWORD",
  provider = "gmail",
  host = NULL,
  port = NULL,
  use_ssl = TRUE
)


my_email_object <- compose_email(
  body = 
    "Hello,
  
  Please receive the Q4 2023 EPI eHMIS report
  
  Cheers,
  
  GEEKS" )



my_email_object |> 
  #add_attachment(file = "eHMIS-EPI-DQ-report.pdf") |> 
  smtp_send(
    from = EMAIL_SENDER,
    to = EMAIL_RECIPIENT,
   # from = "ugandarug@gmail.com", # i did user quotes
   # to = "amanyiraho@gmail.com",
    subject = "Q4 2023 EPI eHMIS report",
    credentials = credentials, 
    verbose = TRUE
    
  ) 
