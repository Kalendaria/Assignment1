*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Factorial Calculation
    ${result}    Calculate Factorial    5
    Should Be Equal As Numbers    ${result}    120

*** Keywords ***
Calculate Factorial
    [Arguments]    ${number}
    ${number_int}    Evaluate    int(${number})
    Run Keyword If    ${number_int} == 1    Return From Keyword    1
    ${previous}    Calculate Factorial    ${number_int} - 1
    ${result}    Evaluate    ${number_int} * ${previous}
    Return From Keyword    ${result}
