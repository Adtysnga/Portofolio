select *
from retailsales_dataset;

-- Berapa total penjualan keseluruhan dan Berapa rata-rata harga per transaksi?
select Sum(Quantity) as `total Penjualan`, 
avg(`Total Amount`) as `Rata Rata Penjualan`
from retailsales_dataset;

-- Tentukan 5 produk terlaris berdasarkan jumlah unit yang terjual.
select `Product Category`, sum(Quantity) as `total Quantity`
from retailsales_dataset
group by `Product Category`
order by `total Quantity` desc
Limit 5;

-- Tentukan total pendapatan berdasarkan jenis kelamin pelanggan.
select Gender , sum(`Total Amount`) as `total pendapatan`
from retailsales_dataset
group by Gender;

-- analisis hari terbaik untuk penjualan
SELECT
    DAYNAME(STR_TO_DATE(Date, '%d/%m/%Y')) AS `nama hari`,
    SUM(quantity) AS `total penjualan`
FROM
    retailsales_dataset
GROUP BY
    DAYNAME(STR_TO_DATE(Date, '%d/%m/%Y'))
ORDER BY
    `total penjualan` DESC;