# End-to-End Hotel Booking Data Engineering Project in Snowflake

## Overview
This project is a **Snowflake-native hotel booking analytics pipeline** designed to transform raw booking data into meaningful insights for hotel management. The pipeline follows the **Bronze → Silver → Gold** architecture, and the final output is visualized through dashboards showing KPIs and trends.

> This project was inspired by "End-to-End Hotel Booking Data Engineering Project in Snowflake" by **Data with Jay**.

---

## Project Objectives
- Clean and standardize hotel booking data.
- Show **monthly revenue** and **monthly bookings**.
- Identify **top revenue-generating cities**.
- Analyze bookings by **room type** and **status**.
- Display key KPIs such as:
  - Total Revenue
  - Total Bookings
  - Total Guests
  - Average Booking Value

---

## Data Architecture

The project uses a **fully Snowflake-native pipeline**:

1. **Stage Layer** – Temporary storage for raw CSV files.
2. **Bronze Layer** – Raw ingested data.
3. **Silver Layer** – Cleaned and standardized data.
4. **Gold Layer** – Aggregated, analytics-ready data.
5. **Dashboard** – Visualization and KPIs.

![Data Architecture](img/Hotel_Analytics.png)

---

## Dataset

The dataset includes hotel booking records with the following fields:

- Booking ID
- Hotel ID
- Hotel City
- Customer ID
- Customer Name
- Customer Email
- Check-in Date
- Check-out Date
- Room Type (Standard, Suite, Deluxe)
- Number of Guests
- Total Amount Paid
- Currency (USD, INR, EUR)
- Booking Status (Confirmed, No-show, Canceled)


---

## Dashboard

The dashboard visualizes:

- **Top 5 cities by revenue** (Bar Chart)
- **Bookings by status** (Bar Chart)
- **Bookings by room type** (Bar Chart)
- **Monthly revenue trends** (Line Chart)
- **Monthly booking trends** (Line Chart)
- **Key KPIs**: Total Revenue, Total Bookings, Total Guests, Average Booking Value

![Dashboard Screenshot](path_to_your_dashboard_image.png)

---

## SQL Queries

The dashboard queries are in the file: `hotel_booking_dashboard.sql`.  

Highlights:

- Queries for Bar Charts, Line Charts, and KPIs.
- Based on the **Gold layer** (business-ready data).
- Fully Snowflake-native.

---

## Project Structure

