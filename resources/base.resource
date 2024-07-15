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
    ...    https://perfectose-public.perfectomobile.com/wd/hub
    ...    app=PUBLIC:app-release-mufato.apk
    ...    deviceName=1C281FDF600537
    ...    perfecto:securityToken=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwYjQ2MzUyMC1hMGUzLTQwMTktYWUwNy0zYzI2ZjRjMzNhODUifQ.eyJpYXQiOjE3MDgwMjE5MjUsImp0aSI6IjAxNWQxMWVlLTkyZjEtNDY1OC05OWVjLTNmOGUwYzJkMTU3ZCIsImlzcyI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsImF1ZCI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsInN1YiI6ImExYTRkMDhmLTg3OTMtNDE0Yi1iOGUyLWY3NDVkN2ZhZDkwZCIsInR5cCI6Ik9mZmxpbmUiLCJhenAiOiJvZmZsaW5lLXRva2VuLWdlbmVyYXRvciIsIm5vbmNlIjoiYTAzYmEyZmMtNTI1OS00NTdmLWE4MDYtNWY0MjY2YmY4YzU0Iiwic2Vzc2lvbl9zdGF0ZSI6IjE4ZDZkNmVmLTFlMzgtNGU2Ny1hMmEyLWRiOTcwYjEwODQwNyIsInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgb2ZmbGluZV9hY2Nlc3MgZW1haWwifQ.x8QwpguF3ufYr1yYY2reYx3zWLxqJWqbgzBaj3gJ29w
    ...    appPackage=br.com.mupay.qa.app
    ...    appActivity=com.banking.SplashActivity
    ...    autoGrantPermissions=true
    ...    unicodeKeyboard=true
    ...    platformName=Android
    ...    automationName=Perfecto

Finalizar sessao
    Sleep    2
    Capture Page Screenshot
    Close Application
