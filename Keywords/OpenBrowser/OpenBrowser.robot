*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Resources/Variables.robot
Resource    ../../Function/Function.robot

*** Keywords ***
Open Browser Source Demo
    ${options}=    Setup Chrome Options
    Create Webdriver    Chrome    options=${options}
    Go To    ${URL}
    Wait Until Element Is Visible    ${titleLoginPage}    10s