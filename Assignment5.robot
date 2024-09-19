*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{item}  apple    banana    cherry    orange    grape

*** Test Cases ***
Print All Items Test Case
    Print All Items   @{item}
   

*** Keywords ***
Print All Items
    [Arguments]    @{items}
    FOR    ${item}    IN    @{items}
        Log To Console     ${item}
    END

