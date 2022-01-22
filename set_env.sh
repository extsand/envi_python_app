#!/bin/bash
echo 'Set env for App'
export APP_USERNAME=test_usernamt
export APP_DB=http://test.db.com:2341
export APP_PASSWORD=test_password_1234567890
env | grep "APP_"


