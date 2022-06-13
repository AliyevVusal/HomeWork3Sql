--DataBasa yaratma 
Create Database SuperMarket

--DataBasan-i Istifade Etme
Use SuperMarket


--Tabel Yaratma Brands
Create Table Brands(
	
	Id int,
	Name nvarchar(30)
)

--Brands Tabelin doldurma
Insert Into Brands Values 
	(1, 'Apple'),
	(2, 'Samsung'),
	(3, 'Asus'),
	(4, 'Acer'),
	(5, 'Lenova')



--Tabel Yaratma Notebooks
Create Table Notebooks(
	Id int,
	Name nvarchar(30),
	Price decimal(18,2),
	BrandId int
)

--Notebooks Tabelin Doldurma
Insert Into Notebooks Values 
	(1, 'Mac',400,1),
	(2, 'Galaxy Books',500,2),
	(3, 'ROG',600,3),
	(4, 'Nitro',700,4),
	(5, 'legion',800,5)

--Table Silme
Drop Table Notebooks


--Table yaratma Phones
Create Table Phones(
	Id int,
	Name nvarchar(30),
	Price decimal(18,2),
	BrandID int
)

--Phones Tablen Doldurma


--

