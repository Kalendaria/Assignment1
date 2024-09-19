*** Settings ***
Library  SeleniumLibrary

*** Variables ***
&{user_info}    name=KALENDARIA    age=0    city=ENG

*** Test Cases ***
Print User Info Test Case
    Print User Info    &{user_info} 

*** Keywords ***
Print User Info
    [Arguments]    &{user_info}
    Log    Name: ${user_info["name"]}
    Log    Age: ${user_info["age"]}
    Log    City: ${user_info["city"]}

