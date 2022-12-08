--Ürünün adı, Tedarikçi Adı, kategorisinin adı, StokMiktarı
--Ürünler tablosu		= dbo.Products
--Tedarikçiler Tablosu	= dbo.Suppliers
--Kategoriler tablosu	= dbo.Categories
--Stok Miktarı			= UnitsInStock
--Ürün adı				= ProductName

select p.ProductName, s.CompanyName, c.CategoryName, p.UnitsInStock
from [dbo].[Products] as p
inner join dbo.Suppliers as s on s.SupplierID=p.SupplierID
inner join dbo.Categories as c on c.CategoryID=p.CategoryID
where p.UnitsInStock<10 and c.CategoryName='Condiments'
order by p.ProductName


select p.ProductName, s.CompanyName, c.CategoryName, p.UnitsInStock
from [dbo].[Products] as p
inner join dbo.Suppliers as s on s.SupplierID=p.SupplierID
right join dbo.Categories as c on c.CategoryID=p.CategoryID