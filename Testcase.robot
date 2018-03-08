*** Settings ***
Library              Selenium2Library

*** Variables ***

*** Keywords ***
Eval ${expression} Should be equal ${expected}
    Evaluate    ${expression}
    
*** Test Cases ***
Test1
    Eval 1+1 Should be equal 2
