*** Settings ***
Library           Selenium2Library
Resource          Environment.robot
*** Keywords ***
Open Site
        log to console   Starting the test!
        Open Browser            ${URLwelcome}    ${Browser}

Tricentis site is opened
     wait until page contains  Home   60
