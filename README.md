Setting Up SQL Database:

1.	Before you are able to launch the website you will need to configure a MySQL database to store information, such as information about events and blog pages. To do so first find the reuge_db.sql file in the repository
2.	From here copy this code into a connection in MySQLWorkbench, and at the very top of the file add the following:
CREATE DATABASE refuge_db
USE reuge_db
3.	After doing so, you can select all the text in the file using CTRL+A/CMD+A and then by pressing the query dropdown at the top of your screen and clicking Execute (All or Selection)
4.	Once done in IntelliJ click the databases icon (4 stacked circles), in this menu click the plus icon and then new data source, then click MySQL
5.	Here choose the name refuge_db@localhost, ensure the host is set to localhost and enter the username and password you previously set in MySQLWorkbench. 
6.	Once done click the 1 of … box next to the new database and ensure that only refuge_db is selected.
7.	Finally, go into application properties and replace the username and password with the password chosen previously in MySQLWorkbench
8.	You will then be able to run the project and can access the website at http://localhost:8080/

Configuring Email Plugin:

1.	To configure the email plugin to automatically send email notifications to practitioners when a new blog is waiting to be approved you need to configure the email plugin found in src resources  application.properties
2.	In this file scroll down and you will see spring.mail configuration options, if you decide to use a Gmail account to do this you can leave the host the same and only have to enter your Gmail address and a Gmail App Password
3.	You can also configure your own mail plugin for example if you have a specific email service provided by your webhost:
a.	To do this you will need to change the smtp host to the specific host defined by your own web email service
b.	You can then enter your email address and password in the same way as you would have done before
