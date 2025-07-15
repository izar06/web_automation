*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Resources/Variables.robot

*** Keywords ***
Open Browser Source Demo
    Open Browser    ${URL}    chrome
    Element Should Be Visible    ${titleLoginPage}