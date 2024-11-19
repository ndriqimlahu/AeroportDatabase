# Airport Database

**Airport Database** is a database system designed to store, organize, and retrieve essential information about airports, flights, and airline operations. This project simulates an airport management system with a focus on managing data for airplanes, airports, flights, airlines and passengers records in an organized and efficient way.

This project is structured to showcase the core functionality of an airport management system, allowing users to interact with a range of data points crucial for airport operations. By maintaining organized records for airplanes, airports, flights, airlines, and passengers, the database enables streamlined data retrieval and management of essential information.

## Built With

This database was designed and developed using the following technology:
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

Before starting, ensure that the [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) is installed on your system.
- Follow the [installation guide](https://learn.microsoft.com/en-us/sql/database-engine/install-windows/install-sql-server) to download, install and set it up correctly.
- Verify your SQL Server installation by launching SQL Server Management Studio (SSMS) and connecting to your SQL Server instance.

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

* Creating tables — Airplane | Airport
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/01-Krijimi%20i%20tabelës%20Aeroplani.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/02-Krijimi%20i%20tabelës%20Aeroporti.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creating tables — Flights | Airlines
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/03-Krijimi%20i%20tabelës%20Fluturimet.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/04-Krijimi%20i%20tabelës%20Kompanit.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creating table — Passengers | Connection of tables with Diagram
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/05-Krijimi%20i%20tabelës%20Pasagjeret.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/06-Lidhja%20e%20tabelave%20me%20Diagram.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creation and selection of VIEW | Execution and selection of STORED PROCEDURE
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/08-Selektimi%20i%20VIEW.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/11-Selektimi%20pas%20ekzekutimit%20t%C3%AB%20STORED%20PROCEDURE.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creating the Audit table | Creating the TRIGGER
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/12-Krijimi%20i%20tabel%C3%ABs%20Audit.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/13-Krijimi%20i%20TRIGGER.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Updating and selection of the table | Creating a Backup Job
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/14-Update%20dhe%20Selekti%20i%20tabel%C3%ABs.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/15-Krijimi%20i%20Job-it%20p%C3%ABr%20BackUp.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Setting the time to perform the Job | Mail Database Configuration (Step 1)
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/16-Caktimi%20i%20or%C3%ABs%20p%C3%ABr%20kryerjen%20e%20Job-it.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/19-Konfigurimi%20i%20Database%20Mail-3.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Mail Database Configuration (Step 2) | Mail Database Configuration (Step 3)
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/20-Konfigurimi%20i%20Database%20Mail-4.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/21-Konfigurimi%20i%20Database%20Mail-5.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Mail Database Configuration (Step 4) | Alert System for SQL Server Agent
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/25-Konfigurimi%20i%20Database%20Mail-9.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/27-Alert%20System%20p%C3%ABr%20SQL%20Server%20Agent.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creating Job Step (Step 1) | Creating Job Step (Step 2)
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/28-Job%20Step-1.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/29-Job%20Step-2.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Job Steps are created | Creation of Alert
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/30-Job%20Step%20%C3%ABsht%C3%AB%20kryer.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/31-Alert%20krijimi.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creation of Operator | Operator is created
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/32-Operator%20krijimi.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/33-Operator%20i%20krijuar.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Creation of Error Alert through Email | Alert is created
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/34-Alert%20error%20p%C3%ABrmes%20Email.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/35-Alerti%20i%20kryer.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Notification via email | Job starts successfully
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/36-Njoftimi%20per%20email.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/37-Job%20starton%20me%20sukses.JPG" align="top" width="48%" height="auto">
   <hr>
</div>

* Job completed successfully and email sent | Backup completed successfully
<div>
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/38-Job%20u%20krye%20me%20sukses.JPG" align="top" width="48%" height="auto">
   <img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/FinalProject/FinalProject_Preview/39-BackUp%20i%20kryer%20me%20sukses.JPG" align="top" width="48%" height="auto">
</div>

## Support

If you find this project useful, please consider giving it a star!
