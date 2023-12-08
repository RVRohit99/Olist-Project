-- Q1 -- Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics

-- select weekend,
-- round(sum(payment_value),0) as PaymentValue
-- from orders_details
-- group by 1

-- Q2. Number of Orders with review score 5 and payment type as credit card.

-- select count(order_id) as Number_of_Orders
-- from Orders_details
-- where payment_type = 'credit_card'
-- and review_score = 5

-- Q3. Average number of days taken for order_delivered_customer_date for pet_shop

-- select round(avg(days_to_deliver),0) as Average_Day
-- from orders_details as od
-- join olist_products_dataset as pd on pd.order_id=od.order_id
-- where product_category_name = 'Pet_shop'

-- Q4. Average price and payment values from customers of sao paulo city

-- select round(avg(price),3) as AVG_PRICE,
-- round(avg(payment_value),3) as AVG_PAYMENT
-- from olist_products_dataset as pd
-- join orders_details as od on od.order_id=pd.order_id
-- join customers_dataset as cd on cd.customer_id=od.customer_id
-- where customer_city = 'sao paulo'

-- Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores.

-- SELECT
--     review_score,
--     AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS avg_shipping_days
-- FROM
--     orders_details
-- group by 1
