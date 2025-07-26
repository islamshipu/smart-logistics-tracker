-- Smart Logistics Tag Tracker - SQL Schema and Sample Data

-- 1. Table: Locations
CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Address TEXT
);

-- 2. Table: Vehicles
CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY,
    VehicleNumber VARCHAR(50),
    DriverName VARCHAR(100),
    Capacity INT
);

-- 3. Table: Shipments
CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY,
    OriginID INT,
    DestinationID INT,
    VehicleID INT,
    DispatchTime DATETIME,
    EstimatedArrival DATETIME,
    ActualArrival DATETIME,
    Status VARCHAR(50),
    FOREIGN KEY (OriginID) REFERENCES Locations(LocationID),
    FOREIGN KEY (DestinationID) REFERENCES Locations(LocationID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
);

-- 4. Table: Shipment_Updates (for tracking)
CREATE TABLE Shipment_Updates (
    UpdateID INT PRIMARY KEY,
    ShipmentID INT,
    UpdateTime DATETIME,
    CurrentLocation VARCHAR(100),
    Note TEXT,
    FOREIGN KEY (ShipmentID) REFERENCES Shipments(ShipmentID)
);

-- Sample Insert
INSERT INTO Locations VALUES (1, 'Warehouse A', '123 Industrial Rd');
INSERT INTO Locations VALUES (2, 'Retail Store X', '456 Market St');

INSERT INTO Vehicles VALUES (1, 'TX-9884', 'John Doe', 1000);

INSERT INTO Shipments VALUES
(1, 1, 2, 1, '2025-07-25 08:00:00', '2025-07-25 16:00:00', NULL, 'In Transit');

INSERT INTO Shipment_Updates VALUES
(1, 1, '2025-07-25 10:00:00', 'Highway 77', 'On schedule');
