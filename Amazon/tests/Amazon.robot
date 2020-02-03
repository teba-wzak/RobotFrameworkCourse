*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com  firefox
    Wait Until Page Contains  Hello, Sign in  timeout=10
    Input text  id="twotabsearchtextbox"  Nintendo Switch  clear = True


*** Keywords ***