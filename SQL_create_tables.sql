CREATE TABLE Coffee (
    CoffeeID INT PRIMARY KEY,
    Species VARCHAR(255),
    Variety VARCHAR(255),
    Processing_Method VARCHAR(255),
    Aroma DECIMAL,
    Flavor DECIMAL,
    Aftertaste DECIMAL,
    Acidity DECIMAL,
    Body DECIMAL,
    Balance DECIMAL,
    Uniformity DECIMAL,
    Clean_Cup DECIMAL,
    Sweetness DECIMAL,
    Cupper_Points DECIMAL,
    Total_Cup_Points DECIMAL,
    Moisture DECIMAL,
    Category_One_Defects INT,
    Quakers INT,
    Color VARCHAR(255),
    Category_Two_Defects INT,
    unit_of_measurement VARCHAR(255),
    altitude_low_meters DECIMAL,
    altitude_high_meters DECIMAL,
    altitude_mean_meters DECIMAL
);

CREATE TABLE Owner (
    OwnerID INT PRIMARY KEY,
    Owner VARCHAR(255),
    Company VARCHAR(255)
);

CREATE TABLE Farm (
    FarmID INT PRIMARY KEY,
    Farm_Name VARCHAR(255),
    Lot_Number VARCHAR(255),
    Mill VARCHAR(255),
    ICO_Number VARCHAR(255),
    Altitude VARCHAR(255),
    Region VARCHAR(255),
    Producer VARCHAR(255),
    Number_of_Bags INT,
    Bag_Weight VARCHAR(255),
    In_Country_Partner VARCHAR(255),
    Harvest_Year YEAR,
    Grading_Date DATE,
    Expiration DATE
);

CREATE TABLE Certification (
    CertificationID INT PRIMARY KEY,
    Certification_Body VARCHAR(255),
    Certification_Address VARCHAR(255),
    Certification_Contact VARCHAR(255)
);

CREATE TABLE Country (
    CountryID INT PRIMARY KEY,
    Country_of_Origin VARCHAR(255)
);

CREATE TABLE Coffee_Owner (
    CoffeeID INT,
    OwnerID INT,
    PRIMARY KEY (CoffeeID, OwnerID),
    FOREIGN KEY (CoffeeID) REFERENCES Coffee(CoffeeID),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);

CREATE TABLE Coffee_Farm (
    CoffeeID INT,
    FarmID INT,
    PRIMARY KEY (CoffeeID, FarmID),
    FOREIGN KEY (CoffeeID) REFERENCES Coffee(CoffeeID),
    FOREIGN KEY (FarmID) REFERENCES Farm(FarmID)
);

CREATE TABLE Coffee_Certification (
    CoffeeID INT,
    CertificationID INT,
    PRIMARY KEY (CoffeeID, CertificationID),
    FOREIGN KEY (CoffeeID) REFERENCES Coffee(CoffeeID),
    FOREIGN KEY (CertificationID) REFERENCES Certification(CertificationID)
);

CREATE TABLE Coffee_Country (
    CoffeeID INT,
    CountryID INT,
    PRIMARY KEY (CoffeeID, CountryID),
    FOREIGN KEY (CoffeeID) REFERENCES Coffee(CoffeeID),
    FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);
