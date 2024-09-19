*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables    test26.yaml


*** Keywords ***
Validate User Permissions
    [Arguments]    ${required_role}    ${required_access}    &{user_data}
    Log To Console    Validating user permissions for: ${user_data}
    
    ${roles}=    Get From Dictionary    ${user_data}    roles
    ${access_level}=    Get From Dictionary    ${user_data}    access_level

    Run Keyword If    '${required_role}' in ${roles} and '${required_access}' == '${access_level}'
    ...    Log To Console    User has the required permissions.
    ...    ELSE
    ...    Fail    User does not have the required permissions.
    ...    
*** Test Cases ***
Test Validate User Permissions
    ${user_data}=    Get From Dictionary    ${User}    roles
    Validate User Permissions    admin    high    &{User}