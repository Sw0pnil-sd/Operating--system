1. List a specific process: command to list all running processes associated with the daemon nginx.

2. Kill by name: How do you kill all processes named my_script.sh without looking up their PIDs manually?

3. Background execution: How do you run backup.sh in the background so it continues running even if you close the terminal (logout)?

4. Find PID: Write a command to extract only the Process ID (PID) of the sshd daemon.

5. Process Hierarchy: How do you view processes in a tree format to see which parent process spawned which child daemon?

6. Open Files: How do you list all files currently opened by a process with PID 1234?

7. Check Daemon Status: Using systemd, how do you check if the docker daemon is currently active?

8. Priority: How do you start a command heavy_calc.sh with the lowest possible CPU priority (niceness)?

Files, Copying & Archiving

9. Recursive Copy: Command to copy the folder /var/www/html to /backup/html recursively.

10. Preserve Attributes: How do you copy a file secret.key to /tmp while strictly preserving its original timestamps, ownership, and permissions?

11. Sync Directories: Use rsync to copy files from src/ to dest/, but only copy files that are newer in the source or missing in the destination.

12. Update Copy: Use cp to copy files from dir1 to dir2, but only if the source file is newer than the destination file.

13. Remote Copy: How do you Copy a local file app.conf to /etc/ on a remote server 192.168.1.50 using SSH/SCP?

14. Archive & Compress: Create a .tar.gz archive of the /var/log directory.

The find Command

15. Size Search: Find all files in /home that are larger than 500MB.

16. Time Search: Find all files in /var/log that were modified in the last 7 days.

17. User Search: Find all files in /tmp owned by the user jenkins.

18. Find & Delete: Find all empty directories inside /data and delete them automatically.

19. Permission Search: Find all files in the current directory that have full 777 permissions.

20. Find & Copy: Find all files ending in .jpg in the current folder and copy them to /images/.

Regular Expressions (Grep, Sed, Awk)

21. Email Extraction: Extract all valid email addresses from a text file contacts.txt using grep.

22. Case Insensitive Search: Search for the string "error" in syslog regardless of capitalization (e.g., finds "Error", "ERROR", "error").

23. Line Start Anchor: Find all lines in config.ini that strictly start with the word root.

24. Invert Match: Display all lines in access.log that do not contain the IP 192.168.1.1.

25. Recursive Grep: Search for the string "TODO" inside every text file in the current directory and all subdirectories.

26. Sed Replace: Replace every occurrence of the word "localhost" with "127.0.0.1" in the file hosts.txt and save the changes in place.

27. Comment Removal: Use sed or grep to view a configuration file without seeing lines that start with #.

28. IP Validation: Use a regex to find lines that look like a standard IPv4 address (digit.digit.digit.digit format) in a file.

Complex Combinations

29. Process & Regex: List all running processes, but filter the output to show only those running as root using grep.

30. Find, Regex & Execute: Find all files named *.log, search inside them for the word "Critical", and print the filename if a match is found. 
