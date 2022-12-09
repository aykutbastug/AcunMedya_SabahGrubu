select 'CUST' as [Type], CompanyName, ContactName, ContactTitle from dbo.Customers
union all
select  'SUPP' as [Type], CompanyName, ContactName, [Address] from dbo.Suppliers
order by CompanyName

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

select * from 
(select 'CUST' as [Tip], CompanyName as Unvan, ContactName as Yetkili, ContactTitle as YetkiliUnvan from dbo.Customers

union all

select  'SUPP' as [Tip], CompanyName as Unvan, ContactName as Yetkili, ContactTitle as YetkiliUnvan from dbo.Suppliers) as YeniListe
where Tip='CUST'
order by Unvan

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------


select ProductID, ProductName, (select SUM(o.Quantity) from dbo.OrderDetails as o where o.ProductID=p.ProductID) as [Sipariş Adedi]
from dbo.Products as p

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

select OrderID as [Sipariş No], OrderDate as [Sipariş Tarihi], (select SUM(od.UnitPrice) from OrderDetails as od where od.OrderID=o.OrderID) as [Toplam Tutar] from Orders as o

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

select Country from dbo.Customers group by Country
select Country, City from dbo.Customers group by Country, City

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

select Country, City 
from dbo.Customers
--join
where Country='Brazil'
group by Country, City
order by City

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

select Country, COUNT(Country) as [Müşteri Sayısı] from dbo.Customers group by Country

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--hangi kategoriden kaç tane ürünüm var
select c.CategoryName, COUNT(c.CategoryName) as UrunSayisi 
from dbo.Products as p
inner join dbo.Categories as c on c.CategoryID=p.CategoryID
--varsa diğer joinler olabilir
where c.CategoryName like 'C%'
group by c.CategoryName
having COUNT(c.CategoryName)>10
order by COUNT(c.CategoryName) desc

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--KategoriAdı, SiparişTutarı  tutar alanına göre büyükten küçüğe sıralanacak
select c.CategoryName, SUM(o.UnitPrice) as SiparisToplami 
from dbo.OrderDetails as o
inner join dbo.Products as p on p.ProductID=o.ProductID
inner join dbo.Categories as c on c.CategoryID=p.CategoryID
group by c.CategoryName
order by SiparisToplami desc


