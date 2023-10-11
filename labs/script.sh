#!/bin/bash

#Step 1: Checking if nginx is installed
systemctl is-active nginx

#Step 2: Installing nginx
sudo apt-get update
sudo apt-get -y install nginx

#Step 3: Creating the labs directory
sudo mkdir /var/www/html/labs

#Step 4: Changing ownership of labs to the current User
sudo chown zofo&karabo:root /var/wwww/html/labs

#Step 5: Creating a symbolic link (html) under the home directory
ln -s /var/www/html/labs html

#Step 6: Creating an Index.html file in the directory labs
echo "<html>
<head>
    <title>Student Information System</title>
</head>
<body>
    <h1>STUDENT INFORMATIOM PAGE</h1>
    <p>Student Details:</p>
    <ul>
        <li>Initials: </li>
        <li>Names: Nqobile and Karabo</li>
        <li>Student numberS: </li>
        <li>Course: Electrical Engineering and Computer Systems</li>
    </ul>
</body>
</html>" | sudo tee /var/www/html/labs/index.html

echo "Setup complete! Access the webpage by visiting http://your-vm-ip-address"

