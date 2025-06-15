## Quiz 3 (5 min)
1. When installing software from source code, you first extract a file like application.tar.gz. Which command is used for extracting .tar.gz files, and where would you typically run the ./configure command afterward? <br>
a. `tar -cvf application.tar.gz`; In /usr/local/src <br>
b. `tar -xvzf application.tar.gz`; In the extracted source directory <br>
c. `untar -xvzf application.tar.gz`; In the extracted source directory <br>
d. `gzip -d application.tar.gz`; In the /tmp directory <br>
-> b

2. When building software from source, the ./configure script checks system dependencies. If you want to save the output of the ./configure command to a file named configure.out instead of displaying it on your screen, which command would you use? <br>
a. `./configure < configure.out`<br>
b. `./configure >> configure.out`<br>
c. `./configure > configure.out`<br>
d. `./configure | configure.out`<br>
-> c

3. If a process is unresponsive, you might need to terminate it using the kill command. Which signal number is used to forcefully stop a process unconditionally, and which command would you use to find the process ID (PID) first?<br>
a. Signal 9 (SIGKILL); `top`<br>
b. Signal 2 (SIGINT); `pstree`<br>
c. Signal 15 (SIGTERM); `ps aux`<br>
d. Signal 9 (SIGKILL); `ps aux`<br>
-> d

4. You installed a software package using RPM. If you want to find the location of the configuration files installed by a specific package, say xvnkb, which rpm command option would you use?<br>
a. `rpm -qi xvnkb`<br>
b. `rpm -qd xvnkb`<br>
c. `rpm -ql xvnkb`<br>
d. `rpm -qc xvnkb`<br>
-> d

5. How can you view processes in a tree-like structure and pipe the output to a command that allows you to scroll through it page by page?<br>
a. `top | less`<br>
b. `pstree | more`<br>
c. `ls -l /proc | less`<br>
d. `ps aux | more`<br>
-> b

6. Which type of process runs in the background, often handles system functions, and is typically not associated with a terminal (indicated by ? in the TTY field of ps output)? What special file permission is sometimes set on executable files to allow regular users to run them with the permissions of the file's owner?<br>
a. Daemon process; SUID<br>
b. Orphan process; Sticky Bit<br>
c. Child process; SGID<br>
d. Zombie process; Standard execute permission<br>
-> a

7. After installing or updating software using yum install or yum update, you might need to restart a service. Which command is used to manage services, such as starting or enabling httpd to run at boot time?<br>
a. `sudo service httpd restart`<br>
b. `init 3` then `init 5`<br>
c. `systemctl start httpd` or `systemctl enable httpd`<br>
d. `service httpd start` or `chkconfig httpd on`<br>
-> c

8. The nice command is used to set or modify the priority (nice number) of a process. What is the default nice value for a process started by a regular user, and what is the lowest numerical nice value a superuser can set for the highest priority?<br>
a. Default: 10; Superuser lowest: 0<br>
b. Default: 10; Superuser lowest: -19<br>
c. Default: 0; Superuser lowest: 19<br>
d. `Default: 0; Superuser lowest: -20<br>
-> d

9. If you execute a long-running command like find / -name "*.log" and realize you need your terminal back, how can you temporarily suspend the command and then resume it in the background?<br>
a. Press Ctrl+C; then type bg<br>
b. Press Ctrl+Z; then type fg<br>
c. Press Ctrl+Z; then type bg<br>
d. Press Ctrl+C; then type fg<br>
-> c

10.  To view a list of all installed RPM packages and search specifically for packages containing the name 'httpd', which command sequence would you use?<br>
a. `yum list installed httpd`<br>
b. `find / -name "*httpd.rpm"`<br>
c. `rpm -qa | grep httpd`<br>
d. `rpm -q httpd | grep install`<br>
-> c
