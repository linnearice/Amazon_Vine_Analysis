# Amazon Vine Analysis

## Overview
This project analyzes Amazon's Vine program and determines if there is a bias toward favorable reviews (5-star reviews) from Vine members.  Data Analysis, Inc. (DAI) focused on the Amazon's US reviews for shoes dataset.  DAI utilized PySpark via Google Colab Notebook, PgAdmin, and Postgresql to perform the analysis.  DAI first performed extract, transform, and load (ETL) to prepare the data for analysis.  The dataset could then be analyzed to determine the most helpful reviews which were in turn used to compute for both Vine members (paid reviews) and non-Vine members (nonpaid reviews).  The following information was determined:

* the total number of reviews by paid and nonpaid
* the number of reviews of 5-star ratings by paid and nonpaid
* the percentage of 5-star ratings to the total by paid and nonpaid 
 

## Resources
* Data Source: Amazon Review datasets, US Shoes dataset
* Software: Google Colab Notebook, PostgreSQL 11.9, pgAdmin 4, AWS

## Results

The results of the analysis were the following:

Amazon Vine Shoe Reviews for Vine Members:

![Amazon_Paid_Reviews](https://user-images.githubusercontent.com/35401581/144687468-108b8f59-1b46-4e9a-992a-63ff6e03e573.png)

Amazon Vine Shoe Reviews for non-Vine members:

![Amazon_Unpaid_Reviews](https://user-images.githubusercontent.com/35401581/144687491-a85b82c4-e04c-432c-a9e1-e629a55d1898.png)

The above information answers the following questions:
* How many Vine reviews and non-Vine reviews were found?  
    * There were a total of 22 reveiws for Vine members and a total of 26,987 for non-Vine members.
* How many Vine reviews were 5-star ratings?  And how many non-Vine reviews were 5-stars?
    * There were 13 5-star ratings for Vine members and 14,475 5-star ratings for non-Vine members.
* What percentage of Vine reviews were 5-stars?  What percentage of non-Vine reviews were 5-stars?
    * 59% of the 5-star reviews were for Vine members and 54% of the 5-star reveiws were for non-Vine members.   

## Summary
There is only a very slight potential for a positivity bias for reveiws in the Vine program as the data showed 59% for Vine members and 54% for non-Vine members, only a 5% difference.  Perhaps more analysis is needed to fully determine if a true bias exists as the number of Vine member reviews was very small with only 22 total reviews.  Perhaps DAI could include all reviews, that is include all total reviews vs just helpful reviews.  And more statistical analysis could be used to include studies on the mode, median and mean.
