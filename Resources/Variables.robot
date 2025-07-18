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
${Filter}    css=select[data-test="product-sort-container"]
${FilterByName_A_to_Z}    az
${FilterByName_Z_to_A}    za
${FilterByPrice_low_to_high}    lohi
${FilterByPrice_high_to_low}    hilo
${ButtonBurgerMenu}    id=react-burger-menu-btn
# Add Cart
${CartSauceLabsBackpack}    id=add-to-cart-sauce-labs-bike-light
${CartSauceLabsBike Light}    id=add-to-cart-sauce-labs-bike-light
${CartSauceLabsBoltT-Shirt}    id=add-to-cart-sauce-labs-bolt-t-shirt
${CartSauceLabsFleeceJacket}    id=add-to-cart-sauce-labs-fleece-jacket
${CartSauceLabsOnesie}    id=add-to-cart-sauce-labs-onesie
${CartTest.allTheThingsT-Shirt}    id=add-to-cart-test.allthethings()-t-shirt-(red)
# View Detail Product
${DetailSauceLabsBackpack}    id=item_4_title_link
${DetailSauceLabsBike Light}    id=item_0_title_link
${DetailSauceLabsBoltT-Shirt}    id=item_1_title_link
${DetailSauceLabsFleeceJacket}    id=item_5_title_link
${DetailSauceLabsOnesie}    id=item_2_title_link
${DetailTest.allTheThingsT-Shirt}    id=item_3_title_link
#Footer
${Twitter}    css=[data-test="social-twitter"]
${Facebook}    css=[data-test="social-facebook"]
${Linkedin}    css=[data-test="social-linkedin"]

