*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Global Variable
    Set Global Variable    ${GLOBAL_VAR}    "Global Value"
   

*** Keywords ***
Global Variable
    Set Local Variable    ${LOCAL_VAR}    "Local Value"
    Log    ${LOCAL_VAR}

# Global เรียกใช้ได้ทั้งหมดในไฟล์
# Local เรียนกได้แค่ใน TestCase กับ Keywords ของมันเอง น่าจะรวมถึงตอนถูกเรียกใช้ด้วย