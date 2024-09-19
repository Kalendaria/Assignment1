*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Calculate Square Test Case
    ${square}    Calculate Square    4
    Should Be Equal As Numbers    ${square}    16

*** Keywords ***
Calculate Square
    [Arguments]    ${number}
    ${result}    Evaluate    int(${number} * ${number})
    Return From Keyword    ${result}

# ใช้ Evaluate แทน Set Variable ได้ผลลัพธ์เป็น int
# ใช้ Should Be Equal As Numbers  แทน  Should Be Equal เพิ่่มความชัดเจน