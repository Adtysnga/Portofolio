select * from uk_retail.data_uk;

-- Soal 1 : Kode ini untuk menghitung total pendapatanuntuk setiap produk dan mencari 10 teratas.
select 
Description , Sum(Quantity * UnitPrice) as total_revenue
from uk_retail.data_uk
group by StockCode, Description
ORDER BY
Total_Revenue DESC
LIMIT 10;

-- soal 2: mencari 10 pelangan teratas
select 
CustomerID , Sum(Quantity * UnitPrice) as total_Money_spent
from uk_retail.data_uk
group by CustomerID
ORDER BY
total_Money_spent DESC
LIMIT 10;

-- soal 3 : menghitung total pendapatkan perkota dan banyak transaksi
SELECT
    Country,
    SUM(Quantity * UnitPrice) AS Total_Revenue_Per_Country,
    COUNT(DISTINCT InvoiceNo) AS Total_Unique_Transactions
FROM
    uk_retail.data_uk
WHERE
    Quantity > 0 AND UnitPrice > 0
GROUP BY
    Country
ORDER BY
    Total_Revenue_Per_Country DESC;