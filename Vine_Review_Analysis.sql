CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

select * from products_table;
select * from vine_table;
select * from customers_table;
select * from review_id_table;

--#1 Filter data adn create new table to retrieve total_votes >=20
select *
into total_reviews20
from vine_table
where total_votes >= 20;

--#2 Create new table to retrieve all rows >= 50%
select *
into helpful_reviews
from total_reviews20
where CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.50;

--#3 Retrieve all rows where review was written as part of the Vine Program Paid ie. vine = yes
select *
into paid_helpful_reviews
from helpful_reviews
where vine = 'Y';

--#4 Retrieve all rows where review was Vine Program Unpaid ie. vine = N
select *
into unpaid_helpful_reviews
from helpful_reviews
where vine = 'N';

--#5 Determine total number of reviews, number of 5-star reviews, and percentage of 5-star reviews to total for PAID
select (count(review_id))as tot_reviews, (select count(review_id) from paid_helpful_reviews where star_rating = 5) as count_5star, 
cast((select count(review_id) from paid_helpful_reviews where star_rating = 5)as float)/cast(count(review_id)as float)*100 as pct_of_5stars
from paid_helpful_reviews;

--#5 Determine total number of reviews, number of 5-star reviews, and percentage of 5-star reviews to total for UNPAID
select (count(review_id))as tot_reviews, (select count(review_id) from unpaid_helpful_reviews where star_rating = 5) as count_5star, 
cast((select count(review_id) from unpaid_helpful_reviews where star_rating = 5)as float)/cast(count(review_id)as float)*100 as pct_of_5stars
from unpaid_helpful_reviews;



select count(review_id)
from unpaid_helpful_reviews;


