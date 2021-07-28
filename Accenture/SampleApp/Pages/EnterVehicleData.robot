*** Settings ***
Library           Selenium2Library
Resource          Environment.robot

*** Variables ***

${makeLocator}   make
${modelLocator}   model
${cylindercapacityLocator}   cylindercapacity
${engineperformanceLocator}   engineperformance
${dateofmanufactureLocator}   dateofmanufacture
${numberofseatsLocator}   numberofseats
${yesLocator}    //*[@id='righthanddriveyes']/following-sibling::span
${noLocator}    //*[@id='righthanddriveno']/following-sibling::span
${numberofseatsmotorcycleLocator}   numberofseatsmotorcycle
${fuelLocator}   fuel
${payloadLocator}   payload
${totalweightLocator}   totalweight
${listpriceLocator}   listprice
${licenseplatenumberLocator}   licenseplatenumber
${annualmileageLocator}   annualmileage
${nextenterinsurantdataLocator}   nextenterinsurantdata


*** Keywords ***

Select Item in Make
        Select From List By Label   ${makeLocator}  ${Make}

Select Item in Model
        Select From List By Label   ${modelLocator}   ${Model}

Cylinder, Engine and Date
        Input text   ${cylindercapacityLocator}    ${CylinderCapacity}
        Input text   ${engineperformanceLocator}  ${EnginePerformance}
        Input text   ${dateofmanufactureLocator}  ${DateOfManufacture}

Number of Seats
        Select From List By Label   ${numberofseatsLocator}  ${NumberOfSeats}

Right Hand Drive
        Run Keyword if  "${RightHandDrive}"=="yes"  click element   ${yesLocator}
        Run Keyword if  "${RightHandDrive}"=="no"  click element    ${noLocator}

Number of Seats Motor Cycle and Fuel Type
        Select From List By Label  ${numberofseatsmotorcycleLocator}  ${NumSeatsMotorcycle}
        Select From List By Label  ${fuelLocator}  ${Fuel}

Fill in the Blank Inputs Vehicle Final
        Input text    ${payloadLocator}  ${Payload}
        Input text    ${totalweightLocator}   ${TotalWeight}
        Input text    ${listpriceLocator}   ${ListPrice}
        Input text    ${licenseplatenumberLocator}   ${LicensePlateNumber}
        Input text    ${annualmileageLocator}    ${AnnualMileage}

Next Button Insurant
       click button   ${nextenterinsurantdataLocator}


