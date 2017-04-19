/****************************************************************************/
/*               GROUP PROJECT:  REPORTING SCRIPT                            /
/*                                                                           /
/*               Created By: Crystal Combs, Matthew Luc, Charles             /
/*                           Wigle & Jonathan Quilliams                      /
/*                                                                           /
/*               Creation Date: 04-16-2017                                   /
/*               Last Modified: 04-18-2017                                   /
/****************************************************************************/
set serveroutput on;

CREATE OR REPLACE PACKAGE REPORTS AS

    PROCEDURE ANNUAL_REPORT;
    PROCEDURE MONTHLY_REPORT(yr VARCHAR2, mnth VARCHAR2); 
    PROCEDURE EVENT_REPORT;
    PROCEDURE CLASS_REP_CONTACT_LIST;
    PROCEDURE PHONOTHON_CONTACT_LIST;
    PROCEDURE EMPLOYER_MATCHES;
    PROCEDURE DONORS_CIRCLES_LIST;
    PROCEDURE SUMMARY_ANNUAL_TOTALS;

END REPORTS;
/

CREATE OR REPLACE PACKAGE BODY REPORTS AS

/*Suzanne would like a report each month listing the pledge payments that were due that month but were
not received. It should list the donor’s name and address, the amount due, the date due, the amount of the pledge, the
amount received so far, and the date of the previous payment, if any.*/
  PROCEDURE MONTHLY_REPORT (yr VARCHAR2, mnth VARCHAR2) IS
  
      CURSOR mReports IS
  
      SELECT d.LastName AS LName, d.FirstName AS FName, a.City AS Cty, 
          a.State AS Ste, a.Zip AS Zp, a.StreetAddress AS SAddress, 
          a.AptNumber AS AptNum, TO_CHAR(do.Amount_Pledged - do.Amount_Paid, 
          '9999999.99') AS Amt_Due, TO_CHAR(pp.DueDate, 'DD-MON-YY') AS DDate, 
          TO_CHAR(do.Amount_Pledged, '9999999.99') AS Amt_Pledged, 
          TO_CHAR(do.Amount_Paid, '9999999.99') AS Amt_Paid, 
          TO_CHAR(pp.Last_Payment_Date, 'DD-MON-YY') AS LPayDate
      FROM Donor d 
      INNER JOIN Address a ON d.AddressID = a.AddressID
      INNER JOIN Donation do ON d.DonorID = do.DonorID
      INNER JOIN PaymentPlan pp ON do.DonationID = pp.DonationID
      WHERE TO_CHAR(pp.Last_Payment_Date, 'YYYY') = yr AND
      TO_CHAR(pp.Last_Payment_Date, 'MON') = mnth AND 
      TO_CHAR(do.Amount_Pledged - do.Amount_Paid, '9999999.99') > 0
      ORDER BY Last_Payment_Date;
      
      cRow mReports%ROWTYPE;	-- Cursor Row variable
    
    BEGIN
    
      FOR cRow IN mReports LOOP
    
          DBMS_OUTPUT.PUT_LINE('Name : ' || cRow.LName || ', ' || cRow.FName);
          DBMS_OUTPUT.PUT_LINE('City : ' || cRow.Cty);
          DBMS_OUTPUT.PUT_LINE('State: ' || cRow.Ste);
          DBMS_OUTPUT.PUT_LINE('ZIP: ' || cRow.Zp);
          DBMS_OUTPUT.PUT_LINE('Street Address : ' || cRow.SAddress);
          DBMS_OUTPUT.PUT_LINE('Apartment Number : ' || cRow.AptNum);
          DBMS_OUTPUT.PUT_LINE('Amount Due : ' || cRow.Amt_Due);
          DBMS_OUTPUT.PUT_LINE('Date Due : ' || cRow.DDate);
          DBMS_OUTPUT.PUT_LINE('Amount Pledged : ' || cRow.Amt_Pledged);
          DBMS_OUTPUT.PUT_LINE('Amount Received : ' || cRow.Amt_Paid);
          DBMS_OUTPUT.PUT_LINE('Date of Previous Payment : ' || cRow.LPayDate);
          FOR j in 1..cRow.LPayDate LOOP
          DBMS_OUTPUT.PUT_LINE('*');
          END LOOP;
          DBMS_OUTPUT.PUT_LINE('');
          DBMS_OUTPUT.NEW_LINE;
    
      END LOOP;
    
    END MONTHLY_REPORT;
    
