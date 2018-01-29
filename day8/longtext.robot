*** Settings ***
Library    WordWrap.py

*** TestCases ***
Example
    ${first_expected_value}=    Set Variable    1234${space}
    ${second_expected_value}=    Set Variable    ${space}${space}89${space}
    
    @{lines}=    wrap with size    file.prop    5
    
    Should Be Equal     @{lines}[0]    ${first_expected_value}
    Should Be Equal     @{lines}[1]    ${second_expected_value}
    Should Be Equal     @{lines}[0]@{lines}[1]    ${first_expected_value}${second_expected_value}
    :FOR    ${line}    IN    @{lines}
    \    Log    "${line}"