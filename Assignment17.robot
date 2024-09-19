*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Example Test With Setup And Teardown
        [Teardown]    Close Browser
        [Setup]    Open Browser    http://example.com    chrome
        Log To Console  Test is running
