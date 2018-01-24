*** Settings ***
Library    SSHLibrary    5s    

*** TestCases ***
Hello World GTM
    Open Connection    localhost    port=2230
    Login    root    123
    Write    source .gtmcshrc
    Write    gtm
    ${output}=    Read Until    GTM>
    log    ${output}
    Write    do ^Hello
    ${output}=    Read Until    GTM>
    log    ${output}
    Should Contain    ${output}    Hello World
    Write   h
    Set Client Configuration	prompt=#	# For root, the prompt is #
    ${output}=	Read Until Prompt	
    Should End With	${output}	:~#
    Close Connection

