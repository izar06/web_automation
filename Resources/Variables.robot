*** Variables ***
${username}    standard_user
${password}    secret_sauce
${gagalLogin}    Epic sadface: Username and password do not match any user in this service



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
${Filter}    css=select.product_sort_container
${ButtonBurgerMenu}    id=react-burger-menu-btn

