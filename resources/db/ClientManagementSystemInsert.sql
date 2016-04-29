USE [Client Management System];
GO
INSERT INTO [dbo].[tClient](businessName, clientFirstName, clientLastName, phoneNumber, email, createdOn, updatedOn)
VALUES ('Business 1', 'Tom', 'Jones', '1705-555-5555', 'example1@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP), 
	   ('Business 2', 'Bob', 'Dole', '1705-555-5556', 'example2@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 3', 'Rita', 'Bobita', '1705-555-5557', 'example3@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 4', 'Timmy', 'Smith', '1705-555-5558', 'example4@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 5', 'Rhonda', 'Arouseme', '1705-555-5559', 'example5@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 6', 'Summit', '1G', '1705-555-5550', 'example6@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 7', 'Bernie', 'Sanders', '1705-555-5554', 'example7@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 8', 'Connor', 'McDavid', '1705-555-5553', 'example8@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   ('Business 9', 'Martin', 'St. Louis', '1705-555-5552', 'example9@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	   (NULL, 'Martin', 'Brodeur', '1705-555-5551', 'example10@domain.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

GO
INSERT INTO [dbo].[tProjectStatus](projectStatusDesc)
VALUES ('Quote'),
	   ('In Progress'),
	   ('Complete'),
	   ('Inactive'),
	   ('Terminated');

GO
INSERT INTO [dbo].[tProjectType](projectTypeDesc)
VALUES ('Website'),
	   ('Social Media'),
	   ('Ad Creation'),
	   ('Print'),
	   ('Graphic'),
	   ('Marketing');
GO
INSERT INTO [dbo].[tBillingType](billingTypeDesc, billingTypeValue)
VALUES ('Monthly', '12'), --billing value being how many times you make payments per year i.e.(monthly you pay 12 times a year, semi you pay 2 times a year, annually you pay 1 time a year)
	   ('Semi-Annually', '2'),
	   ('Anually', '1');

GO
INSERT INTO [dbo].[tHosting](hostingCost, startDate, terminationDate, client_clientID, hosting_billingType)
VALUES ('100.00', CURRENT_TIMESTAMP, DATEFROMPARTS(2018, 01, 21), 1, 3),
	   ('100.00', CURRENT_TIMESTAMP, DATEFROMPARTS(2017, 01, 21), 1, 2),
	   ('200.00', CURRENT_TIMESTAMP, DATEFROMPARTS(2016, 05, 21), 2, 1),
	   ('69.00', CURRENT_TIMESTAMP, DATEFROMPARTS(2016, 10, 21), 3, 1),
	   ('100.00', CURRENT_TIMESTAMP, DATEFROMPARTS(2019, 01, 01), 3, 1);

GO
INSERT INTO [dbo].[tProject](projectName, projectTotalCost, hasHosting, projectDesc, domainName, estimatedLaunchDate, startDate, lastUpdated, client_clientID, project_projectType, project_projectStatus, hosting_hostingID)
VALUES ('Project 1', '15000', 1, 'This is a website project', 'www.mywebsite.com', DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 1, 1, 2, 1),
	   ('Project 2', '1000', 0, 'This project is a social media campaign', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 2, 2, 3, 3),
	   ('Project 3', '1500', 0, 'This project is print related', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 3, 4, 3, 5),
	   ('Project 4', '100', 0, 'This project is a marketing campaign', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 4, 6, 2, null),
	   ('Project 5', '500', 1, 'This project is for ad creation', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 5, 3, 2, null),
	   ('Project 6', '6000', 0, 'This project is for a logo', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 6, 5, 2, null),
	   ('Project 7', '80', 0, 'This project is for marketing', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 7, 6, 2, null),
	   ('Project 8', '100', 0, 'This project is for social media', null, DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 8, 2, 5, null),
	   ('Project 9', '1400', 1, 'This project is for a website', 'www.mywebsite2.com', DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 1, 1, 3, 2),
	   ('Project 10', '250', 0, 'This is for a website', 'www.mywebsite3.com', DATEFROMPARTS(2016, 01, 21), datefromparts(2016, 01, 01), CURRENT_TIMESTAMP, 3, 1, 2, 4);

GO
INSERT INTO [dbo].[tNoteStatus](statusDesc)
VALUES ('TODO'),
	   ('Complete');

GO
INSERT INTO [dbo].[tProjectNotes](noteDesc, noteDate, noteStatus_noteStatusID, project_projectID)
VALUES ('Note 1', getdate(), 1, 1),
	   ('Note 2', getdate(), 2, 2),
	   ('Note 3', getdate(), 2, 3),
	   ('Note 4', getdate(), 2, 4),
	   ('Note 5', getdate(), 1, 4);