## Quiz 2 (7 min)
1. According to the sources, what command should be used with root privileges to safely edit the /etc/sudoers file? <br>
a. `edit /etc/sudoers` <br>
b. `nano /etc/sudoers` <br>
c. `visudo` <br>
d. `vi /etc/sudoers` <br>
-> c

2. When the sticky bit is set on a directory, what is its main effect on how users can interact with files within that directory? <br>
a. Only the owner of a file or the root user can delete or rename files within the directory.<br>
b. Files created in the directory automatically inherit the group ownership of the directory.<br>
c. Any user with write permission can delete or rename any file.<br>
d. When a user executes a file in that directory, they temporarily borrow the directory's owner's permissions.<br>
-> a

3. Which of the following command sequences in Vi's Command mode will save the file and then quit the editor?<br>
a. `/text`<br>
b. `:w`<br>
c. `ZZ`<br>
d. `:q`<br>
-> c

4. Which command allows you to set an expiration date for a user account, as demonstrated in the sources with the format YYYY-MM-DD?<br>
a. `usermod -E`<br>
b. `chage -E`<br>
c. `passwd -x`<br>
d. `useradd -e`<br>
-> d

5. In Linux file permissions, what do the letters r, w, and x represent?<br>
a. Run, Watch, eXchange<br>
b. Restore, Wipe, execute<br>
c. Recover, Work, Exit<br>
d. Read, Write, eXecute<br>
-> d

6. Which character in the ls -l output permission string indicates that an entry is a directory?<br>
a. `b`<br>
b. `-`<br>
c. `d`<br>
d. `l`<br>
-> c

7. What is the command used to switch to another user account, and which option should you use to start a full login shell for that user?<br>
a. `su -`<br>
b. `runuser -p`<br>
c. `switchuser -l`<br>
d. `sudo -u`<br>
-> a

8. In Vi's Command mode, what is the command sequence to save the changes to the current file without quitting the editor?<br>
a. `:w`<br>
b. `:wq`<br>
c. `ZZ`<br>
d. `:q!`<br>
-> a

9. What command is commonly used to create a new, empty file?<br>
a. `:`<br>
b. Ctrl+C<br>
c. Esc<br>
d. Enter<br>
-> c

10.  Which command displays the last lines of a file?<br>
a. `file`<br>
b. `cat`<br>
c. `touch`<br>
d. `mkdir`<br>
-> c

11. What command is used to change the group ownership of a file or directory, while keeping the owner the same? <br>
a. `chgrp` <br>
b. `chmod` <br>
c. `chown` <br>
d. `usermod` <br>
-> a

12. How can you use the ls command to list the contents of a directory, including hidden files (those starting with a dot)? <br>
a. `ls -l` <br>
b. `ls -a` <br>
c. `ls -h` <br>
d. `ls -t` <br>
-> b

13. The pipe character (|) sends the output of one command as the input to another. Which example correctly uses a pipe to view the output of ls -R / in a paginated way using less?<br>
a. `ls -R / & less`<br>
b. `less < ls -R /`<br>
c. `ls -R / | less`<br>
d. `ls -R / > less`<br>
-> c

14. Which command is used to display the current working directory?<br>
a. `ls`<br>
b. `cd`<br>
c. `echo`<br>
d. `pwd`<br>
-> d

15. Which system file is primarily responsible for storing the encrypted password hashes and password aging information for user accounts?<br>
a. `/etc/shadow`<br>
b. `/etc/login.defs`<br>
c. `/etc/passwd`<br>
d. `/etc/group`<br>
-> a

16. In Vi's Command mode, how would you initiate a forward search for the text pattern "linux"?<br>
a. `?linux`<br>
b. `search linux`<br>
c. `/linux`<br>
d. `find linux`<br>
-> c

17. What is the specific UID (User ID) assigned to the root user account in Linux?<br>
a. 99<br>
b. 1<br>
c. 0<br>
d. 1000<br>
-> c

18. When redirecting the output of a command to a file, what is the difference between using the > operator and the >> operator?<br>
a. > redirects output, overwriting the file, while >> redirects output, appending to the file.<br>
b. > appends output, while >> overwrites.<br>
c. > redirects standard output, while >> redirects standard error.<br>
d. > is for text files, while >> is for binary files.<br>
-> a

19. According to the sources, what is the primary purpose of the umask value?<br>
a. To calculate the numeric representation of permissions.<br>
b. To set special permissions like SUID and SGID.<br>
c. To change the owner and group of a file.<br>
d. To filter the default permissions for newly created files and directories.<br>
-> c

20.  When you first open a file with the Vi editor, which main mode are you typically in by default?<br>
a. Command Mode<br>
b. Visual Mode<br>
c. Ex Mode<br>
d. Insert Mode<br>
-> a
