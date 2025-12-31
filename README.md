# Cruise Critic Database & Analytics Project

## Overview
This project is based on a completed **EECS 3421 – Database Systems** group project that designed and implemented a relational database for a simplified **Cruise Critic** cruise booking and review platform.  

As an extension beyond the course requirements, a **Power BI analytics layer** was added to transform the transactional database into an analytical decision-support system.

---

## Original Database Project (EECS 3421)

### Objective
Design and implement a relational database to support core Cruise Critic functionality, including cruise search, deals, reviews, destinations, and community interaction.

### Technologies
- Microsoft SQL Server  
- Azure Data Studio  
- ERDPlus  

### Key Features
- Fully normalized relational schema  
- Primary and foreign key constraints  
- Referential and domain integrity enforcement  
- Sample data populated across all tables  
- Management-focused SQL queries (pricing, ratings, demand)

### Core Tables
- CRUISE_LINE  
- CRUISE_SHIP  
- CRUISE_TRIP  
- CRUISE_DEAL  
- DESTINATION  
- PORT  
- COMMUNITY_REVIEW  
- USER_ACCOUNT  
- FORUM  


---

## Power BI Analytics Extension

### Purpose
The Power BI extension adds an analytical layer on top of the relational database to support business insights and OLAP-style analysis.

### Tools
- Power BI 
- SQL  
- DAX
- Database Markup Language

### Data Model
- **Fact Table:** FACT_CRUISE_ANALYTICS  
- **Dimensions:** Cruise Line, Cruise Trip, Destination, Cruise Ship, Date  

**Grain:** One row per cruise deal per trip.

The STAR schema is shown below:
(Note the surrogate keys for each DIMENSION table and the FACT table)

![Cruise Analytics Star Schema](PowerBIModelling/StarSchema.png)

The PowerBI Dashboard metrics are created based off of the STAR Schema

### Power BI Data Model Implementation
The analytical model follows a star schema design using surrogate keys conceptually for all dimensions. In the Power BI implementation, stable natural keys (Trip ID, Company Name, Ship Name, Destination Name, and Review Date) are used directly to define relationships between the fact and dimension tables. This approach is sufficient given the static nature of the dataset and avoids unnecessary ETL complexity while preserving the integrity of the star schema.


### Key Metrics
- Average Rating  
- Average Price  
- Price per Day  
- Trip Duration  

---

## Dashboard Insights
The dashboard enables analysis of:
- Best-value cruise lines (price vs rating)
- Premium vs budget cruise offerings
- Popular destinations and departure ports
- Rating trends over time



