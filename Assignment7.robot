*** Settings ***
Library  SeleniumLibrary
Variables    variables.yaml

*** Test Cases ***
Test Read Data
    Read data from yaml

*** Keywords ***
Read data from yaml
    Log To Console   ${USER['name']}
    Log To Console    ${USER['age']}
    Log To Console   ${USER['city']}
