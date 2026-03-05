*** Settings ***
 
Library     Browser    strict=${False}
Library     DebugLibrary
Library     String

Resource    locators/Prod_main_locator.robot
Resource    ../keywords/features/product_detail_feature.robot
Resource    ../keywords/pages/Prod_main_page.robot
Resource    ../resources/config.robot
Resource    ../resources/locators/Product_detail_locator.robot
Resource    ../keywords/pages/product_detail_page.robot
Variables    ../resources/testdata/seacrhData/data.yaml

Resource    ${CURDIR}/../keywords/pages/home_page.robot

Resource   ${CURDIR}/../keywords/common/common.robot
Resource   ${CURDIR}/../keywords/pages/top_bar_page.robot
Resource   ${CURDIR}/locators/top_bar_locator.robot
Resource   ${CURDIR}/../keywords/pages/register_page.robot
Resource   ${CURDIR}/locators/register_locator.robot
Resource   ${CURDIR}/../keywords/pages/cookie_policy_page.robot
Resource   ${CURDIR}/locators/cookie_policy_locator.robot
Resource   ${CURDIR}/../keywords/features/register_feature.robot

Variables  ${CURDIR}/testdata/testdata.yaml
Variables  ${CURDIR}/translation/${LANG}.yaml

# TRANSLATION
Variables   ${CURDIR}/../resources/translation/${LANG}.yaml

# TEST DATA
Variables   ${CURDIR}/../resources/testdata/Login_data.yaml

Resource    ${CURDIR}/../keywords/pages/login_page.robot

# features
Resource    ${CURDIR}/../keywords/features/login_feature.robot

# PAGES
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/accepted_all_cookies_page.robot

# LOCATORS
Resource    ${CURDIR}/../resources/locators/login_locator.robot
Resource    ${CURDIR}/../resources/locators/common_locator.robot
Resource    ${CURDIR}/../resources/locators/profile_locator.robot
Resource    ${CURDIR}/../resources/locators/accepted_all_cookies_locator.robot


