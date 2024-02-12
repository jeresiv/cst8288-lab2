# CST8288 Lab 2
## DAO Design Patterns

### Objective
* demonstrate the Data Access Object (DAO) Design Pattern.
* use the DAO pattern to consume a csv file and update your database
* understand the importance of good input validation

### Tasks
Create an application using the DAO Pattern that will interact with the provided Database Schema (`./app/data/schema.sql`).

The application should include rigorous input validation.
* studentId - length 9 digits 
* courseId - length 7 characters - 3 letters followed by 4 digits
* term - one of three options - "WINTER", "SUMMER", "FALL" - stored in the db as 1, 2, 3 respectively
* year - length 4 digits - minimum founding of Algonquin College to now

Use the included `./app/data/database.properties.cfg` file (copy and rename the file to database.properties and store it in the same location) to contain your environment variables and establish the connection with your database. 
Do not include this file in your submission. Anyone should be able to place their own database.properties file in the same location with the same format and your application should work.

Your main function will load a CSV file (`./app/data/bulk-import.csv`, example provided, the first row is correct, each subsequent row has a few examples of problems), parse and input the data into your DB. It will then output two reports in a markdown format (`import-report.md`, `error-report.md`) into the same directory as the import file.

1. Success Report: This is a short report giving details about the successful items that were imported into the DB.
   1. Date and Time.
   2. Number of records added to each table.
2. Error Report: Give details about the items that were not able to be imported into the DB.
   1. List each row number and row content that was unable to be added to the DB.
   2. Give details about what items failed to validate.

The file we will use to mark your labs will contain 50 rows total, with 10 of those rows containing errors dispered throughout the file. 

### Assessment Criteria
* This constitutes 5% of your overall grade
* Deliver a comprehensive coding solution.
* You code should include proper commenting and coding practice according to Java
standards.
* Export your Java project (zip)
* Violating academic integrity or missing the deadline will result in a grade of 0 for your
submission.

#### Rubric
* 50 - Number of Rows in DB and Error Report
* 25 - DAO Pattern
* 5 - Well formatted Markdown Reports
* 10 - Javadocs
* 10 - JUnit tests

### Notes
1. You may notice that have used gradle instead of maven for the automation of this project. You do **NOT** have to use gradle as well, I have used it for your benefit as an example, there are other automation tools widely used in the industry. Gradle is one and now you have an example of it.
2. You can ignore the `docker.sh` file, its what I used to install and provision my db
3. Other than the use the Properties class to load the DB connection info, the location of the `database.properties` and `bulk-import.csv` files. You can modified the provided code/project however you wish.