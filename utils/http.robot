*** Settings ***
Resource  ./environment.robot
Library   REST    

*** Variables ***

*** Keywords ***

HttpGet
    [Arguments]  ${endpoint}
    ${response}  GET  ${apibase}${endpoint}
    RETURN  ${response}


HttpPost
    [Arguments]  ${endpoint}  ${body}
    ${response}  POST  ${apibase}${endpoint}  ${body}
    RETURN  ${response}
