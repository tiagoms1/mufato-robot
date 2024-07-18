*** Settings ***
Documentation       Arquivo base do projeto

Library             AppiumLibrary
Library             JSONLibrary
Library             DateTime
Library             PerfectoLibrary

Resource            actions/screen-elementos.resource

*** Keywords ***
# Iniciar sessao
#     Set Appium Timeout    31
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

#test demo
#    ...    https://demo.perfectomobile.com/nexperience/perfectomobile/wd/hub
#    ...    deviceName=R52T1087A5E
#    ...    perfecto:securityToken=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwYjQ2MzUyMC1hMGUzLTQwMTktYWUwNy0zYzI2ZjRjMzNhODUifQ.eyJpYXQiOjE3MDgwMjE5MjUsImp0aSI6IjAxNWQxMWVlLTkyZjEtNDY1OC05OWVjLTNmOGUwYzJkMTU3ZCIsImlzcyI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsImF1ZCI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsInN1YiI6ImExYTRkMDhmLTg3OTMtNDE0Yi1iOGUyLWY3NDVkN2ZhZDkwZCIsInR5cCI6Ik9mZmxpbmUiLCJhenAiOiJvZmZsaW5lLXRva2VuLWdlbmVyYXRvciIsIm5vbmNlIjoiYTAzYmEyZmMtNTI1OS00NTdmLWE4MDYtNWY0MjY2YmY4YzU0Iiwic2Vzc2lvbl9zdGF0ZSI6IjE4ZDZkNmVmLTFlMzgtNGU2Ny1hMmEyLWRiOTcwYjEwODQwNyIsInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgb2ZmbGluZV9hY2Nlc3MgZW1haWwifQ.x8QwpguF3ufYr1yYY2reYx3zWLxqJWqbgzBaj3gJ29w

#test public
#    ...    https://perfectose-public.perfectomobile.com/nexperience/perfectomobile/wd/hub
#    ...    deviceName=R38M2069TEZ
#    ...    perfecto:securityToken=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwYjQ2MzUyMC1hMGUzLTQwMTktYWUwNy0zYzI2ZjRjMzNhODUifQ.eyJpYXQiOjE3MjEzMzM5MDMsImp0aSI6Ijc2MzNhNDVmLTFmMWItNGY4Mi05OGIzLTkyMzMzZGVkYTNlNCIsImlzcyI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsImF1ZCI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsInN1YiI6ImExYTRkMDhmLTg3OTMtNDE0Yi1iOGUyLWY3NDVkN2ZhZDkwZCIsInR5cCI6Ik9mZmxpbmUiLCJhenAiOiJvZmZsaW5lLXRva2VuLWdlbmVyYXRvciIsIm5vbmNlIjoiNWVmMzhlZDQtYWU2Yi00NjQzLTg1MzktMDExNTRhZGNhYzRhIiwic2Vzc2lvbl9zdGF0ZSI6IjY5M2FkMmZjLTY4ODYtNDE0MC1hOTYxLTcwMGQ1YmQ2MWIyYiIsInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgb2ZmbGluZV9hY2Nlc3MgZW1haWwifQ.n1D5CYc3-N2tCBp3amTlLr0zdi6pMurT4m4B02kZnNo

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
    ...    perfecto:securityToken=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwYjQ2MzUyMC1hMGUzLTQwMTktYWUwNy0zYzI2ZjRjMzNhODUifQ.eyJpYXQiOjE3MDgwMjE5MjUsImp0aSI6IjAxNWQxMWVlLTkyZjEtNDY1OC05OWVjLTNmOGUwYzJkMTU3ZCIsImlzcyI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsImF1ZCI6Imh0dHBzOi8vYXV0aDQucGVyZmVjdG9tb2JpbGUuY29tL2F1dGgvcmVhbG1zL3BlcmZlY3Rvc2UtcHVibGljLXBlcmZlY3RvbW9iaWxlLWNvbSIsInN1YiI6ImExYTRkMDhmLTg3OTMtNDE0Yi1iOGUyLWY3NDVkN2ZhZDkwZCIsInR5cCI6Ik9mZmxpbmUiLCJhenAiOiJvZmZsaW5lLXRva2VuLWdlbmVyYXRvciIsIm5vbmNlIjoiYTAzYmEyZmMtNTI1OS00NTdmLWE4MDYtNWY0MjY2YmY4YzU0Iiwic2Vzc2lvbl9zdGF0ZSI6IjE4ZDZkNmVmLTFlMzgtNGU2Ny1hMmEyLWRiOTcwYjEwODQwNyIsInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgb2ZmbGluZV9hY2Nlc3MgZW1haWwifQ.x8QwpguF3ufYr1yYY2reYx3zWLxqJWqbgzBaj3gJ29w


Finalizar sessao
    Sleep    2
    Capture Page Screenshot
    Close Application
