*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Parallel Test 1
    Log    Running Test 1

Parallel Test 2
    Log    Running Test 2

Parallel Test 3
    Log    Running Test 3

# pabot --processes 3 ชื่อไฟล์