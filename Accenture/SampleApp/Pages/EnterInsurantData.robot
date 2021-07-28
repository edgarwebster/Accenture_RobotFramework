*** Settings ***
Library           Selenium2Library
Resource          Environment.robot

*** Variables ***

${firstnameLocator}  firstname
${lastnameLocator}  lastname
${birthdateLocator}  birthdate
${maleLocator}  //*[@id='gendermale']/following-sibling::span
${femaleLocator}  //*[@id='genderfemale']/following-sibling::span
${streetaddressLocator}  streetaddress
${countryLocator}  country
${zipcodeLocator}  zipcode
${cityLocator}  city
${occupationLocator}  occupation
${speedingLocator}  //*[@id='speeding']/following-sibling::span
${bungeeJumpingLocator}  //*[@id='bungeejumping']/following-sibling::span
${cliffDivingLocator}  //*[@id='cliffdiving']/following-sibling::span
${skydivingLocator}  //*[@id='skydiving']/following-sibling::span
${otherLocator}  //*[@id='other']/following-sibling::span
${websiteLocator}  website
${nextenterproductdataLocator}  nextenterproductdata

*** Keywords ***
Name and Birthday
        Input text   ${firstnameLocator}   ${firstname}
        Input text   ${lastnameLocator}   ${lastname}
        Input text   ${birthdateLocator}   ${birthdate}


Gender
        Run keyword if  "${gender}"=="male"  click element  ${maleLocator}
        Run keyword if  "${gender}"=="female"   click element  ${femaleLocator}

Address
        Input text   ${streetaddressLocator}  ${streetaddress}
        Select From List By Label  ${countryLocator}  ${country}
        Input text   ${zipcodeLocator}  ${zipcode}
        Input text   ${cityLocator}   ${city}

Occupation, Hobbies and Website
        Select From List By Label  ${occupationLocator}  ${occupation}
        Run keyword if  "${hobbie}"=="speeding"  click element  ${speedingLocator}
        Run keyword if  "${hobbie}"=="bungee jumping"  click element  ${bungeeJumpingLocator}
        Run keyword if  "${hobbie}"=="cliff diving"  click element  ${cliffDivingLocator}
        Run keyword if  "${hobbie}"=="skydiving"  click element  ${skydivingLocator}
        Run keyword if  "${hobbie}"=="other"  click element  ${otherLocator}
        Input text   ${websiteLocator}  ${website}


Next Button Product Data
       click button   ${nextenterproductdataLocator}


