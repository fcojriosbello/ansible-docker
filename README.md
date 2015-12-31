## WordPress+Ghost+Supervisor+Nginx+PHP-FPM Deployment

- Expects CentOS/RHEL 6.x hosts

This is a complete project faced on deployment of WordPress and Ghost on the
same server. You can control the deployment from a controller host which has
Ansible installed and deploy these services in other host. Use the `Pinicio.sh`
script to install Ansible in the controller host and `config-ssh.sh` to create
and copy ssh keys in the controlled host like this:

./config-ssh.sh 192.168.1.35

You must introduce the IP address in the `host` file that is inside
`playbooks/wordpress-nginx_rhel7` before. To run the playbook get inside the
`playbooks/wordpress-nginx_rhel7` folder, and type like this:

	ansible-playbook -i hosts site.yml

The playbooks will configure MySQL, WordPress, Ghost, Supervisor, Nginx, and PHP-FPM. When the run
is complete, you can hit access server to begin the WordPress and Ghost configuration.
