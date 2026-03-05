*** Variables ***
${Filter_page_locator_color_btn}            css=button[aria-controls="SEC_COLOR"]
${Filter_page_locator_color_Brown_txt}      css=#plp-color-COLOR-10019
${Filter_page_locator_color_lbl}         css=#COLOR
${Filter_page_locator_Prodname_txt}    css=span:has-text("STOCKHOLM 2025") >> nth= 41
${Filter_page_locator_Prodprize_txt}    css=span:has-text("Price 23790THB") >> nth=0
${Filter_page_locator_Proddes_txt}    css=.plp-price-module__description:has-text("Alhamn dark brown") >> nth =1
${Filter_page_locator_fav_btn}        css=#product-list button[aria-label*="STOCKHOLM 2025"] >> nth= 21
${Filter_page_locator_cart_txt}        css=#product-list button[aria-label*="STOCKHOLM 2025"] >> nth= 20
${Filter_page_locator_brand_prod_img}   css=img[alt="Modern living room with dark brown stockholm sofa, colourful pillows, coffee tables, vibrant rug, and abstract artwork."] >> nth=1