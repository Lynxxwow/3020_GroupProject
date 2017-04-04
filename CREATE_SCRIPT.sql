/****************************************************************************
- File Name: GroupProject_Deliverable1.sql
- Created By: Crystal Combs, Matthew Luc, Charles Wigle, and Jonathan Quilliams
- Created: 3/20/17
- Last Edit: 3/31/17
******************************************************************************/


DROP TABLE EventDonors CASCADE CONSTRAINTS;
DROP TABLE EmployerPayment CASCADE CONSTRAINTS;
DROP TABLE Payment CASCADE CONSTRAINTS;
DROP TABLE "Employee" CASCADE CONSTRAINTS;
DROP TABLE Business CASCADE CONSTRAINTS;
DROP TABLE Alumni CASCADE CONSTRAINTS;
DROP TABLE GradStudent CASCADE CONSTRAINTS;
DROP TABLE Parents CASCADE CONSTRAINTS;
DROP TABLE Event CASCADE CONSTRAINTS;
DROP TABLE Donor CASCADE CONSTRAINTS;
DROP TABLE Employers CASCADE CONSTRAINTS;
DROP TABLE Address CASCADE CONSTRAINTS;
DROP TABLE Donation CASCADE CONSTRAINTS;
DROP TABLE PaymentMethod CASCADE CONSTRAINTS;


/*
  TABLE:  ADDRESS
  PK: AddressId
*/
CREATE TABLE Address(
	AddressId NUMBER(38,0) NOT NULL,
	StreetAddress VARCHAR2(50),
	AptNumber VARCHAR2(30),
	City VARCHAR2(30),
	State VARCHAR2(25),
	Zip NUMBER(38,0),
	CONSTRAINT Address_PK PRIMARY KEY (AddressId)
);

/*
  TABLE:  DONATION
  PK: DonationID
*/
CREATE TABLE Donation(
	DonationId NUMBER(38,0) NOT NULL,
	Amount_Pledged NUMBER(38,2),
	Letter_Sent NUMBER(1,0),
	Amount_Paid NUMBER(38,2),
	
	CONSTRAINT Donation_PK PRIMARY KEY(DonationId)
);

/*
  TABLE: Payment Method
  PK: PaymentMethodId
*/
CREATE TABLE PaymentMethod(
	PaymentMethodId NUMBER(38,0) NOT NULL,
	PaymentMethod VARCHAR2(20) NOT NULL,
	Description VARCHAR2(30),
	
	CONSTRAINT PaymentMethod_PK PRIMARY KEY(PaymentMethodId)
);

/*
  TABLE: Employers
  PK: EmployerId
  FK: AddressId
*/

CREATE TABLE Employers(
	EmployerId NUMBER(38,0) NOT NULL,
	Name VARCHAR2(30),
	Phone VARCHAR2(15),
	AddressId NUMBER(38,0),
	
	CONSTRAINT EmployerId PRIMARY KEY(EmployerId),
	CONSTRAINT Employer_Address_FK FOREIGN KEY(AddressId)
		REFERENCES Address(AddressId)
);

/*
  TABLE: Event
  PK: EventId
  FK: AddressId
*/

CREATE TABLE Event(
	EventId NUMBER(38,0) NOT NULL,
	Name VARCHAR2(30),
	"Date" DATE,
	Description VARCHAR2(100),
	AddressId NUMBER(38,0),
	
	CONSTRAINT Event_PK PRIMARY KEY(EventId),
	CONSTRAINT Event_Address_FK FOREIGN KEY(AddressId)
		REFERENCES Address(AddressId)
);

/*
  TABLE: EmployerPayment
  PK: Employer_PaymentId
  FK: PaymentMethodId, DonationId, EmployerId
*/

CREATE TABLE EmployerPayment(
	Employer_PaymentId NUMBER(38,0) NOT NULL,
	PaymentMethodId NUMBER(38,0),
	DonationId NUMBER(38,0),
	Amount NUMBER(38,2),
  EmployerID NUMBER(38,0),
	
	CONSTRAINT EmployerPayment_PK PRIMARY KEY(Employer_PaymentId),
	CONSTRAINT EmployerPayment_Method_FK FOREIGN KEY(PaymentMethodId)
		REFERENCES PaymentMethod(PaymentMethodId),
	CONSTRAINT EmployerPayment_Donation_FK FOREIGN KEY(DonationId)
		REFERENCES Donation(DonationId),
  CONSTRAINT EmployerPayment_Employer_FK FOREIGN KEY(EmployerId)
    REFERENCES Employers(EmployerId)
);

