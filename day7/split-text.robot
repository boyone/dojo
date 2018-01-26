*** Settings ***
Library     String

*** TestCases ***
Split Long Text
    ${long text}=   Set Variable    Variables are returned as a special dictionary that allows accessing variables in space, case, and underscore insensitive manner similarly as accessing variables in the test data. This dictionary supports all same operations as normal Python dictionaries and, for example, Collections library can be used to access or modify it. Modifying the returned dictionary has no effect on the variables available in the current scope.

    Log    ${long text}

    ${text}=    Get Substring    ${long text}    start=0    end=200
    Log    ${text}
    ${text}=    Get Substring    ${long text}    start=200    end=400
    Log    ${text}
    ${text}=    Get Substring    ${long text}    start=400    end=600
    Log    ${text}
    
    ${length}=    Get Length    ${long text}
    ${size}=    Evaluate    ${length} / 200
    log    ${size}
    ${remainder}=    Evaluate    ${length} % 200
    log    ${remainder}
    ${size}=    Run Keyword If    ${remainder} > 0    Evaluate    ${size} + 1
    log    ${size}

    :FOR    ${index}    IN RANGE    ${size}
    \    ${start}=    Evaluate    ${index} * 200
    \    ${end}=    Evaluate    ${start} + 200
    \    Log    ${start} : ${end}
    \    ${text}=    Get Substring    ${long text}    ${start}    ${end}
    \    Log    ${text}
