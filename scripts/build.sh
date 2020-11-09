#bin/sh
count=$(mvn checkstyle:check|grep WARN|wc -l)
echo "checkstyle violation count: $count"
if [[ $count -gt 19 ]]; then
    echo "${red}Check style failed.${reset}"
    exit 1
else
    echo "Check style success!"
fi

mvn test
if [ $? == 0 ]; then
    echo "${green}Test Success..${reset}"
else
    echo "${red}Test Cases failed, please check the above logs for more details.${reset}"
    exit 1
fi

echo "Validation Completed"