## Introduction to automation with Ansible AWX, GitHub and Openstack

Welcome to my repository which hopes to provide some sort of context or inspiration on how to start automating the repetitive tasks of your day to day.<br>
Feel free to plagiarize or fork this code (Suggestions and Improvements are welcome) or just use it to follow along in my Introduction to Automation with Ansible AWX, Github and Openstack video.

To use the code in this repository you’ll need to have access to:
 * Ansible / Ansible AWX / Ansible Tower.<br> 
 * A working Openstack environment.
 * A cup of coffee or a sandwich.

**Notes:** 

Most of the files are human readable Ansible playbooks and have decent descriptions for each task.

The *name_vars_generator.sh* + the *names.csv* “spreadsheet” is a neat and lazy way to manage users being injected into your environment. <br>

Simply maintain a list of your users in the spreadsheet “names.csv” <br> 
Execute ./name_vars_generator.sh on a Linux terminal to generate the variables in the manage_user role. <br> 
The script is a simple ‘for loop’ which uses the USERID column as a unique variable to generate the dictionary of users.

Use your imagination to get the generated code back into your live code repository. 
