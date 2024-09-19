*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Loop Control Example
        FOR    ${number}    IN RANGE    1    10
            Run Keyword If    ${number} == 5    Exit For Loop
            Run Keyword If    ${number} == 3    Continue For Loop   #ข้ามการทำงานไปเลยไปเริ่มรอบ 4
            Log To Console   ${number}
        END

