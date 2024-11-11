# Airport Database

Airport Database is a project designed to store, organize, and retrieve essential information about airports, flights, and airline operations. This project simulates an airport management system with a focus on managing data for airplanes, airports, flights, airlines and passengers records in an organized and efficient way.

This project is structured to showcase the foundational aspects of an airport management system, allowing users to interact with a range of data points crucial for airport operations. By maintaining organized records for airplanes, airports, flights, airlines, and passengers, the database enables streamlined data retrieval and management of essential information.

## Built With

This database is based on technology like below:
* Microsoft SQL Server

## Features

✅ **Comprehensive Airport Management:** Includes tables for storing and managing data about airplanes, airports, flights, airlines, and passengers, offering a broad view of airport and airline operations.

✅ **Flight Scheduling and Details:** Manages and organizes information on flight schedules, departure and arrival times, destinations, and associated airlines.

✅ **Airline Information Management:** Maintains data on airlines, including airline codes and associated flights, enabling an organized approach to airline management.

✅ **Passenger Records Management:** Stores and updates detailed passenger records, allowing for efficient passenger tracking and reservation management.

✅ **Data Validation and Consistency:** Enforces relational database constraints to maintain data accuracy and integrity across tables.

✅ **Automated Backup and Restore Management:** Includes configuration for daily and weekly automated database backups, ensuring data is consistently safeguarded.

✅ **Database Mail and Alert System:** Configures Database Mail and alert notifications for SQL Server Agent, enabling administrators to monitor and receive real-time alerts about job statuses.

## Prerequisites

Before you begin, ensure that [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) is installed on your system. If it’s not, please follow the [installation](https://learn.microsoft.com/en-us/sql/database-engine/install-windows/install-sql-server) guide to download and set it up correctly.

## Installation

1. Clone or download the repository to your local machine:
   ```
   git clone https://github.com/ndriqimlahu/airport-database.git
   ```
2. Open SQL Server Management Studio (SSMS) and connect to your SQL Server instance.
3. In SSMS, restore the database:
    - Right-click on **Databases** in the Object Explorer.
    - Select **Restore Database...** option.
    - Navigate to the repository folder on your local machine.
    - Choose the `Airport_Database.bak` file from the `FinalProject` folder.
    - Follow the prompts to complete the restoration.
4. Once restored, verify that the `Airport` database is visible under Databases in SSMS and ready for use.

## Screenshots

Below you can see some additional useful screenshots of what the database looks like and how it can be used:

* Connection of tables with Diagram
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/06-Lidhja%20e%20tabelave%20me%20Diagram.JPG">

* Creation and selection of VIEW
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/08-Selektimi%20i%20VIEW.JPG">

* Execution and selection of STORED PROCEDURE
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/11-Selektimi%20pas%20ekzekutimit%20t%C3%AB%20STORED%20PROCEDURE.JPG">

* Creating the Audit table
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/12-Krijimi%20i%20tabel%C3%ABs%20Audit.JPG">

* Creating the TRIGGER
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/13-Krijimi%20i%20TRIGGER.JPG">

* Updating and selection of the table
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/14-Update%20dhe%20Selekti%20i%20tabel%C3%ABs.JPG">

* Creating a Backup Job
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/15-Krijimi%20i%20Job-it%20p%C3%ABr%20BackUp.JPG">

* Setting the time to perform the Job
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/16-Caktimi%20i%20or%C3%ABs%20p%C3%ABr%20kryerjen%20e%20Job-it.JPG">

* Mail Database Configuration (Step 1)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/19-Konfigurimi%20i%20Database%20Mail-3.JPG">

* Mail Database Configuration (Step 2)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/20-Konfigurimi%20i%20Database%20Mail-4.JPG">

* Mail Database Configuration (Step 3)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/21-Konfigurimi%20i%20Database%20Mail-5.JPG">

* Mail Database Configuration (Step 4)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/25-Konfigurimi%20i%20Database%20Mail-9.JPG">

* Alert System for SQL Server Agent
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/27-Alert%20System%20p%C3%ABr%20SQL%20Server%20Agent.JPG">

* Creating Job Step (Step 1)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/28-Job%20Step-1.JPG">

* Creating Job Step (Step 2)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/29-Job%20Step-2.JPG">

* Job Steps are created
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/30-Job%20Step%20%C3%ABsht%C3%AB%20kryer.JPG">

* Creation of Alert
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/31-Alert%20krijimi.JPG">

* Creation of Operator
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/32-Operator%20krijimi.JPG">

* Operator is created
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/33-Operator%20i%20krijuar.JPG">

* Creation of Error Alert through Email
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/34-Alert%20error%20p%C3%ABrmes%20Email.JPG">

* Alert is created
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/35-Alerti%20i%20kryer.JPG">

* Notification via email
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/36-Njoftimi%20per%20email.JPG">

* Job starts successfully
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/37-Job%20starton%20me%20sukses.JPG">

* Job completed successfully and email sent
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/38-Job%20u%20krye%20me%20sukses.JPG">

* Backup completed successfully
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/39-BackUp%20i%20kryer%20me%20sukses.JPG">

## Support

If you find this project useful, please consider giving it a star!
