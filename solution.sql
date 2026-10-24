--SELECT *
--FROM crime_scene_report
--WHERE date = 20180115
--  AND type = 'murder'
--  AND city = 'SQL City';
              
--SELECT *
--FROM person
--WHERE address_street_name = 'Northwestern Dr'
--ORDER BY address_number DESC
--LIMIT 1;

--SELECT *
--FROM person
--WHERE address_street_name = 'Franklin Ave'
--  AND name LIKE 'Annabel%';
  
--SELECT *
--FROM interview
--WHERE person_id IN (14887, 16371);

--SELECT m.*, c.*
--FROM get_fit_now_member AS m
--JOIN get_fit_now_check_in AS c 
--  ON m.id = c.membership_id
--WHERE m.id LIKE '48Z%' 
--  AND m.membership_status = 'gold' 
--  AND c.check_in_date = 20180109;

--SELECT p.*, d.*
--FROM person AS p
--JOIN drivers_license AS d 
--  ON p.license_id = d.id
--WHERE d.plate_number LIKE '%H42W%';

--SELECT * FROM drivers_license;
--SELECT * FROM facebook_event_checkin;


--SELECT * 
--FROM interview 
--WHERE person_id = 67318;


SELECT p.*, d.*, f.*, i.*
FROM person as p
JOIN drivers_license AS d 
  ON p.license_id = d.id
JOIN facebook_event_checkin as f
  ON p.id = f.person_id
JOIN income as i
  ON p.ssn = i.ssn
WHERE d.gender = 'female' 
  AND d.height BETWEEN 65 AND 67 
  AND d.hair_color = 'red'
  AND d.car_make = 'Tesla' 
  AND f.event_name = 'SQL Symphony Concert'
  AND f.date LIKE '201712%'
ORDER BY annual_income DESC
LIMIT 1;





              