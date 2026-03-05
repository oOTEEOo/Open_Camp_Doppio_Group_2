*** Settings ***
Library    Browser
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
