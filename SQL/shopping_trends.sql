--Selecting all data from shopping_trends table 
SELECT * FROM shopping_trends


--Selecting all items payed with credit card 
SELECT Item_Purchased FROM shopping_trends st WHERE Payment_Method == "Credit Card"


--Selecting all clothes buyed in Winter ordered by purchase's price in ascending way 
SELECT Item_Purchased ,Purchase_Amount_USD FROM shopping_trends WHERE Category == "Clothing" AND Season == "Winter"
ORDER BY "Purchase_Amount (USD)" ASC
--

--Select all items purchased made by customers between 30 and 50 years old with their respective price and category
SELECT Item_Purchased,Category,Purchase_Amount_USD FROM shopping_trends 
WHERE Age BETWEEN 30 AND 50
GROUP BY Category 
HAVING Discount_Applied == "Yes"

--Selecting count of "young" customers and the total of money amount they payed grouped by category and ordered by amount
SELECT COUNT(Age) as young_customers,SUM(Purchase_Amount_USD) as total_purchase from shopping_trends  WHERE Age < 35 AND Age >= 20
GROUP BY Category 
ORDER BY SUM(Purchase_Amount_USD)


--Categoring item stocks based on their quantity available(fictional) 
SELECT Item_Purchased,COUNT(Item_Purchased) as quantity_purchased,  
CASE
  WHEN COUNT(Item_Purchased) >= 160 THEN "Out of stock"
  WHEN COUNT(Item_Purchased) < 140 THEN "Stock available"
  ELSE  "OK"
  END AS Description
  FROM shopping_trends 
  GROUP BY Item_Purchased
  
  --Select Count of items purchased with credit card for each shipping type.
  SELECT Shipping_Type, COUNT(Item_Purchased) AS Total FROM shopping_trends 
  GROUP BY Shipping_Type 
  HAVING Payment_Method = 'Credit Card'
  
  
  SELECT COUNT(Item_Purchased) AS Total_Items, Item_Purchased FROM shopping_trends
  GROUP BY Item_Purchased
  HAVING Total_Items > 100
  
  
  
  --Selects the count of items purchased for each gender
  SELECT COUNT(Item_Purchased) AS Total_Purchased FROM shopping_trends 
  GROUP BY Gender 
  ORDER BY Purchase_Amount_USD ASC
  
  --Select average money spended for each clothes product
SELECT AVERAGE(Purchase_Amount_USD) AS Average_amount 
FROM shopping_trends 
GROUP BY Item_Purchased
WHERE Category IN (
  SELECT Category FROM
  shopping_trends
  WHERE Category == "Clothes"
  )


  

  
  
  
  
  
  
  
  
  
  
  
 
  
  
  

  
  
  
  
  
 