PROCEDURE EVENT_REPORT IS

		CURSOR evReport IS

		SELECT e.Name AS EName, d.LastName AS LName, d.FirstName AS FName,
        TO_CHAR(do.Amount_Pledged, '9999999.99') AS DoPledge, 
        TO_CHAR(do.Amount_Paid, '9999999.99') AS DoPaid
		FROM Event e
		INNER JOIN EventDonors ed ON e.EventID = ed.EventId
		INNER JOIN Donor d ON  ed.DonorId = d.DonorID
		INNER JOIN Donation do ON d.DonorID = do.DonorID
		ORDER BY e.Name, d.LastName, d.FirstName;

		cRow evReport%ROWTYPE;	--Cursor Row Variable		

	BEGIN

		FOR cRow IN evReport LOOP

			DBMS_OUTPUT.PUT_LINE('Event : ' || cRow.EName);
			DBMS_OUTPUT.PUT_LINE('Name : ' || cRow.LName || ', ' || cRow.FName);
			DBMS_OUTPUT.PUT_LINE('Amount Pledged : ' || cRow.DoPledge);
			DBMS_OUTPUT.PUT_LINE('Amount Received : ' || cRow.DoPaid);
			DBMS_OUTPUT.PUT_LINE('*************************************');
			DBMS_OUTPUT.NEW_LINE;
			DBMS_OUTPUT.NEW_LINE;
      
		END LOOP;
    
END EVENT_REPORT;

  PROCEDURE CLASS_REP_CONTACT_LIST IS

		CURSOR crcReport IS

		SELECT d.CoordinatorID AS ClRep, d.LastName AS LName, 
			d.FirstName AS FName, d.Phone AS PNum, a.City AS Cty, 
			a.State AS Ste, a.Zip AS Zp, a.StreetAddress AS SAddress, 
			a.AptNumber AS AptNum,
      -- group by coodinatorID
      TO_CHAR((SELECT SUM(Amount_Pledged) FROM Donation 
               LEFT JOIN Donor ON Donation.DonorID = Donor.DonorID
						   LEFT JOIN EventDonors ON Donor.DonorID = EventDonors.DonorID
						   LEFT JOIN Event ON EventDonors.EventID = Event.EventID
						   WHERE Event.Event_Date BETWEEN '01-JAN-2016' AND '31-DEC-2016'),
               '9999999.99') AS LYDonation,
      TO_CHAR((SELECT SUM(Amount_Pledged) FROM Donation 
              LEFT JOIN Donor ON Donation.DonorID = Donor.DonorID
						  LEFT JOIN EventDonors ON Donor.DonorID = EventDonors.DonorID
						  LEFT JOIN Event ON EventDonors.EventID = Event.EventID
						  WHERE Event.Event_Date BETWEEN '01-JAN-2017' AND '31-DEC-2017'),
              '9999999.99')AS TYDonation
		FROM Donor d
		INNER JOIN Address a ON d.AddressID = a.AddressID
		INNER JOIN Donation do ON d.DonorID = do.DonorID
		ORDER BY d.CoordinatorID, d.LastName, d.FirstName;

		cRow crcReport%ROWTYPE;

	BEGIN

		FOR cRow IN crcReport LOOP			

			DBMS_OUTPUT.PUT_LINE('Class Representative : ' || cRow.ClRep);
			DBMS_OUTPUT.PUT_LINE('Name : ' || cRow.LName || ', ' || cRow.FName);
			DBMS_OUTPUT.PUT_LINE('Phone Number : ' || cRow.PNum);
			DBMS_OUTPUT.PUT_LINE('City : ' || cRow.Cty);
			DBMS_OUTPUT.PUT_LINE('State: ' || cRow.Ste);
			DBMS_OUTPUT.PUT_LINE('ZIP: ' || cRow.Zp);
			DBMS_OUTPUT.PUT_LINE('Street Address : ' || cRow.SAddress);
			DBMS_OUTPUT.PUT_LINE('Apartment Number : ' || cRow.AptNum);
			DBMS_OUTPUT.PUT_LINE('Donation Last Year : '  || cRow.LYDonation);
			DBMS_OUTPUT.PUT_LINE('Donation This Year : '  || cRow.TYDonation);
      DBMS_OUTPUT.PUT_LINE('*************************************');
      DBMS_OUTPUT.NEW_LINE;
      DBMS_OUTPUT.NEW_LINE;

		END LOOP;

	END CLASS_REP_CONTACT_LIST;

