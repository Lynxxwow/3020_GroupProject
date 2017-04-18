/****************************************************************************/
/*               GROUP PROJECT:  Donor Update Trigger                        /
/*                                                                           /
/*               Created By: Crystal Combs, Matthew Luc, Charles             /
/*                           Wigle & Jonathan Quilliams                      /
/*                                                                           /
/*               Creation Date: 04-17-2017                                   /
/*               Last Modified: 04-17-2017                                   /
/****************************************************************************/
CREATE OR REPLACE TRIGGER DonorBeforeUpdate
BEFORE UPDATE
  ON donor
  FOR EACH ROW
DECLARE
  newDonAmt NUMBER;
BEGIN
  newDonAmt := :new.Total_Donations;
  
  if newDonAmt >= 5000000 then
    :new.circle_level := 'Presidents Trust Diamond';
  elsif newDonAmt >=1000000 then
    :new.circle_level := 'Presidents Trust Platinum';
  elsif newDonAmt >=500000 then
    :new.circle_level := 'Presidents Trust Gold';
  elsif newDonAmt >=100000 then
    :new.circle_level := 'Presidents Trust Silver';
  elsif newDonAmt >=50000 then
    :new.circle_level := 'Presidents Trust Bronze';
  elsif newDonAmt >=25000 then
    :new.circle_level := 'Presidents Trust Patrons';
  elsif newDonAmt >=10000 then
    :new.circle_level := 'Presidents Trust Founders';
  elsif newDonAmt >=5000 then
    :new.circle_level := 'Presidents Trust Sponsors';
  elsif newDonAmt >=2500 then
    :new.circle_level := 'Presidents Trust Fellows';
  elsif newDonAmt >=1000 then
    :new.circle_level := 'Presidents Trust';
  elsif newDonAmt >=500 then
    :new.circle_level := 'The Deans Club';
  elsif newDonAmt >=250 then
    :new.circle_level := 'The Scholars Club';
  elsif newDonAmt >=100 then
    :new.circle_level := 'The Century Club';
  else
    :new.circle_level := 'Contributor';
  end if;
  
END;
/