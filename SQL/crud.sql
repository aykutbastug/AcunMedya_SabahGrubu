--CRUD işlemler

select * from dbo.Categories where CategoryID=57

insert into dbo.Categories (CategoryName, [Description], Picture)
values ('Mouse', 'Fare kategorisi açıklaması', NULL)


insert into dbo.Categories values ('Mouse 2', 'Fare 2 kategorisi açıklaması', NULL)

insert into dbo.Categories (CategoryName, [Description])
values ('Mouse 3', 'Fare 3 kategorisi açıklaması')


--update dbo.Categories set CategoryName='Mouse 4', [Description]='' where CategoryID=57



select * from [dbo].[MyUsers]
--insert into dbo.MyUsers values ('aaaa')

--Tabloyu otomatik artan değerler sıfırlamadan tüm verileri siler
--delete from dbo.MyUsers

--Tabloda Id kolonundaki değeri 1 olan bütün kayıtları siler
--delete from dbo.MyUsers where Id=1

--Tabloyu otomatik artan değerler dahil tamamen sıfırlar
--truncate table dbo.MyUsers

--
--ArabaId, Markası, Modeli, Üretim Yılı, Kilometre, Vites Tipi


select * from dbo.Arabalar
insert into dbo.Arabalar values ('Citröen','C3',2012, 0)
insert into dbo.Arabalar values ('Citröen','C5',2018, 1, 50)

--en küçük değeri bulmak için kullanılınır
select MIN(UnitPrice) from dbo.Products
select MIN(UnitPrice) from dbo.Products where CategoryID=1

--en büyük değeri bulmak için kullanılır
select MAX(UnitPrice) from dbo.Products
select MAX(UnitPrice) from dbo.Products where CategoryID=1

--tablodaki kayıt sayısını verir
select COUNT(*) from dbo.Products
select COUNT(*) from dbo.Products where CategoryID=1

--toplam almak için kullanılır
select SUM(UnitPrice) from dbo.Products
select SUM(UnitPrice) from dbo.Products where CategoryID=1


--ortalama almak için kullanılır
select AVG(UnitPrice) from dbo.Products
select AVG(UnitPrice) from dbo.Products where CategoryID=1


--ProductId si 24 olan kayıtların genel toplam tutarını miktar*fiyat-indirim
select * from dbo.OrderDetails
select SUM((UnitPrice*Quantity) - Discount) from dbo.OrderDetails where ProductID=24


select SUM((UnitPrice * Discount) * Quantity) from OrderDetails where ProductID=24

select *, ((UnitPrice * Discount) * Quantity) from OrderDetails where ProductID=24



