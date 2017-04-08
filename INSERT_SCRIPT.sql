/****************************************************************************/
/*               GROUP PROJECT DATA INSERT SCRIPT                            /
/*                                                                           /
/*               Created By: Crystal Combs, Matthew Luc, Charles             /
/*                           Wigle & Jonathan Quilliams                      /
/*                                                                           /
/*               Creation Date: 04-03-2017                                   /
/*               Last Modified: 04-04-2017                                   /
/****************************************************************************/

/* RULES for keeping this the same on all of our schemas. Use your assigned
    id numbers for creating any entries into the database. Make sure all 
    entries can be tracked to each other and work from the non-foreign key 
    tables to the outmost tables in the design. 
    ID NUMBERS:
        Crystal Combs: 1-25
        Charles Wigle: 26-50
        Jonathan Quilliams: 51-75
        Matthew Luc: 76-100
        
        We are using GitHub to keep this as one document. Please commit changes
        at the end of every session you do and remember to clone it again
        before you start working on it, as others may have committed 
        changes!
        
        GITHUB LINK: https://github.com/CombsC/3020_GroupProject
        
      WE NEED TO REDESIGN THE DATABASE FAIRLY QUICKLY BASED ON THE GRADE 
      SHEET WE RECIVED FROM DELIVERABLE 1!!!
  */    
  
  
 -- Address data INSERTs
INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (1, '4037 Truax Road', '6982', 'Philadelphia', 'Pennsylvania', '19146');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (2, '6987 Calypso Crossing', '71', 'Charleston', 'West Virginia', '25362');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (3, '132 Summerview Crossing', '29', 'San Francisco', 'California', '94132');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (4, '022 Northview Trail', '7', 'Phoenix', 'Arizona', '85005');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (5, '54240 Fieldstone Court', '98058', 'El Paso', 'Texas', '79934');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (6, '0314 Dixon Avenue', '04060', 'Memphis', 'Tennessee', '38150');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (7, '0 Maywood Pass', '334', 'Kansas City', 'Kansas', '66160');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (8, '568 Coolidge Drive', '385', 'Los Angeles', 'California', '90087');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (9, '707 Waxwing Park', '1', 'Des Moines', 'Iowa', '50320');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (10, '2023 Oriole Circle', '0315', 'Baltimore', 'Maryland', '21290');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (11, '65 Sycamore Circle', '82', 'Lincoln', 'Nebraska', '68524');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (12, '079 Raven Place', '60', 'Springfield', 'Illinois', '62776');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (13, '92236 1st Drive', '18304', 'Washington', 'District of Columbia', '20268');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (14, '2 Ludington Park', '406', 'Pueblo', 'Colorado', '81010');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (15, '9 Forster Junction', '5227', 'Washington', 'District of Columbia', '20436');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (16, '9939 Basil Parkway', '74792', 'Norfolk', 'Virginia', '23514');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (17, '4 School Junction', '70', 'Baton Rouge', 'Louisiana', '70815');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (18, '19 Schurz Junction', '14', 'San Antonio', 'Texas', '78255');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (19, '514 Truax Plaza', '37', 'Lafayette', 'Louisiana', '70593');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (20, '79925 Mockingbird Court', '4627', 'Winston Salem', 'North Carolina', '27105');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (21, '47058 Stang Terrace', '47', 'Fort Worth', 'Texas', '76115');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (22, '236 Meadow Valley Terrace', '3', 'Fresno', 'California', '93726');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (23, '798 Lukken Park', '609', 'Aurora', 'Colorado', '80044');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (24, '141 Warner Way', '019', 'Topeka', 'Kansas', '66667');

INSERT INTO Address (AddressId, StreetAddress, AptNumber, City, State, ZIP) 
    VALUES (25, '8 Valley Edge Junction', '0811', 'Lexington', 'Kentucky', '40576');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (26, '586 Mandrake Lane', '47043', 'Amarillo', 'Texas', '79171');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (27, '70 Miller Park', '9', 'Miami', 'Florida', '33129');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (28, '505 Dakota Court', '18', 'Boston', 'Massachusetts', '02104');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (29, '3 Crest Line Street', '1', 'Seattle', 'Washington', '98185');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (30, '6 Scott Avenue', '8', 'Montpelier', 'Vermont', '05609');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (31, '0461 Hazelcrest Road', '9936', 'Annapolis', 'Maryland', '21405');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (32, '63324 Lunder Drive', '74581', 'Sacramento', 'California', '94250');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (33, '548 Buell Point', '32387', 'Newark', 'New Jersey', '07195');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (34, '1396 Florence Junction', '7308', 'Huntsville', 'Alabama', '35895');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (35, '690 Hintze Place', '3900', 'Lima', 'Ohio', '45807');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (36, '4545 Scoville Street', '2', 'Fort Lauderdale', 'Florida', '33355');

INSERT INTO Address (AddressID, StreetAddress, AptNumber, City, State, Zip) 
    VALUES (37, '61818 Oxford Crossing', '6892', 'Pittsburgh', 'Pennsylvania', '15240');
  
  
