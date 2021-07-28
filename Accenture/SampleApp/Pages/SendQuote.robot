*** Settings ***
Library           Selenium2Library
Resource          Environment.robot

*** Variables ***
${emailLocator}   email
${phoneLocator}   phone
${usernameLocator}   username
${passwordLocator}   password
${confirmpasswordLocator}   confirmpassword
${commentsLocator}   Comments
${sendemailLocator}   sendemail
${showSweetAlertLocator}  //*[@class='sweet-alert showSweetAlert visible']//h2

*** Keywords ***
Email and Phone
        input text   ${emailLocator}   ${email}
        input text   ${phoneLocator}   ${phone}

Username and Password
        input text   ${usernameLocator}    ${username}
        input password  ${passwordLocator}   ${password}
        input password  ${confirmpasswordLocator}   ${confirmpassword}

Comments
        input text  ${commentsLocator}  ${Comments}

Next Button Send Email
      click button   ${sendemailLocator}


Sending e-mail success
    ${status}  run keyword and return status  wait until page contains  ${message}  60
    Run keyword if  ${status}  log to console  Message found!
    ...         ELSE   fail