# Smart Logistics Tracker

## Project Overview
The **Smart Logistics Tracker** is a database schema designed to support a logistics and fleet management system. It manages data related to shipments, vehicles, locations, and real-time tracking updates. This system provides the foundation to build applications that optimize delivery operations, monitor vehicle assignments, and track shipment statuses efficiently.

## Features
- Manage logistics locations such as warehouses and delivery points.
- Store and track vehicles and their assigned drivers.
- Monitor shipments including origin, destination, dispatch, estimated and actual arrival times.
- Record real-time shipment updates with location and status notes.

## Database Tables
- **Locations**: Stores information about logistic hubs, warehouses, and delivery destinations.
- **Vehicles**: Contains details about vehicles and drivers.
- **Shipments**: Tracks shipments from origin to destination including scheduling and status.
- **Shipment_Updates**: Logs real-time updates for each shipment.

## How to Use
1. Import the `smart-logistics-tracker.sql` script into your SQL database management system (e.g., MySQL, PostgreSQL, SQL Server).
2. Run the script to create tables and insert sample data.
3. Use standard SQL queries to interact with the database or integrate with an application backend.
4. Extend the database with additional features like analytics, route optimization, or integration with GPS tracking.

## Sample Query
```sql
-- List all shipments currently in transit
SELECT ShipmentID, OriginID, DestinationID, VehicleID, DispatchTime, EstimatedArrival, Status
FROM Shipments
WHERE Status = 'In Transit';

