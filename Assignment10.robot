*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Create Fruit List Test Case
    @{my_fruits}    Create Fruit List
    Log To Console   ${my_fruits[2]} 

*** Keywords ***
Create Fruit List
        ${fruits}    Create List    apple    banana    cherry
        Return From Keyword    ${fruits}

# @{my_fruits}    Create Fruit List
#  Log To Console   ${my_fruits[2]} 
#  มันมี list = [apple,banana,cherry] แค่เราเลือกมาอันเดียว