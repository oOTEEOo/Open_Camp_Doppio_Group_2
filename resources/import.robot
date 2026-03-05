*** Settings ***
Library     Browser    strict=${False}
Library     DebugLibrary
Library     String

Resource    locators/Prod_main_locator.robot
Resource    ../keywords/common/common.robot
Resource    ../keywords/features/product_detail_feature.robot
Resource    ../keywords/pages/Prod_main_page.robot
Resource    ../resources/config.robot
Resource    ../resources/locators/Product_detail_locator.robot
Resource    ../keywords/pages/product_detail_page.robot
Variables    ../resources/testdata/seacrhData/data.yaml