*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{fruits}    apple    banana    cherry

*** Test Cases ***
Print Fruits Test Case
    Print Fruits    @{fruits}

*** Keywords ***
Print Fruits
    [Arguments]    @{fruits}
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}
    END
