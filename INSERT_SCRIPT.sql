/****************************************************************************/
/*               GROUP PROJECT DATA INSERT SCRIPT                            /
/*                                                                           /
/*               Created By: Crystal Combs, Matthew Luc, Charles             /
/*                           Wigle & Jonathan Quilliams                      /
/*                                                                           /
/*               Creation Date: 04-03-2017                                   /
/*               Last Modified: 04-07-2017                                   /
/****************************************************************************/

/* RULES for keeping this the same on all of our schemas.  Make sure all 
    entries can be tracked to each other and work from the non-foreign key 
    tables to the outmost tables in the design. 
        
		Crystal Combs: ERD AND TABLE CREATE revisions
		Charles Wigle: Donor TABLE INSERT data entries, other TABLE INSERT edits
		Jonathan Quilliams: Executive Summary
		Matthew Luc: Address, Employer, and Event TABLE INSERT data entries
        
        We are using GitHub to keep this as one document. Please commit changes
        at the end of every session you do and remember to clone it again
        before you start working on it, as others may have committed 
        changes!
        
        GITHUB LINK: https://github.com/CombsC/3020_GroupProject
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
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (100, 'Breanna', 'Woods', '1-435-461-7306', 'Alumni', 'The Deans Club( >= 500)', 600.00, 2014, 100, NULL, 1);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (101, 'Kiayada', 'Patel', '1-202-689-7746', 'Alumni', 'The Scholars Club(>= 250)', 300.00, 2005, 101, NULL, 2);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (102, 'Shelly', 'Velasquez', '1-629-229-2551', 'Admin', 'Presidents Trust Fellow( >= 2,500)', 3000.00, 2012, 102, NULL, 3);

ALTER TABLE Donor 
    DISABLE CONSTRAINT Spouse_FK;

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (103, 'Len', 'Boyle', '1-394-969-2802', 'Admin', 'Presidents Trust Patron( >= 25K)', 48000.50, 2015, 103, 113, 4);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (104, 'Penelope', 'Rodriquez', '1-299-244-0302', 'Student', 'Contributor', 60.00, 2015, 103, NULL, 5);
    
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (105, 'Shaeleigh', 'Day', '1-719-404-7537', 'Parent', 'Presidents Trust( >= 1,000)', 1100.00, 2007, 105, 107, 6);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (106, 'Hamish', 'Sargent', '1-657-392-0235', 'Student', 'Contributor', 99.99, 2013, 106, NULL, 7);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (107, 'Ulysses', 'Day', '1-910-478-8959', 'Alumni', 'Presidents Trust Patron( >= 25K)', 45000.50, 2006, 107, 105, 6);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (108, 'Ivan', 'Williamson', '1-671-417-7942', 'Student', 'Contributor', 80.00, 2015, 103, NULL, 8);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (109, 'Maya', 'Dorsey', '1-184-231-4384', 'Student', 'Contributor', 70.00, 2013, 106, NULL, 9);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (110, 'Haley', 'Mcguire', '1-989-823-6721', 'Student', 'Contributor', 10.50, 2007, 105, NULL, 10);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (111, 'Odessa', 'Ferguson', '1-120-892-2875', 'Parent', 'Presidents Trust Sponsor( >= 5K)', 8000.00, 2005, 101, NULL, 11);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (112, 'September', 'Leon', '1-444-750-6564', 'Admin', 'Presidents Trust Founder( >= 10K)', 16000.00, 2005, 101, 124, 19);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (113, 'Noble', 'Boyle', '1-276-180-4167', 'Student', 'Contributor', 1.99, 2013, 106, 103, 4);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (114, 'Mannix', 'Finch', '1-814-683-0111', 'Alumni', 'Presidents Trust Bronze( >= 50K)', 52000.00, 2013, 106, NULL, 12);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (115, 'Halee', 'Cline', '1-558-241-0602', 'Alumni', 'Presidents Trust Bronze( >= 50K)', 77000.00, 2007, 105, NULL, 13);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations,
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (116, 'Burton', 'Garcia', '1-112-523-6414', 'Admin', 'Presidents Trust Silver( >= 100K )' , 120000.50, 2008, 116, NULL, 14);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (117, 'Lucas', 'Lawson', '1-613-231-0702', 'Student', 'Contributor', 20.00, 2005, 101, NULL, 15);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (118, 'Octavia', 'Tyler', '1-527-327-1697', 'Alumni', 'Presidents Trust Patron( >= 25K)', 30000.00, 2005, 101, NULL, 16);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (119, 'Caldwell', 'Romero', '1-179-716-7972', 'Parent', 'Presidents Trust Bronze( >= 50K)', 68000.00, 2011, 119, NULL, 17);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (120, 'Zephr', 'Craig', '1-594-377-8763', 'Admin', 'Presidents Trust Bronze( >= 50K)', 80000.00, 2013, 106, NULL, 18);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES (121, 'Nichole', 'Clements', '1-712-746-4031', 'Parent', 'Presidents Trust Founder( >= 10K)', 18000.00, 2015, 103, NULL, 20);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (122, 'Hollee', 'Deleon', '1-105-701-0098', 'Alumni', 'Presidents Trust Bronze( >= 50K)', 67000.40, 2014, 101, NULL, 21);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES (123, 'Imelda', 'Hughes', '1-925-509-8051', 'Admin', 'Presidents Trust Diamond( >= 5 Million)', 6000000.00, 2011, 119, NULL, 22);
  
INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(124, 'Reese', 'Matthews', '1-888-107-6273', 'Parent', 'Presidents Trust Gold( >= 500K)', 550000.00, 2010, 124, 112, 19);

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID)
    VALUES(125, 'Bob', 'Bobs', '1-838-302-9302', 'Student', 'Contributor', 30.00, 2010, 124, NULL, 23);

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(126, 'Luke', 'Marks', '1-432-425-3829', 'Student', 'Contributor', 50.00, 2012, 102, NULL, 24);

INSERT INTO Donor (DonorID, FirstName, LastName, Phone, Categ, Circle_Level, Total_Donations, 
    ClassYear, CoordinatorID, SpouseID, AddressID) 
    VALUES(127, 'Warner', 'Wabe', '1-402-134-3923', 'Parent','Presidents Trust Platinum( >= 1 Million)', 2000000.00, 2006, 107, NULL, 25);  
  
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

-- Employers data INSERTS  
INSERT INTO Employers (EmployerID, Name, Phone, AddressID, DonorID) 
	VALUES (1, 'Mybuzz', '1-416-530-5367', 26, 120);
	
INSERT INTO Employers (EmployerID, Name, Phone, AddressID, DonorID) 
	VALUES (2, 'Riffwire', '1-587-273-4325', 27, 127);
	
INSERT INTO Employers (EmployerID, Name, Phone, AddressID, DonorID) 
	VALUES (3, 'Flipstorm', '1-625-787-8658', 28, 100);
	
INSERT INTO Employers (EmployerID, Name, Phone, AddressID, DonorID) 
	VALUES (4, 'Topicblab', '1-232-241-6747', 29, 111);
	
INSERT INTO Employers (EmployerID, Name, Phone, AddressID, DonorID) 
	VALUES (5, 'Shufflebeat', '1-347-304-6240', 30, 121);


-- Donation data INSERTS
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (1, 4000.00, 0, 3050.50, 114);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (3, 550000.00, 1, 550000.00, 124);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (5, 2000.00, 1, 2000.00, 120);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (6, 77000.00, 1, 77000.00, 115);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (7, 6000000.00, 1, 6000000.00, 123);  
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (8, 2000000.00, 1, 2000000.00, 127);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (9, 120000.50, 1, 120000.50, 116);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (10, 16000.00, 1, 16000.00, 112);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (11, 8000.00, 1, 8000.00, 111);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (12, 3000.00, 1, 3000.00, 102);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (13, 1100.00, 1, 1100.00, 105);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (14, 600.00, 1, 600.00, 100);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (15, 300.00, 1, 300.00, 101);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (16, 60.00, 1, 60.00, 104);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (17, 48000.00, 1, 48000.00, 103);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (18, 99.99, 1, 99.99, 106);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (19, 45000.50, 1, 45000.50, 107);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (20, 80.00, 1, 80.00, 108);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (21, 70.00, 1, 70.00, 109);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (22, 10.50, 1, 10.50, 110);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (23, 1.99, 1, 1.99, 113);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (24, 20.00, 1, 20.00, 117);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (25, 30000.00, 1, 30000.00, 118); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (26, 68000.00, 1, 68000.00, 119); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (27, 80000.00, 1, 80000.00, 120); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (28, 18000.00, 1, 18000.00, 121);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (29, 67000.40, 1, 67000.40, 122);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (30, 30.00, 1, 30.00, 125);
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (31, 50.00, 1, 50.00, 126); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (32, 80000.00, 1, 80000.00, 120); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (33, 2000000.00, 1, 2000000.00, 127); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (34, 600.00, 1, 600.00, 100); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (35, 8000.00, 1, 8000.00, 111); 
INSERT INTO Donation (DonationID, Amount_Pledged, Letter_Sent, Amount_Paid, DonorID)
	VALUES (36, 18000.00, 1, 18000.00, 121); 
 
--EmployerPayment INSERTS
INSERT INTO EmployerPayment(Employer_PaymentID, PaymentMethod, DonationID, Amount, EmployerID)
	VALUES(1, 'Check', 32, 80000.00, 1);
INSERT INTO EmployerPayment(Employer_PaymentID, PaymentMethod, DonationID, Amount, EmployerID)
	VALUES(2, 'Cash', 33, 2000000.00, 2);
INSERT INTO EmployerPayment(Employer_PaymentID, PaymentMethod, DonationID, Amount, EmployerID)
	VALUES(3, 'Check', 34, 600.00, 3);
INSERT INTO EmployerPayment(Employer_PaymentID, PaymentMethod, DonationID, Amount, EmployerID)
	VALUES(4, 'Check', 35, 8000.00, 4);
INSERT INTO EmployerPayment(Employer_PaymentID, PaymentMethod, DonationID, Amount, EmployerID)
	VALUES(5, 'Check', 36, 18000.00, 5);
  
-- PaymentPlan data INSERTS

INSERT INTO PaymentPlan(PaymentPlanID, Number_Of_Payments, DueDate, TotalPaymentsMade, Installment_Amount, Last_Payment_Date, DonationID)
	VALUES (10001, 4, TO_DATE('2017/05/03 23:59:59', 'yyyy/mm/dd hh24:mi:ss'), 3, 1000.00, TO_DATE('2017/04/07 12:59:46', 'yyyy/mm/dd hh24:mi:ss'), 1);

