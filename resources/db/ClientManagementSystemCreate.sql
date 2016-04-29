use [Client Management System];

create table dbo.tClient
(
clientID int identity(1,1) primary key not null, 
businessName varchar(100) null,
clientFirstName varchar(50) not null,
clientLastName varchar(50) not null,
phoneNumber varchar(14) not null,
email varchar(100) null,
createdOn date not null,
updatedOn smalldatetime not null
);

create table tProjectStatus
(
projectStatusID int identity(1,1) primary key not null,
projectStatusDesc varchar(50) not null
);


create table tProjectType
(
projectTypeID int identity(1,1) primary key not null,
projectTypeDesc varchar(80) not null
);


create table tBillingType
(
billingTypeID int identity(1,1) primary key not null,
billingTypeDesc varchar(50) not null,
billingTypeValue int not null
);


create table dbo.tHosting
(
hostingID int identity(1,1) not null primary key,
hostingCost varchar(50) not null,
startDate date not null,
terminationDate date null, 
client_clientID int not null,
foreign key (client_clientID) references tClient(clientID),
hosting_billingType int not null,
foreign key (hosting_billingType) references tBillingType(billingTypeID)
);


create table tProject
(
projectID int identity(1,1) primary key not null,
projectName varchar(100) not null,
projectTotalCost decimal not null,
hasHosting bit not null,
projectDesc nText not null,
domainName varchar(100) null,
estimatedLaunchDate date not null,
startDate date not null,
completionDate date null,
lastUpdated smalldatetime not null,
client_clientID int not null,
foreign key (client_clientID) references tClient(clientID),
project_projectType int not null,
foreign key (project_projectType) references tProjectType(projectTypeID),
project_projectStatus int not null,
foreign key (project_projectStatus) references tProjectStatus(projectStatusID),
hosting_hostingID int null,
foreign key (hosting_hostingID) references tHosting(hostingID)
);


create table tNoteStatus
(
noteStatusID int identity(1,1) primary key not null,
statusDesc varchar(50) not null
);


create table tProjectNotes
(
noteID int identity(1,1) primary key not null,
noteDesc varchar(500) not null,
noteDate smalldatetime not null,
noteStatus_noteStatusID int not null,
foreign key (noteStatus_noteStatusID) references tNoteStatus (noteStatusID),
project_projectID int not null,
foreign key (project_projectID) references tProject(projectID)
);


