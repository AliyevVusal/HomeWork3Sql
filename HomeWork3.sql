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
	(2, 'Galaxy Books',5020,2),
	(3, 'ROG',22600,3),
	(4, 'Nitro',703210,4),
	(5, 'legion',20321,5)

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
Insert Into Phones Values 
	(1, '13 Pro Max',400,1),
	(2, 'Galaxy S20 Ultura',500,2),
	(3, 'ZenFold',600,3),
	(4, 'K-5',700,4),
	(5, 'Ipades',800,5)


--Notebooks Adini, Brandin Adini BrandName kimi ve Qiymetini Cixardan Query.
Select b.Name,n.Name,n.Price from Notebooks n
Inner join Brands b On n.BrandId = b.Id
Group by b.Name,n.Name,n.Price

--Phones Adini, Brandin Adini BrandName kimi ve Qiymetini Cixardan Query.
Select b.Name,p.Name,p.Price from Phones p
Inner join Brands b On p.BrandId = b.Id
Group by b.Name,p.Name,p.Price

--Brand Adinin Terkibinde s Olan Butun Notebooklari Cixardan Query.
Select b.Name,n.Name,n.Price from Notebooks n
Inner join Brands b On n.BrandId = b.Id
Group by b.Name,n.Name,n.Price

--Qiymeti 2000 ve 5000 arasi ve ya 5000 den yuksek Notebooklari Cixardan Query.
Select b.Name,n.Name,n.Price from Notebooks n
Inner join Brands b On n.BrandId = b.Id Where Price>5000
Group by b.Name,n.Name,n.Price

--Qiymeti 1000 ve 1500 arasi ve ya 1500 den yuksek Phonelari Cixardan Query.
Select b.Name,p.Name,p.Price from Phones p
Inner join Brands b On p.BrandId = b.Id Where Price>1500
Group by b.Name,p.Name,p.Price

--Her Branda Aid Nece dene Notebook Varsa Brandin Adini Ve Yaninda Sayini Cixardan Query.
Select b.Name,n.Name,COUNT(*) from Notebooks n
Inner join Brands b On n.BrandId = b.Id
Group by b.Name,n.Name

--Her Branda Aid Nece dene Phone Varsa Brandin Adini Ve Yaninda Sayini Cixardan Query.
Select b.Name,p.Name,COUNT(*) from Phones p
Inner join Brands b On p.BrandId = b.Id
Group by b.Name,p.Name

--Hem Phone Hem de Notebookda Ortaq Olan Name ve BrandId Datalarni Bir Cedvelde Cixardan Query.

--Phone ve Notebook da Id, Name, Price, ve BrandId Olan Butun Datalari Cixardan Query.

--Phone ve Notebook da Id, Name, Price, ve Brandin Adini BrandName kimi Olan Butun Datalari Cixardan Query.

--Phone ve Notebook da Id, Name, Price, ve Brandin Adini BrandName kimi Olan Butun Datalarin Icinden Price 1000-den Boyuk Olan Datalari Cixardan Query.

--Phones Tabelenden Data Cixardacaqsiniz Amma Nece Olacaq Brandin Adi (BrandName kimi), Hemin Brandda Olan Telefonlarin Pricenin Cemi (TotalPrice Kimi) ve Hemin Branda Nece dene Telefon Varsa Sayini (ProductCount Kimi) Olan Datalari Cixardan Query.

--Notebooks Tabelenden Data Cixardacaqsiniz Amma Nece Olacaq Brandin Adi (BrandName kimi), Hemin Brandda Olan Telefonlarin Pricenin Cemi (TotalPrice Kimi) , Hemin Branda Nece dene Telefon Varsa Sayini (ProductCount Kimi) Olacaq ve Sayi 3-ve 3-den Cox Olan Datalari Cixardan Query.
