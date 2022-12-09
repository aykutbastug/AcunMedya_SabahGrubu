--select * from [dbo].[UrunKategoriListesi_vw]

--view oluşturmak için CREATE VIEW komutu kullanılır
--var olan bir viewi güncellemek için ALTER VIEW komutu kullanılır

--create view dbo.KategoriSatisTutarlari
alter view dbo.KategoriSatisTutarlari
as
select c.CategoryName, SUM(o.UnitPrice) as SiparisToplami 
from dbo.OrderDetails as o
inner join dbo.Products as p on p.ProductID=o.ProductID
inner join dbo.Categories as c on c.CategoryID=p.CategoryID
group by c.CategoryName

--var olan bir view'den veri çekmek için select cümlesi kullanılır
select * from dbo.KategoriSatisTutarlari order by SiparisToplami