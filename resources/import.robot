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

