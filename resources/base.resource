*** Settings ***
Documentation       Arquivo base do projeto

Library             AppiumLibrary
Library             JSONLibrary
Library             DateTime
Library             PerfectoLibrary

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

#test

Iniciar sessao
    Set Appium Timeout    30
    Open Application
    ...    https://demo.perfectomobile.com/nexperience/perfectomobile/wd/hub
    ...    appiumVersion=latest
    ...    platformName=Android
    ...    deviceName=R52T1087A5E
    ...    automationName=UIAutomator2
    ...    app=PUBLIC:app-release-mufato.apk
    ...    appPackage=br.com.mupay.app
    ...    appActivity=com.banking.SplashActivity
    ...    autoGrantPermissions=true
    ...    unicodeKeyboard=true
    ...    perfecto:securityToken=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI4YmI4YmZmZS1kMzBjLTQ2MjctYmMxMS0zNTYyMmY1ZDkyMGYifQ.eyJpYXQiOjE3MDcxNjg2OTEsImp0aSI6ImI4ZjlmMWJiLTFkYTYtNDNkNS05MzViLTkxNDFkMDA5YWNjNiIsImlzcyI6Imh0dHBzOi8vYXV0aC5wZXJmZWN0b21vYmlsZS5jb20vYXV0aC9yZWFsbXMvZGVtby1wZXJmZWN0b21vYmlsZS1jb20iLCJhdWQiOiJodHRwczovL2F1dGgucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL2RlbW8tcGVyZmVjdG9tb2JpbGUtY29tIiwic3ViIjoiYmU5MWMwM2QtYWFjYS00ZDRkLWFiYTAtNjUxNTczNDQ0ODM0IiwidHlwIjoiT2ZmbGluZSIsImF6cCI6Im9mZmxpbmUtdG9rZW4tZ2VuZXJhdG9yIiwibm9uY2UiOiI2MDYzNzIzOS02N2YyLTRiZDUtOGE0NC1iZGQ3MDcyZmVhYWYiLCJzZXNzaW9uX3N0YXRlIjoiZmY2MThlZWItYmYwNS00YjNjLTkxNTQtM2JmZTEzNjhjNzkwIiwic2NvcGUiOiJvcGVuaWQgb2ZmbGluZV9hY2Nlc3MifQ.istc22D40x8n0L3XnPFmoc4augUNgVsS20fDbTNVDAU
    ...    perfecto:scriptName=RubeCube Mufato github action


Finalizar sessao
    Sleep    2
    Capture Page Screenshot
    Close Application
