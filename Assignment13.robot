*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Print Fruit List
        @{fruits}    Create List    apple    banana    cherry
        FOR    ${fruit}    IN    @{fruits}
            Log To Console   ${fruit}
        END

