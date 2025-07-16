*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Function/Function.robot
Resource    ../../Resources/Variables.robot
Resource    ../Login/loginPage.robot
Resource    ../OpenBrowser/OpenBrowser.robot

*** Keywords ***
Halaman Inventory
    Wait Until Element Is Visible    ${elementVerifyInvetoryPage}    5s
    Page Should Contain Element    ${elementVerifyInvetoryPage}
    Capture Page Screenshot
    