select * from [dbo].[Customers] where CompanyName like 'An%' -- City kolondaki An ile başlayan kayıtları listeler
select * from [dbo].[Customers] where CompanyName like '%An%' -- City kolondaki içinde an geçen kayıtları listeler
select * from [dbo].[Customers] where City like '%on' -- City kolondaki on ile biten kayıtları listeler

select * from Customers where CompanyName='Around the Horn' -- companyName alanında Around the Horn yazan kayıtları listeler

select * from Customers where Country <> 'UK'and PostalCode='44000' --Country alanında UK olmayan kayıtları ve PastalCode alanı 44000 olan kayıtları listeler

select * from Customers where PostalCode='44000' or PostalCode='67000'-- PostalCode değerinde 44000 ve 67000 olan kayıtları listeler

select * from Customers where PostalCode in ('44000','67000') -- PostalCode değerinde 44000 ve 67000 olan kayıtları listeler
select * from Customers where PostalCode not in ('44000','67000') -- PostalCode değerinde 44000 ve 67000 haricindeki kayıtları listeler


select * from Products where UnitsInStock < 10 --UnitsInStock değeri 10 dan küçük olan kayıtları listeler
select * from Products where UnitsInStock < '10'  --UnitsInStock değeri 10 dan küçük olan kayıtları listeler
select * from Products where UnitsInStock <= 10 --UnitsInStock değeri 10 ve altı olan kayıtları listeler
select * from Products where UnitsInStock between 10 and 30 --UnitsInStock 10 ile 30 arasındaki kayıtları listeler
select * from Products where UnitsInStock >=10 and UnitsInStock<=30  -- UnitsInStock değeri 10 ve üstü olanlar ile 30 ve altı olan kayıtları listeler

--İndirimli (Discounted) olan ve fiyatı (UnitePrice) 50 üzerinde olan kayıtlar
select * from Products where UnitPrice >50 and Discontinued=1

select top (5) * from Products -- ilk kaydı getirir
select top (5) * from Products order by UnitPrice --ilk 5 kaydı getirir ve fiyata göre artan sıralama yapar
select * from Products where UnitPrice>5 order by UnitPrice -- Küçükten büyüğe sıralar
select * from Products where UnitPrice>5 order by UnitPrice asc -- Küçükten büyüğe sıralar
select * from Products where UnitPrice>5 order by UnitPrice desc --büyükten küçüğe sıralar

select * from Products where UnitPrice>5 order by ProductName asc --A dan Z ye sıralar
select * from Products where UnitPrice>5 order by ProductName desc --Z den A ya sıralar

select * from Products where UnitPrice>5 order by CategoryID, UnitPrice desc -- Fiyatı 5 den büyük olan kayıtları Önce CategoryId alanına göre küçükten büyüğe sıralar sonra UnitePrice alanına göre büyükten küçüğe sıralar

select * from Orders where ShipRegion is null --ShipRegion alanı NULL olan kayıtları getirir
select * from Orders where ShipRegion is not null --ShipRegion alanı NULL olmayan kayıtları getirir


--kategorisi 8 olan ve stok miktarı 50 den küçük olan 
--ilk 5 ürün kaydının Ürün adı, CategoryId ve StokMiktari verilerini
--Ürün adına göre sıralayarak getirsin

