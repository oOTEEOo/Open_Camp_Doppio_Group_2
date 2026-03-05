*** Settings ***
Library         Browser                 strict=${FALSE}
Library         DebugLibrary

Resource    ${CURDIR}/../keywords/common/common.robot
# PAGES
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/accepted_all_cookies_page.robot

# features
Resource    ${CURDIR}/../keywords/features/login_feature.robot

# LOCATORS
Resource    ${CURDIR}/../resources/locators/login_locator.robot
Resource    ${CURDIR}/../resources/locators/common_locator.robot
Resource    ${CURDIR}/../resources/locators/profile_locator.robot
Resource    ${CURDIR}/../resources/locators/accepted_all_cookies_locator.robot

# TEST DATA
Variables   ${CURDIR}/../resources/testdata/Login_data.yaml

# TRANSLATION
Variables   ${CURDIR}/../resources/translation/${LANG}.yaml
    