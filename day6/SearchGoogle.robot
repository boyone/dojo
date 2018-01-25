*** Settings ***
Library    Selenium2Library
Test Template    ค้นคำจาก Google.com แล้วเจอคำที่อยากได้
Test Teardown    ปิดหน้าเบราเซอร์

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    Chrome
${ช่องกรอกคำค้น}    lst-ib
${ปุ่มค้นหา}         btnK

*** Test Cases ***
#     TEST CASE Name                  | คำค้น     |  คำที่อยากเจอ         |
ค้นคำว่า มาริโอ้ แล้วเจอคำว่า มาริโอ้           มาริโอ้       มาริโอ้
ค้นคำว่า rov แล้วเจอคำว่า ฮีโร่               rov         ฮีโร่

*** Keywords ***
ค้นคำจาก Google.com แล้วเจอคำที่อยากได้
    [Arguments]     ${คำค้น}    ${คำที่อยากเจอ}
    เปิดเบราเซอร์แล้วพิม URL
    กรอกคำค้น        ${คำค้น}
    กดปุ่มค้นหา
    จะต้องเจอคำว่า    ${คำที่อยากเจอ}

กรอกคำค้น
    [Arguments]     ${คำค้น}
    Input Text      ${ช่องกรอกคำค้น}    ${คำค้น}

กดปุ่มค้นหา
    Click Button    ${ปุ่มค้นหา}

จะต้องเจอคำว่า
    [Arguments]     ${คำที่อยากเจอ}
    Wait Until Page Contains     ${คำที่อยากเจอ}
    Capture Page Screenshot

เปิดเบราเซอร์แล้วพิม URL
    Open Browser    ${URL}    ${BROWSER}

ปิดหน้าเบราเซอร์
    Close Browser