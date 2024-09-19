*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Validate Age Test Case
    Validate Age    16
    Validate Age    20

*** Keywords ***
Validate Age
    [Arguments]    ${age} 
    Run Keyword If    ${age} > 18    Log To Console    Eligible for voting
    ...    ELSE    Log To Console    Not eligible for voting
