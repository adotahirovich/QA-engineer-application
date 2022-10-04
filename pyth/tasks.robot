*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop.Windows
*** Variables ***

*** Test Cases ***
Test1 Login valid
    Open Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Sleep    1.5
    Input Text    name=username    Admin
    Sleep    0.5    
    Input Text    name=password    admin123
    Sleep    0.5
    Click Button    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button


Test1 Login Negative (will fail)

    Open Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Sleep    1.5
    Input Text    name=username    NotAdmin
    Sleep    0.5    
    Input Text    name=password    Notadmin123
    Sleep    0.5
    Click Button    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button



Test1 NewUser
    
    Open Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Sleep    1.5
    Input Text    name=username    Admin
    Sleep    0.5    
    Input Text    name=password    admin123
    Sleep    0.5
    Click Button    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    1

    Click Element    xpath=/html/body/div/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a
    Sleep    0.5
    Click Element    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div[2]/div[1]/button
    Click Element    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i 
    Click Element       //*[contains(text(),'Admin')]
    Input Text    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    Dominic Chase
    Sleep    1.5
    
    ##Click Element    //*[contains(text(),'Dominic')]

    #Select From List By Label    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input    Dominic
   
    Sleep    1.5
    Click Element    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div
    Click Element    //*[contains(text(),'Enabled')]
    Input Text    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input    Anel921
    Input Text    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input    Anel123!
    Input Text    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input    Anel123!
    Sleep    0.5
    Click Button    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]

    #                             Nisam uspio pri upisivanju "Employee Name" izabrati da izabere ime ali sve osim toga radi

    #Click Element    xpath=/html/body/div/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div/div[4]/div/div/div[1]/div[2]/div/div/button[1]/i

    

    

   


Test2 Register
    Open Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    Chrome
    Sleep    0.5
    Click Element    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[4]/p