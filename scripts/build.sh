#bin/sh
mvn checkstyle:check
if [ $? != 0 ]; then
    echo "${red}Unit test failed.${reset}"
    exit 1
fi

mvn clean test
if [ $? == 0 ]; then
    echo "${green}Test Success..${reset}"
else
    echo "${red}Test Cases failed, please check the above logs for more details.${reset}"
    exit 1
fi

echo "Validation Completed"