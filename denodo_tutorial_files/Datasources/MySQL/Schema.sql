#
# CREATE DATABASE AND USER
#

CREATE DATABASE acme_crm;
CREATE USER acme_user@'localhost' IDENTIFIED BY 'acme_user';
GRANT USAGE ON *.* TO acme_user@'localhost' ;
GRANT REFERENCES ON acme_crm.* TO acme_user@'localhost';
GRANT UPDATE ON acme_crm.* TO acme_user@'localhost';
GRANT INSERT ON acme_crm.* TO acme_user@'localhost';
GRANT CREATE ON acme_crm.* TO acme_user@'localhost';
GRANT ALTER ON acme_crm.* TO acme_user@'localhost';
GRANT INDEX ON acme_crm.* TO acme_user@'localhost';
GRANT SELECT ON acme_crm.* TO acme_user@'localhost';
GRANT LOCK TABLES ON acme_crm.* TO acme_user@'localhost';
GRANT CREATE TEMPORARY TABLES ON acme_crm.* TO acme_user@'localhost';
GRANT DROP ON acme_crm.* TO acme_user@'localhost';
GRANT DELETE ON acme_crm.* TO acme_user@'localhost';


#
# CREATE TABLES
#

use acme_crm;

CREATE TABLE client ( 
	client_id   	varchar(50) NOT NULL primary key,
	name    	varchar(100) NOT NULL,
	surname   	varchar(100) NOT NULL,
	client_type    	varchar(2) NOT NULL
	)
;

CREATE TABLE address ( 
	client_fid   	varchar(50) NOT NULL,
	street      	varchar(100) NULL,
	city         	varchar(100) NULL,
	zip          	varchar(100) NULL,
	state        	varchar(100) NULL,
	primary_phone	varchar(100) NULL
	)
;

CREATE TABLE client_type ( 
	code	   	varchar(2) NOT NULL,
	value        	varchar(100) NULL
	)
;

#
# POPULATE TABLES
#
use acme_crm;

INSERT INTO client(client_id, surname, name, client_type) VALUES('C001', 'Smith', 'John', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C002', 'Smith', 'Pat', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C003', 'Smith', 'Jack', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C004', 'Smith', 'Frank', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C005', 'Smith', 'Maria', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C006', 'Smith', 'Mary', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C007', 'Smith', 'W.', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C008', 'Smith', 'S', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C009', 'Smith', 'Wendy', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C010', 'Smith', 'Yi-Ning', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C011', 'Smith', 'Zi H', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C012', 'Liang', 'Der S', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C013', 'Liang', 'Dongming', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C014', 'Liang', 'Sara', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C015', 'Liang', 'Yifan', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C016', 'Liangxu', 'Benjamin', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C017', 'Liao', 'Charlene', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C018', 'Libbey', 'Kent A', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C019', 'Libera', 'Maria E', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C020', 'Liberatore', 'Jack F', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C021', 'Librado', 'Joe B.', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C022', 'Licea', 'Alma', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C023', 'Lichtenger', 'David & Silvia', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C024', 'Lieberman', 'Robert N', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C025', 'Lieberstain', 'Roger', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C026', 'Liem', 'Soeseno Jimmy', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C027', 'Lien', 'Scott', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C028', 'Lierle', 'Kathy', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C029', 'Lieu', 'S L', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C030', 'Light', 'G S', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C031', 'Likar', 'L', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C032', 'Lilani', 'Ash', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C033', 'Lilian', 'E A', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C034', 'Lilledahl', 'C', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C035', 'Lilledahl', 'John P', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C036', 'Lillis', 'Kenneth F', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C037', 'Lim', 'Andrew', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C038', 'Lim', 'Eliza', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C039', 'Lim', 'Maria & Arne', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C040', 'Lim', 'Melisa', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C041', 'Wachtel', 'Alan & Cathy', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C042', 'Wachtel', 'Alan', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C043', 'Waddell', 'Linda', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C044', 'Wade', 'Beverly', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C045', 'Wade', 'Joel & Trevor', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C046', 'Wade', 'Leola Lee', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C047', 'Wade', 'Leola Lee', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C048', 'Wade', 'Virginia', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C049', 'Wadensweiler', 'Werner', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C050', 'Wadleigh', 'Clarence B Jr', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C051', 'Wagner', 'Andrea', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C052', 'Wagner', 'Daniel A & Loana', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C053', 'Wagner', 'Federico', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C054', 'Wagner', 'Patsy', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C055', 'Waight Partridge', 'Irene', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C056', 'Wakefield', 'Scott', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C057', 'Waldbusser', 'Steven', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C058', 'Waliman', 'Suwito', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C059', 'Walker', 'Gilwee PhD', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C060', 'Walker', 'Jan', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C061', 'Walker', 'Mica', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C062', 'Walker', 'Myrtle', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C063', 'Walker', 'Quentin', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C064', 'Walker', 'Wanda H & J Richard', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C065', 'Wallace', 'Blanca L', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C066', 'Wallace', 'J', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C067', 'Wallace', 'James B', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C068', 'Wallace', 'John Jr', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C069', 'Wallace', 'Joyce G', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C070', 'Wallace', 'L F', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C071', 'Wallace', 'Starlyn', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C072', 'Wallace', 'Willie', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C073', 'Wallance', 'Blanca L', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C074', 'Waller', 'Christine L', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C075', 'Walsh', 'C', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C076', 'Walsh', 'Daria P', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C077', 'Walsh', 'J', '02');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C078', 'Walston', 'Richard', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C079', 'Walstra', 'Robbe & Freda', '01');
INSERT INTO client(client_id, surname, name, client_type) VALUES('C080', 'Walter', 'Eugene L', '01');


INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C001', '3989 Middlefield Rd', 'San Jose', 'CA', '94085', '(408) 813-9318');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C002', '2189 Capitol Ave', 'San Jose', 'CA', '94085', '(408) 473-9848');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C003', '754 Southampton Dr', 'San Jose', 'CA', '94085', '(408) 322-2483');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C004', '1900 University Ave', 'San Jose', 'CA', '94085', '(408) 322-8588');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C005', '3149 Morris Dr', 'San Jose', 'CA', '94085', '(408) 320-9008');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C006', '777 San Antonio Rd', 'San Mateo', 'CA', '94401', '(408) 320-8681');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C007', '866 Colorado Ave', 'San Mateo', 'CA', '94401', '(408) 857-9686');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C008', '3603 Lupine Ave', 'San Mateo', 'CA', '94401', '(408) 856-8177');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C009', '1656 Channing Ave', 'San Mateo', 'CA', '94401', '(408) 322-2478');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C010', '879 Newell Pl', 'San Mateo', 'CA', '94401', '(510) 322-1035');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C011', '797 Allen Ct', 'Palo Alto', 'CA', '94303', '(650) 320-8168');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C012', '3248 Morris Dr', 'Palo Alto', 'CA', '94303', '(408)  855-9684');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C013', '777 San Antonio Rd', 'Palo Alto', 'CA', '94303', '(510) 813-1510');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C014', '1033 Loma Verde Ave', 'Palo Alto', 'CA', '94303', '(650) 857-9015');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C015', '2315 Greer Rd', 'Palo Alto', 'CA', '94303', '(408) 565-8073');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C016', '873 Marshall Dr', 'Palo Alto', 'CA', '94303', '(650) 858-8383');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C017', '3751 Middlefield Rd', 'Palo Alto', 'CA', '94303', '(408) 813-1229');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C018', '737 Ore;n Ave', 'Mountain View', 'CA', '94301', '(650) 462-1332');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C019', '430 E Okeefe St', 'Mountain View', 'CA', '94301', '(650) 838-9279');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C020', '3016 Greer Rd', 'Mountain View', 'CA', '94301', '(650) 858-0808');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C021', '3016 Greer Rd', 'Mountain View', 'CA', '94301', '(408) 858-1112');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C022', '2162 Clarke Ave', 'Mountain View', 'CA', '94301', '(650) 289-9082');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C023', '2226 Louis Rd', 'Mountain View', 'CA', '94301', '(650) 251-9514');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C024', '2448 Greer Rd', 'Mountain View', 'CA', '94301', '(510) 856-9495');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C025', '2448 Greer Rd', 'Fremont', 'CA', '94587', '(510) 858-0438');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C026', '2392 Saint Francis Dr', 'Fremont', 'CA', '94587', '(510) 813-1284');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C027', '920 Amarillo Ave', 'Fremont', 'CA', '94587', '(510) 424-8998');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C028', '970 Elsinore Ct', 'Fremont', 'CA', '94587', '(510) 856-0569');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C029', '981 Colorado Ave', 'Fremont', 'CA', '94587', '(510) 856-1792');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C030', '3170 Stelling Dr', 'Fremont', 'CA', '94587', '(510) 494-6382');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C031', '3826 Ross Rd', 'Fremont', 'CA', '94587', '(510) 494-7247');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C032', '3786 Grove Ave', 'Fremont', 'CA', '94587', '(510) 813-1395');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C033', '201 E Okeefe St', 'Fremont', 'CA', '94587', '(510) 473-6860');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C034', '813 Sutter Ave', 'Fremont', 'CA', '94587', '(510) 856-6460');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C035', '813 Sutter Ave', 'Fremont', 'CA', '94587', '(510) 320-9884');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C036', '3509 Greer Rd', 'Oakland', 'CA', '94601', '(510) 493-4599');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C037', '833 Donohoe St', 'Oakland', 'CA', '94601', '(510) 328-2873');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C038', '907 Embarcadero Rd', 'Oakland', 'CA', '94601', '(510) 329-1422');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C039', '908 Oakes St', 'Oakland', 'CA', '94601', '(510) 326-7339');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C040', '526 Sacramento St', 'Oakland', 'CA', '94601', '(510) 566-8759');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C041', '3446 Janice Way', 'Oakland', 'CA', '94601', '(510) 494-1750');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C042', '3446 Janice Way', 'Oakland', 'CA', '94601', '(510) 494-7520');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C043', '1969 Tate St', 'Oakland', 'CA', '94601', '(510) 289-9166');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C044', '2701 Greer Rd', 'Oakland', 'CA', '94601', '(510) 856-9339');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C045', '1020 Moffett Cir', 'Oakland', 'CA', '94601', '(510) 494-7462');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C046', '1123 Camellia Dr', 'Oakland', 'CA', '94601', '(510) 325-1117');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C047', '1123 Camellia Dr', 'Oakland', 'CA', '94601', '(510) 325-5677');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C048', '1020 Moffett Cir', 'Oakland', 'CA', '94601', '(510) 856-6964');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C049', '768 Greer Rd', 'Oakland', 'CA', '94601', '(510) 856-6583');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C050', '866 Rorke Way', 'Palo Alto', 'CA', '94303-4409', '(510) 494-7298');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C051', '1063 Colorado Ave', 'Palo Alto', 'CA', '94303-3816', '(650) 739-0423');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C052', '2272 Poplar Ave', 'Palo Alto', 'CA', '94303-1431', '(650) 324-2698');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C053', '511 Sacramento St', 'East Palo Alto', 'CA', '94303-1616', '(510) 289-0172');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C054', '232 Wisteria Dr', 'East Palo Alto', 'CA', '94303-2614', '(650) 322-4217');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C055', '2034 Edgewood Dr', 'Palo Alto', 'CA', '94303-3107', '(650) 856-2494');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C056', '993 Lawrence Ln', 'Palo Alto', 'CA', '94303-3834', '(650) 856-3838');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C057', '1804 Embarcadero Rd', 'Palo Alto', 'CA', '94303-3341', '(415) 948-6500');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C058', '3937 Bibbits Dr', 'Palo Alto', 'CA', '94303-4529', '(650) 843-0933');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C059', '3029 Price Ct', 'Palo Alto', 'CA', '94303-4101', '(650) 493-1017');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C060', '1174 Laurel Ave', 'Palo Alto', 'CA', '94303-1015', '(650) 462-9642');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C061', '1805 E Bayshore Rd', 'Apt 1207', 'CA', '94303-1015', '(650) 566-9412');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C062', '2552 Farrington Way', 'Palo Alto', 'CA', '94303-1118', '(415) 324-1458');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C063', '1927 Manhattan Ave', 'East Palo Alto', 'CA', '94303-2254', '(650) 330-1078');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C064', '3512 Ross Rd', 'Palo Alto', 'CA', '94303-4445', '(650) 493-3512');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C065', '2218 Addison Ave', 'East Palo Alto', 'CA', '94303-1435', '(415) 326-4008');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C066', '828 Schembri Ln', 'East Palo Alto', 'CA', '94303-1738', '(650) 324-8805');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C067', '1308 Westminster Ave', 'Palo Alto', 'CA', '94303-1052', '(650) 326-9654');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C068', '140 Daphne Way', 'East Palo Alto', 'CA', '94303-2637', '(650) 322-7832');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C069', '3164 Morris Dr', 'Palo Alto', 'CA', '94303-4037', '(650) 494-6655');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C070', '324 Azalia Dr', 'Palo Alto', 'CA', '94303-2014', '(650) 324-8313');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C071', '1021 Bradley Way', 'East Palo Alto', 'CA', '94303-1228', '(650) 853-0504');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C072', '2455 Illinois St', 'East Palo Alto', 'CA', '94303-1228', '(415) 326-1451');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C073', '280 E Okeefe St', 'Palo Alto', 'CA', '94303-2172', '(650) 566-1740');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C074', '2172 Poplar Ave', 'Palo Alto', 'CA', '94303-1429', '(650) 325-1862');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C075', '3126 David Ave', 'Palo Alto', 'CA', '94303-3945', '(415) 494-2574');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C076', '810 Fielding Dr', 'Palo Alto', 'CA', '94303-3645', '(650) 424-8866');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C077', '3126 David Ave', 'Palo Alto', 'CA', '94303-3945', '(650) 320-8561');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C078', '153 Walter Hays Dr', 'Palo Alto', 'CA', '94303-2924', '(415) 328-8327');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C079', '3930 Bibbits Dr', 'Palo Alto', 'CA', '94303-4528', '(650) 856-3457');
INSERT INTO address(client_fid, street, city, state, zip, primary_phone) VALUES('C080', '2347 Santa Ana St', 'Palo Alto', 'CA', '94303-3141', '(650) 856-9738');


INSERT INTO client_type(code, value) VALUES('01', 'Residential');
INSERT INTO client_type(code, value) VALUES('02', 'Business');