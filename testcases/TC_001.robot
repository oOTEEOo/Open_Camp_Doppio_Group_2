*** Settings ***

Resource    ../resources/import.robot


*** Test Cases ***
TC_IKEA_004 Verify user can add product successfully
    common.Open Prod main page
    cookie_policy_page.Click cookie_policy button
    Prod_main_page.Test search Prod main page       ${TC04.item}
    Prod_main_page.Click product
    Prod_main_page.Get Product Detail
    product_detail_feature.Add quantity
    product_detail_page.Add to cart button
    product_detail_feature.Verify add to cart successfully
    product_detail_page.Click go back to shopping

    Close Browser



# IKEA_001
#     common.Open training website
#     top_bar_page.Click account button
IKEA_002
    common.Open training website
    cookie_policy_page.Click cookie_policy button 
    top_bar_page.Click account button
    register_page.Click create account button
    #register_feature.Register account  ${IKEA_002.firstname}  ${IKEA_002.lastname}   ${IKEA_002.email}  ${IKEA_002.password} 
    register_page.Check checkbox 
    register_page.Check uncheckbox
    register_page.Click signup button
    register_page.Verify msg firstname  
    register_page.Verify msg lastname 
    register_page.Verify msg email 
    register_page.Verify msg password
    register_page.Verify msg policy
    #debug
