*** Settings ***
Resource    ../../Settings/Settings.robot
Resource    ../../Keywords/Login/loginPage.robot
Resource    ../../Keywords/OpenBrowser/OpenBrowser.robot

*** Test Cases ***
Open Browser Source Demo
    Open Browser Source Demo

Login user with condition username and password valid
    Open Browser Source Demo
    Login    ${username}    ${password}

Login user with condition username invalid
    Open Browser Source Demo
    Login    test    ${password}
    Popup Login Gagal

Login user with condition password invalid
    Open Browser Source Demo
    Login    test    ${password}
    Popup Login Gagal