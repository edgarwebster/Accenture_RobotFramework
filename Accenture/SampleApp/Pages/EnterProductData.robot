*** Settings ***
Library           Selenium2Library
Resource          Environment.robot

*** Variables ***
${startdateLocator}   startdate
${insurancesumLocator}   insurancesum
${meritratingLocator}   meritrating
${damageinsuranceLocator}   damageinsurance
${EuroProtectionLocator}   //*[@id='EuroProtection']/following-sibling::span
${LegalDefenseInsuranceLocator}   //*[@id='LegalDefenseInsurance']/following-sibling::span
${courtesycarLocator}   courtesycar
${nextselectpriceoptionLocator}   nextselectpriceoption


*** Keywords ***
Start Date
        Input text   ${startdateLocator}  ${startdate}

Insurance Sum, Merit Rating and Damage Insurance
        Select From List By Label   ${insurancesumLocator}   ${insurancesum}
        Select From List By Label   ${meritratingLocator}    ${meritrating}
        Select From List By Label   ${damageinsuranceLocator}  ${damageinsurance}

Optional Products
        Run keyword if  "${optionalProducts}"=="Euro Protection"  click element    ${EuroProtectionLocator}
        Run keyword if  "${optionalProducts}"=="Legal Defense Insurance"  click element    ${LegalDefenseInsuranceLocator}

Courtesy Car
        Select From List By Label   ${courtesycarLocator}  ${courtesycar}

Next Button Select Price
       click button   ${nextselectpriceoptionLocator}


