*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Function/Function.robot
Resource    ../../Resources/Variables.robot
Resource    ../../Keywords/InventoryPage/KeywordsInventoryPage.robot

*** Test Cases ***
Halaman Inventory Page
    Open Browser Source Demo
    Login    ${username}    ${password}
    Halaman Inventory