/*Phonothon Volunteer Contact List Each volunteer caller is given a list with information about the potential donors he
  or she is expected to call, including the name, telephone number, address, category, year (if applicable), and last year’s
  donation information.*/
    PROCEDURE PHONOTHON_CONTACT_LIST IS
  
      CURSOR pvcReports IS
      
      SELECT d.LastName AS LName, d.FirstName AS FName, d.Phone 
          AS PNum, a.City AS Cty, a.State AS Ste, a.Zip AS Zp, 
          a.StreetAddress AS SAddress, a.AptNumber AS AptNum,
          d.Circle_Level AS CLevel, d.ClassYear AS ClassYr, 
          d.Total_Donations AS TDonations
      FROM Donor d
      INNER JOIN Address a ON d.AddressID = a.AddressID
      INNER JOIN Donation do ON d.DonorID = do.DonorID
      ORDER BY d.LastName;
      
      cRow pvcReports%ROWTYPE;	-- Cursor Row variable
    
    BEGIN
    
      FOR cRow IN pvcReports LOOP
    
          DBMS_OUTPUT.PUT_LINE('Name : ' || cRow.LName || ', ' || cRow.FName);
          DBMS_OUTPUT.PUT_LINE('Phone Number : ' || cRow.PNum);
          DBMS_OUTPUT.PUT_LINE('City : ' || cRow.Cty);
          DBMS_OUTPUT.PUT_LINE('State: ' || cRow.Ste);
          DBMS_OUTPUT.PUT_LINE('ZIP: ' || cRow.Zp);
          DBMS_OUTPUT.PUT_LINE('Street Address : ' || cRow.SAddress);
          DBMS_OUTPUT.PUT_LINE('Apartment Number : ' || cRow.AptNum);
          DBMS_OUTPUT.PUT_LINE('Circle Level/Category : ' || cRow.CLevel);
          DBMS_OUTPUT.PUT_LINE('Class Year : ' || cRow.ClassYr);
          DBMS_OUTPUT.PUT_LINE('Donation Information : ' || cRow.TDonations);
          FOR j in 1..cRow.LName LOOP
          DBMS_OUTPUT.PUT_LINE('*');
          END LOOP;
          DBMS_OUTPUT.PUT_LINE('');
          DBMS_OUTPUT.NEW_LINE;
      
      END LOOP;
    
    END PHONOTHON_CONTACT_LIST;    

