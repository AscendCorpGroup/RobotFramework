*** Settings ***
Library              Selenium2Library

*** Variables ***

*** Keywords ***
Eval ${expression} Should be equal ${expected}
    Evaluate    ${expression}

Eval2 ${scalar} * ${multiple} equal to ${result}
    Log To Console    level=DEBUG
    ${result1} =    Evaluate    ${scalar}*${multiple}
    Should Be Equal As Integers    ${result}    ${result1} 
    
Eval3
    [Arguments]    ${scalar}    ${multiple}    ${result}
    ${result1} =    Evaluate    ${scalar}*${multiple}
    Should Be Equal As Integers    ${result}    ${result1}     
    
*** Test Cases ***
Test_Case_No_1
    Eval 1+1 Should be equal 2
    
Test_Case_No_2
    Eval2 2 * 2 equal to 4
    
Test_Case_No_3
    No Operation
    Eval3    2    0    0
    
Test_Case_No_4
    Pass Execution        Deprecated test.
    
Test_Case_No_5
    Fail        Failure Keyword in process.    
