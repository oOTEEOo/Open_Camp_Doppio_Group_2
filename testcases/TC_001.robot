*** Settings ***
Library     Browser    
Library     DebugLibrary
Library     String
Resource    ${CURDIR}/../resources/import.robot



*** Test Cases ***
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