*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log To Console    Suite is starting
Suite Teardown    Log To Console    Suite is ending

*** Test Cases ***
Test 1
    Log To Console   Running Test 1

Test 2
    Log To Console   Running Test 2
