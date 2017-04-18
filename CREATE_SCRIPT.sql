/****************************************************************************
- File Name: GroupProject_Deliverable1.sql
- Created By: Crystal Combs, Matthew Luc, Charles Wigle, and Jonathan Quilliams
- Created: 3/20/17
- Last Edit: 4/7/17
******************************************************************************/


DROP TABLE EventDonors CASCADE CONSTRAINTS;
DROP TABLE EmployerPayment CASCADE CONSTRAINTS;
DROP TABLE Payment CASCADE CONSTRAINTS;
DROP TABLE PaymentPlan CASCADE CONSTRAINTS;
DROP TABLE Employers CASCADE CONSTRAINTS;
DROP TABLE Event CASCADE CONSTRAINTS;
DROP TABLE Donation CASCADE CONSTRAINTS;
DROP TABLE Donor CASCADE CONSTRAINTS;
DROP TABLE Address CASCADE CONSTRAINTS;


/*
  TABLE:  ADDRESS
  PK: AddressID
*/
CREATE TABLE Address(
	AddressID NUMBER(38,0) NOT NULL,
	StreetAddress VARCHAR2(50) NOT NULL,
	AptNumber VARCHAR2(30),
	City VARCHAR2(30) NOT NULL,
	State VARCHAR2(25) NOT NULL,
	Zip NUMBER(38,0) NOT NULL,
	CONSTRAINT Address_PK PRIMARY KEY (AddressID)
);

/*
  TABLE: Donor
  PK: DonorID
  FK: AddressID, CoordinatorID
*/

CREATE TABLE Donor(
  DonorID NUMBER(38,0) NOT NULL,
  FirstName VARCHAR2(125) NOT NULL,
  LastName VARCHAR(125)NOT NULL,
  Phone VARCHAR2(15),
  Circle_Level VARCHAR2(50),
  Total_Donations NUMBER (38, 2),
  ClassYear NUMBER(4),
  CoordinatorID NUMBER(38,0),
  SpouseID NUMBER(38,0),
  AddressID NUMBER(38,0) NOT NULL,
  CONSTRAINT Donor_PK PRIMARY KEY(DonorId), 
  CONSTRAINT Spouse_FK FOREIGN KEY(SpouseID)
    REFERENCES Donor(DonorID),  
  CONSTRAINT Coord_FK FOREIGN KEY(CoordinatorID)
    REFERENCES Donor(DonorID)
);

/*
  TABLE:  DONATION
  PK: DonationID
  FK: DonorID
*/
CREATE TABLE Donation(
	DonationID NUMBER(38,0) NOT NULL,
	Amount_Pledged NUMBER(38,2) NOT NULL,
	Letter_Sent NUMBER(1,0),
	Amount_Paid NUMBER(38,2),
  	DonorID NUMBER(38,0),
  CONSTRAINT Donation_PK PRIMARY KEY(DonationId),
  CONSTRAINT Donation_FK FOREIGN KEY(DonorID)
    REFERENCES Donor(DonorID)
);

/*
  TABLE: Event
  PK: EventID
  FK: AddressID
*/

CREATE TABLE Event(
	EventID NUMBER(38,0) NOT NULL,
	Name VARCHAR2(30) NOT NULL,
	Event_Date DATE NOT NULL,
	Description VARCHAR2(300),
	AddressID NUMBER(38,0) NOT NULL,
	CONSTRAINT Event_PK PRIMARY KEY(EventID),
	CONSTRAINT Event_Address_FK FOREIGN KEY(AddressID)
		REFERENCES Address(AddressID)
);

/*
  TABLE: Employers
  PK: EmployerID
  FK: AddressID
*/

CREATE TABLE Employers(
	EmployerID NUMBER(38,0) NOT NULL,
	Name VARCHAR2(30),
	Phone VARCHAR2(15),
	AddressId NUMBER(38,0),
	DonorID NUMBER(38,0) NOT NULL,
	CONSTRAINT EmployerID PRIMARY KEY(EmployerID),
	CONSTRAINT Employer_Address_FK FOREIGN KEY(AddressID)
		REFERENCES Address(AddressID),
	CONSTRAINT Emp_Donor FOREIGN KEY(DonorID)
		REFERENCES Donor(DonorID)
);

/*
  TABLE: PaymentPlan
  PK: PaymentPlanID
  FK: DonationID
*/
CREATE TABLE PaymentPlan(
  PaymentPlanID NUMBER(38,0) NOT NULL,
  Number_Of_Payments NUMBER(38,0) NOT NULL,
  DueDate DATE NOT NULL,
  TotalPaymentsMade NUMBER(38,0),
  Installment_Amount NUMBER(38,2) NOT NULL,
  Last_Payment_Date DATE,
  DonationID NUMBER(38,0),
  CONSTRAINT pk_PayPlan PRIMARY KEY(PaymentPlanID),
  CONSTRAINT fk_PayPlan FOREIGN KEY(DonationID)
    REFERENCES Donation(DonationID)
  );  

/*
  TABLE: Payment
  PK: PaymentID
  FK: PaymentMethodID, DonationID
*/

CREATE TABLE Payment(
	PaymentId NUMBER(38,0) NOT NULL,
	PaymentMethod VARCHAR2(20),
	DonationID NUMBER(38,0),
	Amount NUMBER(38,2),
	DateOfPayment DATE,	
	CONSTRAINT Payment_PK PRIMARY KEY(PaymentID),
	CONSTRAINT Payment_Donation_FK FOREIGN KEY(DonationID)
		REFERENCES Donation(DonationID)
);

/*
  TABLE: EmployerPayment
  PK: Employer_PaymentId
  FK: PaymentMethodId, DonationId, EmployerId
*/

CREATE TABLE EmployerPayment(
	Employer_PaymentID NUMBER(38,0) NOT NULL,
	PaymentMethod VARCHAR2(20),
	DonationID NUMBER(38,0),
	Amount NUMBER(38,2),
  EmployerID NUMBER(38,0),
	CONSTRAINT EmployerPayment_PK PRIMARY KEY(Employer_PaymentID),
	CONSTRAINT EmployerPayment_Donation_FK FOREIGN KEY(DonationID)
		REFERENCES Donation(DonationID),
  CONSTRAINT EmployerPayment_Employer_FK FOREIGN KEY(EmployerID)
    REFERENCES Employers(EmployerID)
);


/*
  TABLE: EventDonors (Relationship Table)
  PK: EventDonationId, DonorId, EventId
  FK: EventDonationId, DonorId, EventId
*/

CREATE TABLE EventDonors(
  EventDonationId NUMBER(38,0) NOT NULL, 
  DonorId NUMBER (38, 0) NOT NULL, 
  EventId NUMBER (38, 0) NOT NULL,
  CONSTRAINT EventDonorsPK PRIMARY KEY(EventDonationId, DonorId, EventId), 
  CONSTRAINT DonationId_EventDonors_FK FOREIGN KEY(EventDonationId)
    REFERENCES Donation(DonationId),
  CONSTRAINT DonorId_EventDonors_FK FOREIGN KEY(DonorId)
    REFERENCES Donor(DonorId), 
  CONSTRAINT EventId_EventDonors_FK FOREIGN KEY(EventId)
    REFERENCES Event(EventId)
);
