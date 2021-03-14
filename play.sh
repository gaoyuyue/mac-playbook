# /bin/bash

pip3 install -r requirements.txt

if [ $1 = "dryrun"]; then
    ansible-playbook main.yml -C
elif [ $1 = ""]; then
    ansible-playbook main.yml
else
    echo "unkonw argument: $1"
    exit 1
fi