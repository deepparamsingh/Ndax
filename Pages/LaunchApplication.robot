*** Settings ***
Library         AppiumLibrary
Library         Collections
Library         JSONLibrary

*** Variables ***
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        13.0
${DEVICE_NAME}             RZ8R30WJMAJ
${APP_PACKAGE}             com.android.chrome
${APP_ACTIVITY}            com.google.android.apps.chrome.Main
${AUTOMATION_NAME}         UIAutomator2
${APPIUM_SERVER_URL}       http://127.0.0.1:4723

*** Test Cases ***
Open Application
    Open Application    ${APPIUM_SERVER_URL}   automationName=${AUTOMATION_NAME}    platformName=${PLATFORM_NAME}   deviceName=${DEVICE_NAME}      appPackage=${APP_PACKAGE}     appActivity=${APP_ACTIVITY}
