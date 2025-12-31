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

The PowerBI Dashboard metrics are created based on the STAR Schema.

### Power BI Data Model Implementation
The analytical model follows a star schema design using the surrogate keys conceptually for all dimensions. In the Power BI implementation, stable natural keys (Trip ID, Company Name, Ship Name, Destination Name, and Review Date) are used directly to define relationships between the fact and dimension tables. This approach is sufficient given the dataset's static nature and avoids unnecessary ETL complexity while preserving the integrity of the star schema.

- `FACT_CRUISE_ANALYTICS[REVIEW_DATE]`
  → `DIM_DATE[Full_Date]`

- `FACT_CRUISE_ANALYTICS[TRIP_ID]`
  → `DIM_CRUISE_TRIP[TRIP_ID]`

- `FACT_CRUISE_ANALYTICS[COMPANY_NAME]`
  → `DIM_CRUISE_LINE[COMPANY_NAME]`

- `FACT_CRUISE_ANALYTICS[SHIP_NAME]`
  → `DIM_CRUISE_SHIP[SHIP_NAME]`

- `FACT_CRUISE_ANALYTICS[DESTINATION_NAME]`
  → `DIM_DESTINATION[DESTINATION_NAME]`

All relationships are configured as **many-to-one**, with **single-direction filtering** from dimensions to the fact table.

![Cruise Analytics Star Schema](PowerBIModelling/PowerBISchema.png)


## Dashboard 1
The first dashboard enables analysis of:
- Estimated Cost (the rough approximation is given by assuming that 60% of the total revenue is cost).
- Estimated Profit (the rough approximation is given by assuming that 40% of the total revenue is profit). 
- Total Amount Spent on Cruises by Year
- Estimated Profit by Company Name
- Visual of Destination

![Cruise Analytics Star Schema](PowerBIModelling/dashboard1.png)



