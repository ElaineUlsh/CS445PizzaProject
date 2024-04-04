CREATE TABLE [dbo].[Delivery_Address] (
[Delivery_ID] INT IDENTITY (1, 1) NOT NULL,
[Address_Type] VARCHAR (20) NOT NULL,
[AddressLine1] VARCHAR (50) NOT NULL,
[AddressLine2] VARCHAR (50) NULL,
[ZipCode] VARCHAR (5) NOT NULL,
[Phone] VARCHAR (12) NOT NULL,
[UserName] VARCHAR (20) NOT NULL,
PRIMARY KEY CLUSTERED ([Delivery_ID] ASC) );