/* This is an open ended report that Lists the Employers that have matched Donor's 
   donations and lists the information of the Employer, the amount matched and 
   the Donor the employer employs. 
*/    
    PROCEDURE EMPLOYER_MATCHES IS
  
      CURSOR cCurse IS
      
      SELECT e.Name AS empName, e.Phone AS Phone, a.City AS Cty, a.State AS St, a.Zip AS Zp, 
          a.StreetAddress AS street, ep.Amount AS Amt, d.FirstName || ' ' || d.LastName AS donorName 
      FROM EMPLOYERPAYMENT ep
      JOIN Employers e ON ep.EmployerID = e.EmployerId
      JOIN Address a ON e.AddressId = a.AddressID
      JOIN Donor d ON e.DonorID = d.DonorID
      ORDER BY ep.Amount;
      
      cRow cCurse%ROWTYPE;	
    
    BEGIN
    
      OPEN cCurse;
      LOOP
      FETCH cCurse INTO cRow;
      Exit WHEN cCurse%NOTFOUND;
    
          DBMS_OUTPUT.PUT_LINE('Employer Name : ' || cRow.empName);
          DBMS_OUTPUT.PUT_LINE('Phone Number : ' || cRow.Phone);
          DBMS_OUTPUT.PUT_LINE('Street Address : ' || cRow.street);
          DBMS_OUTPUT.PUT_LINE('City : ' || cRow.Cty); 
          DBMS_OUTPUT.PUT_LINE('State: ' || cRow.St);
          DBMS_OUTPUT.PUT_LINE('ZIP: ' || cRow.Zp);
          DBMS_OUTPUT.PUT_LINE('Amount Matched: ' || cRow.Amt);
          DBMS_OUTPUT.PUT_LINE('Donor Matched From: ' || cRow.donorName);
          DBMS_OUTPUT.PUT_LINE('*************************************');
          DBMS_OUTPUT.NEW_LINE;
          DBMS_OUTPUT.NEW_LINE;
      
      END LOOP;
    CLOSE cCurse;
  END EMPLOYER_MATCHES; 

 
   /* Annual Report - This report lists the donor name along with their 
  corresponding Donor Circle. If the total donations for a donor meet or exceed
  the giving level, they will become a memeber of the respective Donor Circle.
  
  This report also displays summaries, including the total amount raised from 
  all sources, the total for each class, the percent participation in each 
  class, the total for each category, the grand total for each Donor Circle, and
  the class total for each donor circle.*/
  
  PROCEDURE ANNUAL_REPORT IS
  
    BEGIN
      DONORS_CIRCLES_LIST;
      SUMMARY_ANNUAL_TOTALS;
    END;
    
/* DONORS_CIRCLES_LIST - This Procedure is used within Annual Report. It grabs
   the donor's name along with their respective donor circle. */
    
  PROCEDURE DONORS_CIRCLES_LIST IS
  
    CURSOR cDonorList IS -- Creates cursor for navigating through the result set
      
      SELECT LastName, 
             FirstName, 
             Circle_Level, 
             Total_Donations
      FROM Donor;
      
    rDonor cDonorList%ROWTYPE;
      
    BEGIN
      OPEN cDonorList;
      LOOP
        FETCH cDonorList INTO rDonor;
        EXIT WHEN cDonorList%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(rDonor.LastName || ' | ' || 
                             rDonor.FirstName || ' | ' ||
                             rDonor.Circle_Level || ' | ' ||
                             rDonor.Total_Donations);
        
      END LOOP;
      
      CLOSE cDonorList;
      
      NULL;
  END DONORS_CIRCLES_LIST;
  
