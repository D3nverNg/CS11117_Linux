## Quiz 5 (10 min)
1. Which SSH command is used to copy files securely between a local and a remote host? <br>
a. `scpkey` <br>
b. `sshtunnel` <br>
c. `ssh` <br>
d. `scp` <br>
-> d

2. Which command is used to connect to a remote server via SSH? <br>
a. `ping <user>@<host>` <br>
b. `ssh <user>@<host>` <br>
c. `sftp <user>@<host>` <br>
d. `scp <user>@<host>` <br>
-> b

3. When creating multiple Virtual Hosts on the same IP in Apache, which directive determines which site is selected?<br>
a. The ServerName in the Virtual Host configuration<br>
b. The port used<br>
c. The network protocol used (TCP/UDP)<br>
d. The user account name on the server<br>
-> a

4. When running `dnf install httpd`, what is the result?<br>
a. Remove the httpd software from the system<br>
b. Check the status of the httpd service<br>
c. Check the network status of httpd<br>
d. Install the httpd software on the system<br>
-> d

5. What is the result of running `snap list`?<br>
a. Shows the status of the kernel<br>
b. Lists all the software installed via Snap<br>
c. Shows the user login status on the system<br>
d. Shows the network status of the system<br>
-> b

6. What is the default port used by SSH?<br>
a. 443<br>
b. 22<br>
c. 21<br>
d. 80<br>
-> b

7. Which command is used to validate the syntax of an Apache configuration file before restarting the service?<br>
a. `apache2ctl reload`<br>
b. `service apache2 status`<br>
c. `httpd -t`<br>
d. `apache2 restart`<br>
-> c

8. When editing the Apache Virtual Host file, which command is used to enable the site on Debian/Ubuntu?<br>
a. `ln site <site_name>`<br>
b. `chmod site <site_name>`<br>
c. `touch site <site_name>`<br>
d. `a2ensite <site_name>`<br>
-> d

9. Which file is typically used to store authorized public keys for SSH login?<br>
a. ~/.ssh/config<br>
b. ~/.ssh/known_hosts<br>
c. ~/.ssh/authorized_keys<br>
d. ~/.ssh/id_rsa<br>
-> c

10. When editing a Virtual Host in Nginx, which command should be run to apply the changes?<br>
a. `chmod +x nginx`<br>
b. `nginx install`<br>
c. `nginx configure site`<br>
d. `nginx -t` and then `systemctl reload nginx`<br>
-> d

11. When creating a Virtual Host in Nginx, which directive specifies the location of the HTML files to serve?<br>
a. listen <br>
b. error_log <br>
c. server_name <br>
d. root <br>
-> d

12. What is an advantage of Nginx over Apache in many cases? <br>
a. Nginx performs better than Apache on Windows <br>
b. Nginx is highly efficient in handling many concurrent connections <br>
c. Nginx has a built-in text editor <br>
d. Nginx can only run on Linux, while Apache works on any operating system <br>
-> b

13. What is the main advantage of using DNF on RHEL 9 compared to YUM on RHEL 7?<br>
a. DNF can install packages without internet access<br>
b. DNF is built directly into the Linux kernel<br>
c. DNF has more efficient automatic dependency handling compared to YUM<br>
d. DNF only works on Fedora, while YUM works only on RHEL<br>
-> c

14. When using Snap to install software on Ubuntu, in what context does the software run?<br>
a. As part of the Linux kernel<br>
b. In an automatically created virtual machine<br>
c. In an isolated sandbox, limiting access to the system<br>
d. Directly on the system like traditional APT packages<br>
-> c

15.  When editing Nginx configuration, which command is used to test the syntax?<br>
a. `nginx test`<br>
b. `nginx status`<br>
c. `nginx check`<br>
d. `nginx -t`<br>
-> d

16. What is the result of running `snap refresh` on the system?<br>
a.Check and update all Snap-installed software to the latest version<br>
b. Remove all software installed via Snap<br>
c. Check the integrity of the existing Snap packages<br>
d. Check the status of the system’s network connectionsbr>
-> a

17. In Apache, where is the Virtual Host configuration typically stored?<br>
a. /etc/apache2/sites-available/<site_name>.conf<br>
b. /etc/apt/sources.list<br>
c. /etc/passwd<br>
d. 10/etc/apache2/apache2.conf0<br>
-> a

18. When running Nginx as a reverse proxy, which directive specifies the backend address to forward requests?<br>
a. listen<br>
b. return<br>
c. proxy_pass<br>
d. server_name<br>
-> c

19.  Where is the main Apache configuration file typically located on RedHat?<br>
a. /etc/nginx/nginx.conf<br>
b. /etc/httpd/httpd.conf<br>
c. /etc/snap/snapd.conf<br>
d. /etc/apache2/apache2.conf<br>
-> b

20. When running the `apt update` command on Debian/Ubuntu, what does it do?<br>
a. Updates all software on the system<br>
b. Reboots the system<br>
c. Removes unnecessary packages<br>
d. Checks and downloads the latest package lists from repositories<br>
-> d
