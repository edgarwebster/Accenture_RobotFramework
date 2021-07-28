*** Settings ***
Library           Selenium2Library
Resource  ../Pages/Home.robot
Resource  ../Pages/EnterVehicleData.robot
Resource  ../Pages/EnterInsurantData.robot
Resource  ../Pages/EnterProductData.robot
Resource  ../Pages/SelectPriceOption.robot
Resource  ../Pages/SendQuote.robot

*** Keywords ***
setup
    Open Site
exit
    log to console   Starting teardown!
    close all browsers

user fill in Enter Vehicle Data Form
    [Documentation]  This keyword is intended for fill in Vehicle Data Form.
    Select Item in Make
    Select Item in Model
    Cylinder, Engine and Date
    Number of Seats
    Right Hand Drive
    Number of Seats Motor Cycle and Fuel Type
    Fill in the Blank Inputs Vehicle Final
    Next Button Insurant

user fill in Enter Insurant Data Form
    Name and Birthday
    Gender
    Address
    Occupation, Hobbies and Website
    Next Button Product Data

user fill in Enter Product Data Form
    Start Date
    Insurance Sum, Merit Rating and Damage Insurance
    Optional Products
    Courtesy Car
    Next Button Select Price

user select Price Option and Check
    Select Price Option
    Next Button Send Quote

user fill information and Send Quote
    Email and Phone
    Username and Password
    Comments
    Next Button Send Email

a sending e-mail success message is shown
    Sending e-mail success