/* SUMMARY_ANNUAL_TOTALS - Is called by the Annual Report, displaying calculated
   summaries for the Year*/
   
  PROCEDURE SUMMARY_ANNUAL_TOTALS IS
  -- Grand Total
  CURSOR cGrandTotal IS
    SELECT SUM(do.AMOUNT_PAID) AS "Total"
    FROM DONOR d, DONATION do
    WHERE do.DONORID = d.DONORID;
  rGrandTotal cGrandTotal%ROWTYPE;
  
  -- Total by Class
  CURSOR cClassTotal IS
    SELECT UNIQUE d.ClassYear, 
           SUM(do.AMOUNT_PAID) AS "TotalClass"
    FROM DONOR d, DONATION do
    WHERE do.DONORID = d.DONORID
    GROUP BY d.ClassYear
    ORDER BY "TotalClass" DESC;
  rClassTotal cClassTotal%ROWTYPE;
  
  -- Class Participation
  CURSOR cClassPart IS
    SELECT UNIQUE d.ClassYear, 
           (SUM(do.AMOUNT_PAID)/(SELECT SUM(don.AMOUNT_PAID)
             FROM DONOR dn, DONATION don
             WHERE don.DONORID = dn.DONORID))*100 AS "Percent"
    FROM DONOR d, DONATION do
    WHERE do.DONORID = d.DONORID
    GROUP BY d.ClassYear
    ORDER BY "Percent" DESC;
  rClassPart cClassPart%ROWTYPE;
    
  -- Total by Category
  CURSOR cCategTotal IS
    SELECT UNIQUE d.CATEG AS, 
           SUM(do.AMOUNT_PAID) AS "TotalCateg"
    FROM Donor d, Donation do
    WHERE do.DONORID = d.DONORID
    GROUP BY d.CATEG
    ORDER BY "TotalCateg" DESC;
  rCategTotal cCategTotal%ROWTYPE;
  
  -- Total by Donor Circle
  CURSOR cCircleTotal IS
    SELECT UNIQUE d.Circle_Level, 
           SUM(do.AMOUNT_PAID) AS "TotalCircle"
    FROM Donor d, Donation do
    WHERE do.DONORID = d.DONORID
    GROUP BY d.Circle_Level
    ORDER BY "TotalCircle" DESC;
  rCircleTotal cCircleTotal%ROWTYPE;
  
  -- Total Donor Circle and Year
  CURSOR cCircleYearTotal IS
    SELECT UNIQUE d.Circle_Level, d.ClassYear,
           SUM(do.AMOUNT_PAID) AS "TotalCircleYear"
    FROM Donor d, Donation do
    WHERE do.DONORID = d.DONORID
    GROUP BY d.Circle_Level, d.ClassYear
    ORDER BY "TotalCircleYear" DESC;
  rCircleYearTotal cCircleYearTotal%ROWTYPE;
  
  BEGIN    
    OPEN cGrandTotal;
    OPEN cClassTotal;
    OPEN cClassPart;
    OPEN cCategTotal;
    OPEN cCircleTotal;
    OPEN cCircleYearTotal;
    
    DBMS_OUTPUT.PUT_LINE('------- Total Gross Donations ---------');
    LOOP
      FETCH cGrandTotal INTO rGrandTotal;
      EXIT WHEN cGrandTotal%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rGrandTotal."Total");
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT_LINE('------- Total Donations by Class ---------');
    DBMS_OUTPUT.PUT_LINE('------------- Year / Total ---------------');
    LOOP
      FETCH cClassTotal INTO rClassTotal;
      EXIT WHEN cClassTotal%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rClassTotal.ClassYear || '   /   ' || rClassTotal."TotalClass");
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT_LINE('--------- Participation by Class ---------');
    DBMS_OUTPUT.PUT_LINE('------------ Year / Percent --------------');
    LOOP
      FETCH cClassPart INTO rClassPart;
      EXIT WHEN cClassPart%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rClassPart.ClassYear || '   /   ' || rClassPart."Percent" );
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT_LINE('--------- Total Donations by Category ---------');
    DBMS_OUTPUT.PUT_LINE('-------------- Category / Total ---------------');
    LOOP
      FETCH cCategTotal INTO rCategTotal;
      EXIT WHEN cCategTotal%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rCategTotal.CATEG || '   /   ' || rCategTotal."TotalCateg" );
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT_LINE('--------- Total Donations by Circle ---------');
    DBMS_OUTPUT.PUT_LINE('-------------- Circle / Total ---------------');
    LOOP
      FETCH cCircleTotal INTO rCircleTotal;
      EXIT WHEN cCircleTotal%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rCircleTotal.Circle_Level || '   /   ' || rCircleTotal."TotalCircle" );
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT_LINE('--------- Total Donations by Circle/Year ---------');
    DBMS_OUTPUT.PUT_LINE('------------- Circle / Year / Total --------------');
    LOOP
      FETCH cCircleYearTotal INTO rCircleYearTotal;
      EXIT WHEN cCircleYearTotal%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rCircleYearTotal.Circle_Level || '   /   ' || rCircleYearTotal.ClassYear || '   /   ' || rCircleYearTotal."TotalCircleYear" );
    END LOOP;
    
    CLOSE cGrandTotal;
    CLOSE cClassTotal;
    CLOSE cClassPart;
    CLOSE cCategTotal;
    CLOSE cCircleTotal;
    CLOSE cCircleYearTotal;
  END SUMMARY_ANNUAL_TOTALS;

END REPORTS;
/


/* -- TESTING -- */

EXEC REPORTS.ANNUAL_REPORT;
-- YYYY, MON
EXEC REPORTS.MONTHLY_REPORT('2017', 'APR'); 
EXEC REPORTS.EVENT_REPORT;
EXEC REPORTS.CLASS_REP_CONTACT_LIST;
EXEC REPORTS.PHONOTHON_CONTACT_LIST;
EXEC REPORTS.EMPLOYER_MATCHES; 
