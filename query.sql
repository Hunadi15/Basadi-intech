-- Table for Provinces
CREATE TABLE Provinces (
    ProvinceID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProvinceName VARCHAR(100) NOT NULL
);

-- Table for Resource Data
CREATE TABLE Resources (
    ResourceID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProvinceID INT,
    ResourceName VARCHAR(50),
    QuantityAvailable INT,
    Allocated INT,
    Remaining INT,
    FOREIGN KEY (ProvinceID) REFERENCES Provinces(ProvinceID)
);

INSERT INTO Provinces (ProvinceName)
VALUES
('Gauteng'),
('Western Cape'),
('KwaZulu-Natal'),
('Eastern Cape'),
('Limpopo'),
('Mpumalanga'),
('North West'),
('Free State'),
('Northern Cape');

INSERT INTO Resources (ProvinceID, ResourceName, QuantityAvailable, Allocated, Remaining)
VALUES
(4, 'Water Bottles', 3500, 0, 3500),
(4, 'Medical Kits', 900, 0, 900),
(4, 'Blankets', 2200, 0, 2200),
(4, 'Generators', 35, 0, 35),
(4, 'Tents', 140, 0, 140),
(4, 'Food Parcels', 1900, 0, 1900);