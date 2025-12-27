-- =====================================================
-- Hotel Booking Dashboard Queries
-- Description: SQL queries for charts and KPIs
-- Layer: Gold (Business-ready data)
-- =====================================================

-- -----------------------------
-- Bar Chart: Top 5 Cities by Revenue
-- -----------------------------
SELECT hotel_city, total_revenue
FROM GOLD_AGG_HOTEL_CITY_SALES
WHERE total_revenue IS NOT NULL
ORDER BY total_revenue DESC
LIMIT 5;

-- -----------------------------
-- Bar Chart: Bookings by Status
-- -----------------------------
SELECT booking_status, COUNT(*) AS total
FROM GOLD_BOOKING_CLEAN
GROUP BY booking_status;

-- -----------------------------
-- Bar Chart: Bookings by Room Type
-- -----------------------------
SELECT room_type, COUNT(*) AS total_bookings
FROM GOLD_BOOKING_CLEAN
GROUP BY room_type
ORDER BY total_bookings DESC;

-- -----------------------------
-- Line Chart: Monthly Revenue
-- -----------------------------
SELECT date, total_revenue
FROM GOLD_AGG_DAILY_BOOKING
ORDER BY date;

-- -----------------------------
-- Line Chart: Monthly Bookings
-- -----------------------------
SELECT date, total_booking
FROM GOLD_AGG_DAILY_BOOKING
ORDER BY date;

-- =====================================================
-- Key Performance Indicators (KPIs)
-- =====================================================

-- KPI: Average Booking Value
SELECT AVG(total_amount) AS avg_booking_value
FROM GOLD_BOOKING_CLEAN;

-- KPI: Total Guests
SELECT SUM(num_guests) AS total_guests
FROM GOLD_BOOKING_CLEAN;

-- KPI: Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM GOLD_BOOKING_CLEAN;

-- KPI: Total Bookings
SELECT COUNT(*) AS total_bookings
FROM GOLD_BOOKING_CLEAN;
