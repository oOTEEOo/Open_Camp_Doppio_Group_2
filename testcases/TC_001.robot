*** Settings ***
Resource    ../resources/import.robot


*** Test Cases ***
TC_IKEA_004 Verify user can add product successfully
    common.Open Prod main page
    common.Click Cookies
    Prod_main_page.Test search Prod main page       ${TC04.item}
    Prod_main_page.Click product
    Prod_main_page.Get Product Detail
    product_detail_feature.Add quantity
    product_detail_page.Add to cart button
    product_detail_feature.Verify add to cart successfully
    product_detail_page.Click go back to shopping

    Close Browser


