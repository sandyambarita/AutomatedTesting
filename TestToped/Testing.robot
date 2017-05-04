*** Settings ***
Library           Selenium2Library
Library           DateTime
Resource          ResourceTestToped.txt
Library           AutoItLibrary

*** Test Cases ***
TC1
    Open Browser    https://www.tokopedia.com/contact-us    ff
    Click Element    xpath=//div[@id='problem-list-c1']/a
    Sleep    3s
    Click Element    xpath=//div[@id='solution-list-c1']/a[6]
    Sleep    3s
    Click Element    xpath=//div[@id='step6']/div[3]/a[2]
    Sleep    3s
    Input Text    xpath=//*[@id='ticket_reply_msg']    ${DETAIL PROBLEM}
    Input Text    xpath=//*[@id='full_name']    ${FULL NAME}
    Input Text    xpath=//*[@id='user_email']    ${EMAIL}
    Click Element    xpath=//*[@id='pickfiles-nav1']
    Choose File    xpath=//*[@id='pickfiles-nav1']    ${CURDIR}${/}gambar.jpg
    run    ${AUTOIT}
    Click Button    xpath=//*[@id="send-message"]
    Sleep    3s
