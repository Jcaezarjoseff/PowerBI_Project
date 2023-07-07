select * from superstore_sales

/*standardizing decimal places for sales, profit and discount*/
UPDATE superstore_sales 
set sales = ROUND(sales, 2);

UPDATE superstore_sales 
set profit = ROUND(profit, 2);

describe superstore_sales

alter table superstore_sales drop Discount

/*previously columns contains spaces so i replaced it with undescore for readablity and easy to include in queries*/
alter table superstore_sales rename column `Row ID` to Row_ID;
alter table superstore_sales rename column `Order ID` to Order_ID;
/*and son..*/

/*converting ship_date and order_date column in text data type into date data type*/
SELECT  STR_TO_DATE(ship_date, '%m/%d/%Y') 
FROM superstore_sales

alter table superstore_sales add shipment_date date after ship_date
update superstore_sales
set shipment_date = STR_TO_DATE(ship_date, '%m/%d/%Y') 

alter table superstore_sales drop ship_date

alter table superstore_sales rename column order_datealter to Order_date
update superstore_sales
set order_date_converted = STR_TO_DATE(order_date, '%m/%d/%Y') 

alter table superstore_sales drop order_date














 


