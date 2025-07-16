*** Settings ***
Resource    ../Settings/Settings.robot


*** Keywords ***
Setup Chrome Options
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}=    Evaluate    {"credentials_enable_service": False, "profile.password_manager_enabled": False, "profile.password_manager_leak_detection": False}    sys, selenium.webdriver

    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    ${exclude_switches}=    Evaluate    ["enable-automation"]
    Call Method    ${options}    add_experimental_option    excludeSwitches    ${exclude_switches}
    Call Method    ${options}    add_experimental_option    useAutomationExtension    ${False}
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    --disable-notifications
    Call Method    ${options}    add_argument    --start-maximized
    RETURN    ${options}