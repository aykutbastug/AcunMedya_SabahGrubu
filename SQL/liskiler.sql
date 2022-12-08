select * from Kategoriler
select * from Kitaplar
select * from Yazarlar

--insert into dbo.Kategoriler values ('Genel Kültür')
--insert into dbo.Kitaplar values ('O', '1265','Stephen King', 2)
--insert into dbo.Yazarlar values ('Stephen King')

--update dbo.Kitaplar set YazarId=1 where KitapId=2

select k.*, ka.KategoriAdi 
from dbo.Kitaplar as k
inner join dbo.Kategoriler as ka on ka.KategoriId=k.KategoriId

select k.*, ka.KategoriAdi 
from dbo.Kitaplar as k
left join dbo.Kategoriler as ka on ka.KategoriId=k.KategoriId


select k.*, ka.KategoriAdi 
from dbo.Kitaplar as k
right join dbo.Kategoriler as ka on ka.KategoriId=k.KategoriId


select k.*, ka.KategoriAdi 
from dbo.Kitaplar as k
full outer join dbo.Kategoriler as ka on ka.KategoriId=k.KategoriId


--update dbo.Kitaplar set Yazar=NULL


select k.KitapAdi, k.SayfaSayisi, y.YazarAdi, ka.KategoriAdi
from dbo.Kitaplar as k
inner join dbo.Yazarlar as y on y.YazarId=k.YazarId
inner join dbo.Kategoriler as ka on ka.KategoriId=k.KategoriId