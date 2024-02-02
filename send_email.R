library(blastula)

my_email_object <- compose_email(
  body = 
    "Hello,
  
  Please receive the Q4 2023 EPI eHMIS report
  
  Cheers,
  
  GEEKS" )

my_email_object |> 
  #add_attachment(file = "eHMIS-EPI-DQ-report.pdf") |> 
  smtp_send(
    from = "ugandarug@gmail.com",
    to = "amanyiraho@gmail.com",
    subject = "Q4 2023 EPI eHMIS report",
    credentials = creds_envvar( user = "ugandarug@gmail.com",
                                pass_envvar = "SMTP_PASSWORD",
                                provider = "gmail"
                              )
    
  ) 
