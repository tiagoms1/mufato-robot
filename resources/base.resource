*** Settings ***
Documentation       Arquivo base do projeto

Library             AppiumLibrary
Library             JSONLibrary
Library             DateTime
Resource            actions/screen-elementos.resource


*** Keywords ***
# Iniciar sessao
#     Set Appium Timeout    30
#     Open Application
#     ...    http://127.0.0.1:4723
#     ...    platformName=Android
#     ...    deviceName=emulator-5554
#     ...    automationName=UIAutomator2
#     ...    app=${EXECDIR}/app/app-release-mufato.apk
#     ...    appPackage=br.com.mupay.app
#     ...    appActivity=com.banking.SplashActivity
#     ...    autoGrantPermissions=true
#     ...    unicodeKeyboard=true

Iniciar sessao
    Set Appium Timeout    30
    Open Application
    ...    https://trial.app.perfectomobile.com/
    ...    app=PRIVATE:app-release-mufato.apk
    ...    deviceName=R3CW60ABQBB
    ...    perfecto:securityToken=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI2ZDM2NmJiNS01NDAyLTQ4MmMtYTVhOC1kODZhODk4MDYyZjIifQ.eyJpYXQiOjE3MjA3Mjk5NzcsImp0aSI6IjBhMjdhY2FhLTU5NWQtNDQ4OS05MzIyLTY3MTc2M2I3NWEzMSIsImlzcyI6Imh0dHBzOi8vYXV0aDMucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3RyaWFsLXBlcmZlY3RvbW9iaWxlLWNvbSIsImF1ZCI6Imh0dHBzOi8vYXV0aDMucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3RyaWFsLXBlcmZlY3RvbW9iaWxlLWNvbSIsInN1YiI6IjYyN2YxNjljLTJmNjctNGI3Zi1iNTVkLTIzZDdkZTUzMGZmYSIsInR5cCI6Ik9mZmxpbmUiLCJhenAiOiJvZmZsaW5lLXRva2VuLWdlbmVyYXRvciIsIm5vbmNlIjoiMjM3Y2Y4NjgtNjJmYS00YjRlLTg3NzYtNzk3ZWMxOTBjYmU3Iiwic2Vzc2lvbl9zdGF0ZSI6IjU5MDZiZmM2LWNjNGEtNGJmMS1hOGIxLWY2ODlhM2I5YTg1OCIsInNjb3BlIjoib3BlbmlkIG9mZmxpbmVfYWNjZXNzIHByb2ZpbGUgZW1haWwifQ.xWt9AqKHSq8NkckPaVgL9USrLdIZmKdtRbZAoBjU2HE
    ...    appPackage=br.com.mupay.qa.app
    ...    appActivity=com.banking.SplashActivity
    ...    autoGrantPermissions=true
    ...    unicodeKeyboard=true
    ...    platformName=Android
    ...    automationName=appium

Finalizar sessao
    Sleep    2
    Capture Page Screenshot
    Close Application
