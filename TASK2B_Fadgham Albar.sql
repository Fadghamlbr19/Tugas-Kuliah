-- menggunakan database TaskDML2_Fadgham Albar
use student;

-- Asal daerah mahasiswa
select distinct st_citad
from students;

-- IPK tertinggi
select max(st_ipk)
from students
where st_citad = 'Jakarta';

-- IPK terendah
 select min(st_ipk)
 from students
 where st_dpt = 'Computer';
 
 -- jumlah mahasiswa dept computer
 select count(nim)
 from students
 where st_dpt = 'Computer';
 
 -- Rata-rata ipk mahasiswa dept math
 select avg(st_ipk)
 from students
 where st_dpt = 'Math';
 
 -- menampilkan jumlah mahasiswa masing-masing dept (termasuk null)
 select distinct st_dpt, count(*) 'Jumlah Data Mahasiswa'
 from students
 group by st_dpt;
 
  -- menampilkan jumlah mahasiswa masing-masing asal daerah
 select st_citad, count(*) 'Jumlah mahasiswa'
 from students
 group by st_citad;
 
   -- menampilkan jumlah mahasiswa masing-masing asal daerah di bawah 20 tahun
 select st_citad, count(*) 'Jumlah mahasiswa di bawah 20 tahun'
 from students
 where st_age < 20
 group by st_citad;