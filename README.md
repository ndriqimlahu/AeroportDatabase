<!-- PROJECT LOGO -->
<p align="center">
  <img src="https://github.com/ndriqimlahu/ndriqim-lahu-portfolio/blob/main/assets/portfolio/AirportDatabase.png" alt="Logo" width="250" height="250">
  <h3 align="center">Airport Database</h3>
  <p align="center">
    Ndriçim Lahu
    <br>
    <br>
    <a href="https://github.com/ndriqimlahu/airport-database/issues">Report Bug</a>
    ·
    <a href="https://github.com/ndriqimlahu/airport-database/issues">Request Feature</a>
  </p>
</p>


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#support">Support</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

The project called `Airport Database` is an database project where it is designed and developed to be managed and administered for the airport. In this database you can navigate into different tables which are “Aeroplani”, “Aeroporti”, “Fluturimet”, “Kompanit” and “Pasagjeret”.

This project started from scratch where I worked and completed, also I made some improvements in the back-end side of Database Development, such as the creating of tables,  relational connection between tables by using the diagram, connection with JOIN, JOIN ALL, INTERSECT and EXCEPT, adding and using the string and date functions, creating views, creating functions, creating pivoted table, grouping the tables by cube and rollup, adding and using the SUM(), RANK(), DENSE_RANK functions, ordering by ASC and DESC, creating and updating the stored procedure, declaring variables and manipulation with data, creating the audit table, creation of trigger, updating and select, managing of backup and restore for entire week of database, creating of job for backup, configuration of database mail, alert system for SQL Server Agent, receiving the email for job succeed and many more things.


### Built With

This database project is based on technology like below:

* Microsoft SQL Server


<!-- GETTING STARTED -->
## Getting Started

By getting started with the project, first you need to take a look at the required `Prerequisites` and after that the `Installation` steps.


### Prerequisites

In order to open this database is required to have an Database Management System (Microsoft SQL Server).


### Installation

1. Download the code or Clone the repo:
   ```terminal
   git clone https://github.com/ndriqimlahu/airport-database.git
   ```
2. Open the repo folder and go to `Full Project` folder.
3. After that use the MSSQL Server and Restore the database by choosing the `2. Project_Aeroport.bak` file.
4. Then you can execute the SQL Query from `Assignment` folder which are with extension `.sql` file.


<!-- USAGE -->
## Usage

There you can see some useful additional screenshots of how the project looks like and how can be used.

* Krijimi i tabelës Aeroplani
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/01-Krijimi%20i%20tabel%C3%ABs%20Aeroplani.JPG">

* Krijimi i tabelës Aeroporti
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/02-Krijimi%20i%20tabel%C3%ABs%20Aeroporti.JPG">

* Krijimi i tabelës Fluturimet
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/03-Krijimi%20i%20tabel%C3%ABs%20Fluturimet.JPG">

* Krijimi i tabelës Kompanit
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/04-Krijimi%20i%20tabel%C3%ABs%20Kompanit.JPG">

* Krijimi i tabelës Pasagjeret
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/05-Krijimi%20i%20tabel%C3%ABs%20Pasagjeret.JPG">

* Lidhja e tabelave me Diagram
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/06-Lidhja%20e%20tabelave%20me%20Diagram.JPG">

* Krijimi i VIEW
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/07-Krijimi%20i%20VIEW.JPG">

* Selektimi i VIEW
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/08-Selektimi%20i%20VIEW.JPG">

* Krijimi i STORED PROCEDURE
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/09-Krijimi%20i%20STORED%20PROCEDURE.JPG">

* Ekzekutimi i STORED PROCEDURE
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/10-Ekzekutimi%20i%20STORED%20PROCEDURE.JPG">

* Selektimi pas ekzekutimit të STORED PROCEDURE
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/11-Selektimi%20pas%20ekzekutimit%20t%C3%AB%20STORED%20PROCEDURE.JPG">

* Krijimi i tabelës Audit
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/12-Krijimi%20i%20tabel%C3%ABs%20Audit.JPG">

* Krijimi i TRIGGER
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/13-Krijimi%20i%20TRIGGER.JPG">

* Update dhe Selekti i tabelës
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/14-Update%20dhe%20Selekti%20i%20tabel%C3%ABs.JPG">

* Krijimi i Job-it për BackUp
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/15-Krijimi%20i%20Job-it%20p%C3%ABr%20BackUp.JPG">

* Caktimi i orës për kryerjen e Job-it
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/16-Caktimi%20i%20or%C3%ABs%20p%C3%ABr%20kryerjen%20e%20Job-it.JPG">

* Konfigurimi i Database Mail (Hapi 1)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/17-Konfigurimi%20i%20Database%20Mail-1.JPG">

* Konfigurimi i Database Mail (Hapi 2)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/18-Konfigurimi%20i%20Database%20Mail-2.JPG">

* Konfigurimi i Database Mail (Hapi 3)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/19-Konfigurimi%20i%20Database%20Mail-3.JPG">

* Konfigurimi i Database Mail (Hapi 4)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/20-Konfigurimi%20i%20Database%20Mail-4.JPG">

* Konfigurimi i Database Mail (Hapi 5)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/21-Konfigurimi%20i%20Database%20Mail-5.JPG">

* Konfigurimi i Database Mail (Hapi 6)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/22-Konfigurimi%20i%20Database%20Mail-6.JPG">

* Konfigurimi i Database Mail (Hapi 7)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/23-Konfigurimi%20i%20Database%20Mail-7.JPG">

* Konfigurimi i Database Mail (Hapi 8)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/24-Konfigurimi%20i%20Database%20Mail-8.JPG">

* Konfigurimi i Database Mail (Hapi 9)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/25-Konfigurimi%20i%20Database%20Mail-9.JPG">

* Database Mail Test me anë të dërgimit me email
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/26-Database%20Mail%20Test.JPG">

* Alert System për SQL Server Agent
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/27-Alert%20System%20p%C3%ABr%20SQL%20Server%20Agent.JPG">

* Krijimi i Job Step (Hapi 1)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/28-Job%20Step-1.JPG">

* Krijimi i Job Step (Hapi 2)
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/29-Job%20Step-2.JPG">

* Job Step është krijuar
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/30-Job%20Step%20%C3%ABsht%C3%AB%20kryer.JPG">

* Krijimi i Alert
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/31-Alert%20krijimi.JPG">

* Krijimi i Operator
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/32-Operator%20krijimi.JPG">

* Operator është krijuar
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/33-Operator%20i%20krijuar.JPG">

* Krijimi i Alert error përmes Email
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/34-Alert%20error%20p%C3%ABrmes%20Email.JPG">

* Alert është krijuar
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/35-Alerti%20i%20kryer.JPG">

* Njoftimi përmes email
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/36-Njoftimi%20per%20email.JPG">

* Job starton me sukses
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/37-Job%20starton%20me%20sukses.JPG">

* Job u krye me sukses dhe dërgimi me email
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/38-Job%20u%20krye%20me%20sukses.JPG">

* BackUp i kryer me sukses
<img src="https://raw.githubusercontent.com/ndriqimlahu/airport-database/main/Full%20Project/Preview/39-BackUp%20i%20kryer%20me%20sukses.JPG">


<!-- LICENSE -->
## License

See the `LICENSE` file for more information.


<!-- SUPPORT -->
## Support

Issues and feature requests are welcome!

Give a ⭐️ if you liked this project!

Support the author on <a href="https://www.buymeacoffee.com/ndriqimlahu">Buy Me a Coffee</a>
