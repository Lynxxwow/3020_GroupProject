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

    PROCEDURE MONTHLY_REPORT; 
    PROCEDURE PHONOTHON_CONTACT_LIST;
    PROCEDURE EMPLOYER_MATCHES;
    PROCEDURE ANNUAL_REPORT;
    PROCEDURE DONORS_CIRCLES_LIST;
    PROCEDURE SUMMARY_ANNUAL_TOTALS;
    
END REPORTS;
/

CREATE OR REPLACE PACKAGE BODY REPORTS AS


/*Suzanne would like a report each month listing the pledge payments that were due that month but were
not received. It should list the donor’s name and address, the amount due, the date due, the amount of the pledge, the
amount received so far, and the date of the previous payment, if any.*/
  PROCEDURE MONTHLY_REPORT IS
  
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
  END;
  
/* SUMMARY_ANNUAL_TOTALS - Is called by the Annual Report, displaying calculated
   summaries for the Year*/
   
  PROCEDURE SUMMARY_ANNUAL_TOTALS IS
  
  BEGIN
    NULL;
  END;
  
END REPORTS;
/

/* -- TESTING -- */

EXEC REPORTS.MONTHLY_REPORT;

EXEC REPORTS.PHONOTHON_CONTACT_LIST;

EXEC REPORTS.EMPLOYER_MATCHES;

EXEC REPORTS.ANNUAL_REPORT;