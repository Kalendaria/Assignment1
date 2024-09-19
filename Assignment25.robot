*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Parallel Test 1
    Log    Running Test 1

Parallel Test 2
    Log To Console   Running Test 2

Parallel Test 3
    Log    Running Test 3

# pabot --processes 3 ชื่อไฟล์
# pabot --testlevelsplit Assignment24.robot
# pabot --splittestlevel 2 Assignment24.robot