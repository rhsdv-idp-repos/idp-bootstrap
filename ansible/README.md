## README

python -m venv venv
source venv/bin/activate

pip install ansible kubernetes openshift hvac PyYAML

ansible-galaxy collection install kubernetes.core community.hashi_vault

