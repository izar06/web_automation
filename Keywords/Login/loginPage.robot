*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Resources/Variables.robot

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Input Text    ${fieldUsername}    ${username}
    Sleep    1s
    Input Password    ${fieldPassword}    ${password}
    Sleep    1s
    Click Element    ${btnLogin}
    Sleep    5s

Popup Login Gagal
    Element Should Contain   ${errorMessage}    ${gagalLogin}
