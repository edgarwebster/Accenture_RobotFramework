*** Settings ***
Library           Selenium2Library
Resource          Environment.robot

*** Variables ***

${silverLocator}   //*[@id='selectsilver']/following-sibling::span
${goldLocator}   //*[@id='selectgold']/following-sibling::span
${platinumLocator}   //*[@id='selectplatinum']/following-sibling::span
${ultimateLocator}   //*[@id='selectultimate']/following-sibling::span
${nextsendquoteLocator}  nextsendquote

*** Keywords ***
Select Price Option
        Run keyword if  "${priceOption}"=="silver"   click element   ${silverLocator}
        Run keyword if  "${priceOption}"=="gold"      click element  ${goldLocator}
        Run keyword if  "${priceOption}"=="platinum"  click element  ${platinumLocator}
        Run keyword if  "${priceOption}"=="ultimate"  click element  ${ultimateLocator}

Next Button Send Quote
      Wait Until Element Is Visible   ${nextsendquoteLocator}
      click button   ${nextsendquoteLocator}



