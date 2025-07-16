*** Variables ***
${username}    standard_user
${password}    secret_sauce
${gagalLogin}    Epic sadface: Username and password do not match any user in this service
${OPTIONS}    add_argument=--disable-infobars
...           add_argument=--disable-notifications
...           add_experimental_option=excludeSwitches=["enable-automation"]
...           add_experimental_option=prefs={"credentials_enable_service": false, "profile.password_manager_enabled": false}



#Login Page
${URL}    https://www.saucedemo.com/
${web}    Chrome
${titleLoginPage}    css=div.login_logo
${fieldUsername}    id=user-name
${fieldPassword}    id=password
${btnLogin}    id=login-button
${errorMessage}    css=h3[data-test="error"]

#Home Page
${elementVerifyInvetoryPage}    css=div.app_logo
