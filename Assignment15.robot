*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Error Handling Example
        ${status}    Run Keyword And Return Status    Click Element    invalid_locator
        Log To Console  Status: ${status}

        Run Keyword And Ignore Error    Input Text    invalid_locator    value 
        Log To Console  Ignored the error and continued 

#  Run Keyword And Ignore Error รันต่อไม่สนใจข้อผิดพลาด
# Run Keyword And Return Status  ใช้ระบุว่าทำงานเสร็จมั้ย แต่ไม่หยุดการทำงาน
#