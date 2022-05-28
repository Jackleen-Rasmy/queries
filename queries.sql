/*  Q1 */
SELECT orderNumber,SUM(priceEach) AS totalAmount FROM `orderdetails` GROUP BY orderNumber;



/* Q2 **/

SELECT concat(empTable.firstName, ' ' ,empTable.lastName) AS fullName, 
concat(mangTable.firstName, ' ' ,mangTable.lastName) AS managerFullName 
FROM `employees` AS empTable JOIN employees AS mangTable 
ON empTable.reportsTo = mangTable.employeeNumber;



/** Q3 **/
SELECT employeeNumber,firstName,lastName FROM `employees`
WHERE officeCode = (SELECT officeCode FROM `offices` WHERE city = 'London')


/** Q4 **/
SELECT employeeNumber,firstName,lastName FROM `employees` JOIN offices 
ON offices.officeCode = employees.officeCode 
WHERE offices.city = 'London';

/** Q5 **/

SELECT customers.customerName, orders.orderNumber, SUM(orderdetails.priceEach) AS amount FROM `customers` 
JOIN orders JOIN orderdetails 
ON customers.customerNumber = orders.customerNumber 
AND orders.orderNumber = orderdetails.orderNumber 
GROUP BY customerName;