/*
  TABLE: Payment
  PK: PaymentId
  FK: PaymentMethodId, DonationId
*/

CREATE TABLE Payment(
	PaymentId NUMBER(38,0) NOT NULL,
	PaymentMethodId NUMBER(38,0),
	DonationId NUMBER(38,0),
	Amount NUMBER(38,2),
	DateOfPayment DATE,
	
	CONSTRAINT Payment_PK PRIMARY KEY(PaymentId),
	CONSTRAINT Payment_Method_FK FOREIGN KEY(PaymentMethodId)
		REFERENCES PaymentMethod(PaymentMethodId),
	CONSTRAINT Payment_Donation_FK FOREIGN KEY(DonationId)
		REFERENCES Donation(DonationId)
);
/*
  TABLE: Donor
  PK: DonorId
  FK: AddressId, EmployerId
*/

CREATE TABLE Donor(
  DonorId NUMBER(38,0) NOT NULL,
  FirstName VARCHAR2(125),
  LastName VARCHAR(125),
  Phone VARCHAR2(15),
  Circle_Level VARCHAR2(25),
  Total_Donations NUMBER (38, 2),
  EmployerId NUMBER(38,0),
  CONSTRAINT Donor_PK PRIMARY KEY(DonorId), 
  CONSTRAINT Donor_EmployerId_FK FOREIGN KEY(EmployerId) 
    REFERENCES Employers(EmployerId)
);

/*
  TABLE: Employee
  PK: EmpId
  FK: DonorID
*/

CREATE TABLE "Employee"(
EmpID NUMBER(38,0) NOT NULL,
DonorID NUMBER (38, 0),
Department VARCHAR2(50),
Hire_Date DATE,
Age NUMBER(38,0), 
CONSTRAINT EmpID_PK PRIMARY KEY(EmpID), 
CONSTRAINT Employee_DonorID_FK FOREIGN KEY(DonorID)
  REFERENCES Donor(DonorID)
);

/*
  TABLE: Business
  PK: BusinessId
  FK: DonorID
*/

CREATE TABLE Business(
BusinessID NUMBER(38,0) NOT NULL,
DonorID NUMBER(38, 0),
CompanyName VARCHAR2(50),
BusinessType VARCHAR2(50),
CONSTRAINT BusinessID_PK PRIMARY KEY(BusinessID),
CONSTRAINT Business_DonorID_FK FOREIGN KEY(DonorID)
  REFERENCES Donor(DonorID)
);


/*
  TABLE: Alumni
  PK: AlumniId
  FK: DonorID
*/
CREATE TABLE Alumni(
AlumniID NUMBER(38,0) NOT NULL,
DonorID NUMBER(38, 0),
Class_Year DATE,
Coordinator VARCHAR2(50),
Age NUMBER(38,0), 
CONSTRAINT AlumniID_PK PRIMARY KEY(AlumniID), 
CONSTRAINT Alumni_DonorID_FK FOREIGN KEY(DonorID)
  REFERENCES Donor(DonorID)
);

/*
  TABLE: GradStudent
  PK: GradId
  FK: DonorID
*/
CREATE TABLE GradStudent(
GradID NUMBER(38,0) NOT NULL,
DonorID NUMBER(38, 0),
Major VARCHAR2(50),
Year_Of_Grad DATE,
Age NUMBER(38,0), 
CONSTRAINT GradID_PK PRIMARY KEY(GradID), 
CONSTRAINT Grad_DonorID_FK FOREIGN KEY(DonorID)
  REFERENCES Donor(DonorID)
);

/*
  TABLE: Parents
  PK: ParentId
  FK: DonorID
*/
CREATE TABLE Parents(
ParentID NUMBER(38,0) NOT NULL,
DonorID NUMBER(38, 0),
Student_First_Name VARCHAR2(50),
Student_Last_Name VARCHAR2(50), 
CONSTRAINT ParentID_PK PRIMARY KEY(ParentID), 
CONSTRAINT Parent_DonorID_FK FOREIGN KEY(DonorID)
  REFERENCES Donor(DonorID)
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