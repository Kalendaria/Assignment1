*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Create User Info Test Case
    &{user}    Create User Info
    Log To Console   Name: ${user.name} age: ${user.age}

*** Keywords ***
Create User Info
        ${user_info}    Create Dictionary    name=John    age=30    city=Bangkok
        Return From Keyword    ${user_info}
