/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DELETE FROM BOOK;
DELETE FROM AUTHOR;
DELETE FROM STUDENT;


INSERT INTO AUTHOR (AUTHORID, AUTHORFIRSTNAME, AUTHORLASTNAME, AUTHORTAXFILENUMBER) VALUES
(32567, 'Edgar', 'Codd', 150111222),
(76543, 'Vinton', 'Cerf', 150222333),
(12345, 'Alan', 'Turing', 150333444)


INSERT INTO Book(ISBN, TITLE, YEARPUBLISHED, AUTHORID) VALUES
('978-3-16-148410-0', 'Relationships with Databases, the ins and outs', 1970, 32567),
('978-3-16-148410-1', 'Normalisation, how to make a database geek fit in.', 1973, 32567),
('978-3-16-148410-2', 'TCP/IP, the protocolfor the masses.', 1983, 76543),
('978-3-16-148410-3', 'The Man, the Bombe, andthe Enigma.', 1940, 12345);