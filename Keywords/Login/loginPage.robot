*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Resources/Variables.robot

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${titleLoginPage}    10s
    Input Text    ${fieldUsername}    ${username}
    Sleep    1s
    Input Password    ${fieldPassword}    ${password}
    Sleep    1s
    Click Element    ${btnLogin}

Popup Login Gagal
    Element Should Contain   ${errorMessage}    ${gagalLogin}
