## Installation Guide

### Setting Up SQL Database:

 - Before you are able to launch the website you will need to have InteliJ to open the application and configure a MySQL database to store information, such as information about events and blog pages. To do so first find the reuge_db.sql file in the repository

 - From here copy this code into a connection in MySQLWorkbench, and at the very top of the file add the following:

		CREATE DATABASE refuge_db  
		USE refuge_db

 - After doing so, you can select all the text in the file using CTRL+A/CMD+A and then by pressing the query dropdown at the top of your screen and clicking Execute (All or Selection)

 - Once done in IntelliJ click the databases icon (4 stacked circles), in this menu click the plus icon and then new data source, then click MySQL

 - Here choose the name refuge_db@localhost, ensure the host is set to localhost and enter the username and password you previously set in MySQLWorkbench.

 - Once done click the 1 of … box next to the new database and ensure that only refuge_db is selected.

 - Finally, go into application properties and replace the username and password with the password chosen previously in MySQLWorkbench

 - You will then be able to run the project and can access the website at [http://localhost:8080/](http://localhost:8080/)


### Configuring Email Plugin:

 1. To configure the email plugin to automatically send email notifications to practitioners when a new blog is waiting to be approved you need to configure the email plugin found in src --> resources --> application.properties.

 2. In this file scroll down and you will see spring.mail configuration options, if you decide to use a Gmail account to do this you can leave the host the same and only have to enter your Gmail address and a Gmail App Password, then go to com/example/refugeapproject/controller/EmailService.java and change the email in their to your gmail. Finally, go to Project/RefugEAP-Project/src/main/java/com/example/refugeapproject/controller/PageController.java and notice the first variable called yourEmail. Enter your gmail here to configure the rest of this process.
 

 3. You can also configure your own mail plugin for example if you have a specific email service provided by your webhost:
 
	a. To do this you will need to change the smtp host to the specific  
		host defined by your own web email service
		
	b. You can then enter your email address and password in the same way as you would have done before

 4. The current login for the admin portal is as followed Username: Admin1, Password: 123456  .The link for the admin portal is http://localhost:8080/login


### Software List:

1. IntelliJ (https://www.jetbrains.com/idea/)
2. MySQL Workbench (https://www.mysql.com/products/workbench/)
