# d12-common

This 'common' playbook would normally run on all hosts in the env first before other downstream playbooks such as d12-foundry are executed. It has all the base env stuff. 

Note; this playbook assumes you have already solved ssh key access for the executing user, it doesnt' set it up for you.
