*** Settings ***

Resource   ../Keywords/Keywords.robot

Test Setup   setup

Test Teardown   exit

*** Test Cases ***

SampleApp
    [Documentation]  This test executes a new user filling in some formes on Tricentis web site.
    ...              And geting a sending e-mail success message in the end.
    Given Tricentis site is opened
    When user fill in Enter Vehicle Data Form
    And user fill in Enter Insurant Data Form
    And user fill in Enter Product Data Form
    And user select Price Option and Check
    And user fill information and Send Quote
    Then a sending e-mail success message is shown


