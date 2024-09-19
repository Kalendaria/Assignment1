*** Settings ***
Library  SeleniumLibrary
Variables    config.yaml

*** Test Cases ***
Test Read Data2
    Read data from yaml2

*** Keywords ***
Read data from yaml2
    Open Browser    ${app_url}    chrome
    Input Text    username   ${credentials.username}
    Input Text    password   ${credentials.password}
    Close Browser