-- Donor data INSERTs
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (100, 'Breanna', 'Woods', '1-435-461-7306', NULL, 50.00, 2014, 100, NULL, 1);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (101, 'Kiayada', 'Patel', '1-202-689-7746', NULL, 60.00, 2005, 101, NULL, 2);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (102, 'Shelly', 'Velasquez', '1-629-229-2551', 'President( > 50,000)', 65000.00, 2012, 102, NULL, 3);

ALTER TABLE Donor 
    DISABLE CONSTRAINT Spouse_FK;

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (103, 'Len', 'Boyle', '1-394-969-2802', 'Platinum( > 25,000)', 48000.50, 2015, 103, 113, 4);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (104, 'Penelope', 'Rodriquez', '1-299-244-0302', NULL, 2.00, 2015, 103, NULL, 5);
    
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (105, 'Shaeleigh', 'Day', '1-719-404-7537', 'Platinum( > 25,000)', 28000.00, 2007, 105, 107, 6);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (106, 'Hamish', 'Sargent', '1-657-392-0235', NULL, 99.99, 2013, 106, NULL, 7);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (107, 'Ulysses', 'Day', '1-910-478-8959', 'Platinum( > 25,000)', 45000.50, 2006, 107, 105, 6);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (108, 'Ivan', 'Williamson', '1-671-417-7942', 'President( > 50,000)', 100000.00, 2015, 103, NULL, 8);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (109, 'Maya', 'Dorsey', '1-184-231-4384', NULL, 70.00, 2013, 106, NULL, 9);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (110, 'Haley', 'Mcguire', '1-989-823-6721', NULL, 10.50, 2007, 105, NULL, 10);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (111, 'Odessa', 'Ferguson', '1-120-892-2875', 'Platinum( > 25,000)', 50000.00, 2005, 101, NULL, 11);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (112, 'September', 'Leon', '1-444-750-6564', NULL, 5.00, 2005, 101, 124, 19);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (113, 'Noble', 'Boyle', '1-276-180-4167', NULL, 1.99, 2013, 106, 103, 4);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (114, 'Mannix', 'Finch', '1-814-683-0111', 'President( > 50,000)', 52000.00, 2013, 106, NULL, 12);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (115, 'Halee', 'Cline', '1-558-241-0602', NULL, 3.50, 2007, 105, NULL, 13);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (116, 'Burton', 'Garcia', '1-112-523-6414', 'Platinum( > 25,000)', 40000.50, 2008, 116, NULL, 14);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (117, 'Lucas', 'Lawson', '1-613-231-0702', NULL, 20.00, 2005, 101, NULL, 15);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (118, 'Octavia', 'Tyler', '1-527-327-1697', 'Platinum( > 25,000)', 30000.00, 2005, 101, NULL, 16);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (119, 'Caldwell', 'Romero', '1-179-716-7972', 'Platinum( > 25,000)', 26000.00, 2011, 119, NULL, 17);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (120, 'Zephr', 'Craig', '1-594-377-8763', 'President( > 50,000)', 80000.00, 2013, 106, NULL, 18);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (121, 'Nichole', 'Clements', '1-712-746-4031', 'President( > 50,000)', 70000.00, 2015, 103, NULL, 20);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (122, 'Hollee', 'Deleon', '1-105-701-0098', 'President( > 50,000)', 67000.40, 2014, 101, NULL, 21);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (123, 'Imelda', 'Hughes', '1-925-509-8051', 'Platinum( > 25,000)', 35000.00, 2011, 119, NULL, 22);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(124, 'Reese', 'Matthews', '1-888-107-6273', NULL, 40.00, 2010, 124, 112, 19);

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(125, 'Bob', 'Bobs', '1-838-302-9302', NULL, 30.00, 2010, 124, NULL, 23);

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(126, 'Luke', 'Marks', '1-432-425-3829', NULL, 49.00, 2012, 102, NULL, 24);

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(127, 'Warner', 'Wabe', '1-402-134-3923', NULL, 10.50, 2006, 107, NULL, 25);  
  
ALTER TABLE Donor
    ENABLE CONSTRAINT Spouse_FK;

-- Event data INSERTs
INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (1, 'Welcome Extravaganza', '08-NOV-2016', 'quisque ut erat curabitur 
  gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 31);

INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (2, 'Fall Formal', '15-JUN-2016', 'morbi a ipsum integer a nibh in quis 
  justo maecenas rhoncus aliquam lacus morbi', 32);

INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (3, 'Winter Ball', '21-MAY-2017', 'sed magna at nunc commodo placerat 
  praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', 33);

INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (4, 'Alumni Appreciation Banquet', '19-APR-2017', 'vitae nisi nam 
  ultrices libero non mattis pulvinar nulla pede', 34);

INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (5, 'Spring Formal', '17-JAN-2017', 'eleifend luctus ultricies eu nibh 
  quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 35);

INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (6, 'Pride Day', '05-JUL-2016', 'vel enim sit amet nunc viverra dapibus 
  nulla suscipit ligula in lacus', 36);

INSERT INTO Event (EventID, Name, Event_Date, Description, AddressID) 
	VALUES (7, 'End of Semester Bash', '22-MAR-2018', 'convallis morbi odio odio 
  elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', 37);
