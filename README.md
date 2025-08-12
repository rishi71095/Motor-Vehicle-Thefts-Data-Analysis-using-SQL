# Motor-Vehicle-Thefts-Data-Analysis-using-SQL
Data exploration project analyzing stolen vehicle trends by time, type, and location. Covers yearly, monthly, and daily theft patterns, vehicle type &amp; characteristics, and regional theft analysis with population and density insights.

*I recorded my full project walkthrough and uploaded it on YouTube which is great if you want to follow along with my thought process and hopefully make some suggestions.* Watch it [here](https://youtu.be/oedT6Fkibpk).

# Project Description:

The goal of the project was to analyze a dataset of stolen vehicles and answer specific business questions related to when, what, and where vehicles are most likely to be stolen.

## 🔹 Objective 1 – Identify when vehicles are likely to be stolen

* Analyze theft counts by year, month, and day of week
* Replace numeric weekdays with full names
* Explore patterns and trends in theft frequency

## 🔹 Objective 2 – Identify which vehicles are likely to be stolen

* Determine most and least stolen vehicle types
* Calculate average vehicle age by type
* Compare luxury vs standard theft percentages
* Build a vehicle type vs color table for top categories

## 🔹 Objective 3 – Identify where vehicles are likely to be stolen

* Count thefts per region
* Combine theft data with population and density statistics
* Compare vehicle types between the most and least dense regions

## How to Run

1. **Set up the database**  
   Run the provided SQL script:  
   `create_stolen_vehicles_db.sql`  
   
   This script will create the database, define the tables (`stolen_vehicles` and `regions`), and populate them with the necessary data (via `INSERT` statements included in the script).

2. **Run the analysis queries**  
   - Open your preferred SQL editor (e.g., MySQL Workbench, DBeaver).  
   - Connect to the database where you ran the script.  
   - Execute the analysis queries provided in the repository to reproduce the results.

3. **Review results**  
   Inspect the query outputs to answer the project objectives on vehicle theft trends.


This project is part of my data analytics portfolio, showcasing SQL data exploration, aggregation, and data transformation skills.

Dataset & challenge provided by: [Maven Analytics](https://www.mavenanalytics.io/)

_📌 The dataset and project are provided by Maven Analytics to their subscribers for learning and portfolio-building purposes._

## License

MIT

