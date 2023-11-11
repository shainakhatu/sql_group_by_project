select * from smartphone;

-- 1.Group smartphones by the intended memory available and get the average price--

select internal_memory,
round(avg(price)) as prige
from smartphone
group by internal_memory;

-- 2.Group smartphones by brand and get the count, average price, max rating, avg screen size, and avg battery capacity--

select brand_name, count(*) as phone,
round(avg(price)) as price,
max(rating)as rating,
round(avg(screen_size),2)as rating,
round(avg(battery_capacity))as battre
from smartphone
group by brand_name
order by phone desc limit 20;
-- 3 Group smartphones by whether they have an NFC and get the average price and rating--
select has_nfc,
avg(rating)as rating,
avg(price)as price
from smartphone
group by has_nfc;

-- 4. Which brand makes the smallest-screen smartphones--
select brand_name,
avg(screen_size)as avg_scin
from smartphone
group by brand_name
order by avg_scin asc
limit 1;
-- 5 Group smartphones by the brand, and find the brand with the highest number of models that have both NFC and an IR blaster--
select brand_name,count(*)as count
from smartphone
where has_ir_blaster = 'true' and has_ir_blaster = 'true'
group by brand_name
order by count desc limit 1;

-- 6 Find all Samsung 5g enabled smartphones and find out the avg price for NFC and Non-NFC phones--
select has_nfc,round(avg(price))as avg_price from smartphone
where brand_name = 'samsung'
group by has_nfc;

-- 7.Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution (rear)--
select brand_name,processor_brand,
count(*)as nub_phone,
round(avg(primary_camera_rear))as avg_camera
from smartphone
group by brand_name,processor_brand
order by brand_name asc;

-- 8. Find the top 5 most costly phone brands --
select brand_name,
round(avg(price))as avg_prige
from smartphone
group by brand_name
order by  avg_prige desc limit 5;


