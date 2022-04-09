*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000

*** Test Cases ***
Guest User Test
    [Documentation]  This test is for guest
    [Tags]  user
    Open Browser    ${web_url}   chrome
    sleep  1s
    Click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[5]/td[2]/a
    sleep  1s
    Test Description
    sleep  1s
    Test Remarks
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close Browser

User Register Test
    [Documentation]  This test is to register user
    [Tags]  user
    Open Browser    ${web_url}   chrome
    sleep  1s
    click Element   xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[6]/td[2]/a
    sleep  1s
    Test Name
    Test Address
    Test email
    Test phone
    Test pass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s
    close Browser

Registered User Login Test
    [Documentation]  This test is to login user
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test email
    Test pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    close Browser

User Report Crime Test
    [Documentation]  This test is to report crime
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Link  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test email
    Test pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Link  xpath=//html/body/div/div/div/nav/div/div/ul/li[1]/a
    Test Description
    Test Remarks
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    close Browser

User Modify Test
    [Documentation]  This test is for modification
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test email1
    Test pass1
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[2]/a
    Test newName
    click Button  xpath=//html/body/div[2]/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    Test Newaddress
    Test Newemail
    Test newphone
    Test newpass
    close Browser
User Logout
    [Documentation]  This test is to logout
    [Tags]  user
    Open Browser  ${web_url}  chrome
    click Element  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[4]/td[2]/a
    Test email
    Test pass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    close Browser

Admin Login Test
    [Documentation]  This test is for admin login
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test admname
    Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

Admin View Report Test
    [Documentation]  This test is to view report
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test admname
    Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[1]/a
    close Browser

Admin Search Report Test
    [Documentation]  This test is to search report
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test admname
    Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[2]/a
    sleep  1s
    Test Date
    sleep  1s
    click Button  xpath=//html/body/div[3]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  1s
    close Browser

Admin Logout
    [Documentation]  This test to logout admin
    [Tags]  admin
    Open Browser  ${web_url}  chrome
    sleep  1s
    Test admname
    Test Admpass
    sleep  1s
    click Button  xpath=//html/body/div[2]/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element  xpath=//html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  1s
    close Browser


*** Keywords ***
Test Description
    Input Text  name:description  killer

Test Remarks
    Input Text  name:remark  death

Test Name
    Input Text  name:username  dhanush

Test Address
    Input Text  name:address  hosur

Test email
    Input Text  name:useremail   3dhanushkccd@gmail.com

Test phone
    Input Text  name:userphone  9361428388

Test pass
    Input Text  name:userpass  asdf

Test email1
    Input Text  name:useremail  3dhanushkccd@gmail.com

Test pass1
    Input Text  name:userpass  asdf

Test newName
    Input Text  name:newname  dhanush

Test Newaddress
    Input Text  name:newaddress  karur

Test Newemail
    Input Text  name:newemail  rilwan@gmail.com

Test newphone
    Input Text  name:newphone  12345678

Test newpass
    Input Text  name:newpass  1234

Test admname
    Input Text  name:name  admin

Test Admpass
    Input Text  name:pass  12345

Test Date
    Input Text  name:date  09-04-2022