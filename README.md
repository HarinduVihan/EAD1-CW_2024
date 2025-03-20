
# Order and Customer Management System with Java

Burger Queen is a food store which sales burgers. The process of managing sales and 
customers manually has become very inefficient within the organization. Hence developing 
an automated application to manage orders and customers is recommended.   
 
Improving efficiency within the organization is the main process of this order and employee 
management system by streamlining the operational processes. This system reduces manual 
workload and errors while providing a user-friendly interface. 
 
This system is designed and developed to store customer data and food item data in an 
efficient way. Hence it is very easy to place orders and do the necessary calculations for the 
invoices and reports. 


## Objectives 


1. The primary object is to reduce the workload of employees by managing customers 
and orders through the system. 
2. To create a robust system for managing orders and customer details. 
3. Store necessary data for the organization. 
4. Ensure data integrity and security within the database. 
5. Creating a user-friendly interface. 
6. Minimizing Errors by performing calculations, creating reports, invoices and 
implementing user input validations. 
7. Printing reports for future improvements for the organization.
   
## Graphical User Interfaces (GUI) 

1. Userlogin.java 
 
1. Userlogin.java 
 
 ![image](https://github.com/user-attachments/assets/14732346-0b12-443b-9659-908162afac4c)
      
Admin and users can login to the system using this interface by entering the correct 
username and password and pressing the login button. 
 
Check box will check whether the username and password belongs to the administrator or 
a user and will direct to the relevant interface.

2.  Menu.java
  ![image](https://github.com/user-attachments/assets/60146520-5bb7-446f-9129-297f00632b60)
 
The menu can be used to navigate through the system while viewing the current 
records that are stored in the database. 
 
There are four tabs representing the main functionalities in the system. 
 
And can exit the application or logout using menubar.

3. AddItems.java

![image](https://github.com/user-attachments/assets/cf3000e7-49f5-4a0b-afd2-6477797e1f23)

 Items can be added to the database through this interface. 
 
Item id will auto generate according to the data stored in the database. The given item 
name and price will be saved in the database when clicking the save button.  
 
The data operation can be canceled by pressing cancel key.  
 
4. Edititems.java 
      
 ![image](https://github.com/user-attachments/assets/88ba743f-b818-4069-9609-9ceca90c7a50)
 
Updating items in the database can be done by this interface. 
Entering an item id and pressing the search button will load the relevant data to the 
text Fields from the data base.  
 
Pressing save button will update the item table. 
 
5. Deleteitems.java 

  ![image](https://github.com/user-attachments/assets/1f38f1c9-756e-48ef-a0c6-db2fe7de61a0)

 Deleting items from the database can be done through this interface. 
Entering an item id and pressing the search button will load the relevant data to the 
text Fields from the data base.  
 
 
6. AddCustomers.java

 ![image](https://github.com/user-attachments/assets/362aa576-841f-49db-b491-e2865d8c498f)

Used to add customer details to the database.         
Customer id will auto generate according to the data stored in the database. The given 
details will be saved in the database when clicking the save button.  
 
The data operation can be canceled by pressing cancel key.  
 
 
7. EditCustomer.java 

  ![image](https://github.com/user-attachments/assets/d16c3139-df55-4a58-aeb7-72d18e905ddc)
  
 Updating customer details.    
 
8. DeleteCustomers.java 
 
 ![image](https://github.com/user-attachments/assets/56822a50-2bba-4c43-bba6-d2da5f30a819)

 Deleting unnecessary customer details from database. 
 
9. Order.java 
![image](https://github.com/user-attachments/assets/489ed02a-220b-4dfd-91e7-899b85a24673)

Placing orders and storing data to the database. Can used to print the invoice. 
 
Order id will automatically be generated and can’t be changed manually. Customer Name 
and the item Name can be chosen from combo boxes. The price will be captured 
automatically from the database for the relevant item. Sub total and total will be 
calculated and will be displayed in the jTable. After saving the details a invoice can be 
printed.  
 
10. Register.java
11. 
![image](https://github.com/user-attachments/assets/348a46a8-cc24-456e-b0b9-3fb7a6b980cc)

 This is the interface Creating user accounts for users. 
 
 
11. EditUser.java 

 ![image](https://github.com/user-attachments/assets/7dcb30cf-53e5-46dc-99a8-5a399a6312bd)

 Updating user account details. 
 
12. DeleteUser.java
    
![image](https://github.com/user-attachments/assets/198b9270-3081-4c85-a227-283ebcd69a94)

 Deleting unnecessary user account details. 
 
13. userMenu.java

![image](https://github.com/user-attachments/assets/7a1f9174-4ad2-471b-9707-10089dec8aca)
  
Can used to navigate through the system as a user. 
 
14.AddCusUser.java 

 ![image](https://github.com/user-attachments/assets/55f98a25-d778-45da-b6f3-aca33aa80031)

 Adding customers as a user. 
 
15. OrderUser.java

 ![image](https://github.com/user-attachments/assets/6d7560cb-b0fb-488e-b621-76f8e982c666)

  Placing orders as a user.

## Database Design 


1. admin – store details of admin. Select username and password to login. 
2. customers – store details of customers. Select customer names to place orders.  
3. Items – store details of items Select item name and price for place orders. 
4. orders – when order is placed the orderID, customername and total will save in order        
table 
5. sales – store sales details. 
6. suborders - when placing orders this table will store data on each item. And be 
truncated before every new order.   
7. userlogin - store details of users. Select username and password to login. 
##  Relational Schema 

1. admin (adminId, aName, aTel, aEmail, aAdd, aPassword) 
2. customers (cusID, cusName, cusAdd, cusNo, adminId(FK))  
3. items (itemId, itemName, itemPrice,adminId(FK)) 
4. orders (orderId, cusName, total, adminId(FK)) 
5. userlogin (userId, userName, uTel, uEmail, uAdd, password, adminId(FK)) 
6. sales (orderId, salesId, itemName, price, qnt, subtotal, orderId) 
7. suborders (orderId, subID, itemName, price, quantity, subtotal, orderId) 
8. addCustomers (userId, cusID) 
9. placeOrders(orderId, userId)
## User input validation  

1. Set disabled the text fields that referred to primary keys and coded to auto increment 
the values. 

2. Text fields that get integer or double values are set to not accepting any character 
values. 

3. Used if else statements and try catch methods to detect any blanked input to any data 
and displayed message box. 

4. Used SELECT queries to detect the existing primary keys when Updating and Deleting. If the entered primary key is not in the database, an error message will be 
shown through a message box.   
## Development Tools 

Software that used to create this project productively.

1.  NetBeans IDE 22 - Application design and development 
• Product Version: Apache NetBeans IDE 22  
• Java: 22.0.2; Java HotSpot(TM) 64-Bit Server VM 22.0.2+9-70  
• Runtime: Java(TM) SE Runtime Environment 22.0.2+9-70  
• System: Windows 11 version 10.0 running on amd64; UTF-8; en_US (nb)  
• User directory: C:\Users\Harindu\AppData\Roaming\NetBeans\22  
• Cache directory: C:\Users\Harindu\AppData\Local\NetBeans\Cache\22  
2. Database server 
• Server: 127.0.0.1 via TCP/IP 
• Server type: MariaDB 
• Server connection: SSL is not being used  
• Server version: 10.4.32-MariaDB - mariadb.org binary distribution 
• Protocol version: 10 
• User: root@localhost 
• Server charset: UTF-8 Unicode (utf8mb4) 
3. Web server 
• Apache/2.4.58 (Win64) OpenSSL/3.1.3 PHP/8.2.12 
• Database client version: libmysql - mysqlnd 8.2.12 
• PHP extension: mysqli  curl  mbstring  
• PHP version: 8.2.12 
4. phpMyAdmin -  
phpMyAdmin is a free software tool written in PHP that is intended to handle the 
administration of a MySQL or MariaDB database server. You can use phpMyAdmin 
to perform most administration tasks, including creating a database, running queries, 
and adding user accounts. (Introduction — phpMyAdmin 5.2.1 documentation) 
• Version information: 5.2.1 
 
5. XAMPP  
• XAMPP Version 8.2.12 
6. Jaspersoft® Studio 
• Jaspersoft® Studio 6.21.0 - Visual Designer for JasperReports 6.21.0.  
Copyright (C) 2010 - 2024 Cloud Software Group, Inc. All rights reserved. 

Dependencies 
 
1. jasperreports-6.21.0.jar 
 GroupId: net.sf.jasperreports 
ArtifactId: jasperreports 
Version: 6.21.0  
 
2. jasperreports-fonts-6.21.0.jar 
GroupId: net.sf.jasperreports 
ArtifactId: jasperreports-fonts 
Version: 6.21.  
 
3. jasperreports-javaflow-6.21.0.jar 
GroupId: net.sf.jasperreports 
ArtifactId: jasperreports-javaflow 
Version: 6.21.0  
 
4. mysql-connector-j-8.0.32.jar 
GroupId: com.mysql 
ArtifactId: mysql-connector-j 
Version: 8.0.32  
 
5. commons-beanutils-1.9.4.jar 
6. commons-collections-3.2.2.jar 
7. commons-collections4-4.2.jar 
8. commons-digester-2.1.jar 
9. commons-logging-1.1.1.jar 
10. ecj-3.21.0.jar 
11. jackson-annotations-2.15.3.jar 
12. jackson-core-2.15.3.jar 
13. jackson-databind-2.15.3.jar 
14. jackson-dataformat-xml-2.15.3.jar 
15. jcommon-1.0.23.jar 
16. jfreechart-1.0.19.jar 
17. net.tascalate.javaflow.api-2.7.3.jar 
18. openpdf-1.3.30.jaspersoft.3.jar 
19. protobuf-java-3.21.9.jar 
20. slf4j-api-1.8.0-beta4.jar 
21. stax2-api-4.2.1.jar 
22. woodstox-core-6.5.1.jar

## License

This project is licensed under the [MIT](https://choosealicense.com/licenses/mit/) License.

