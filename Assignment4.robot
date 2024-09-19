*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Greet User Without Name
    Greet User

Test Greet User With Name
    Greet User    John

*** Keywords ***
Greet User
    [Arguments]    ${name}=Guest
    Log    Hello, ${name}


