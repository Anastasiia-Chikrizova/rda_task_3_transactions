-- Use our database
USE ShopDB; 

-- Some data should be created outside the transaction (here)

-- Start the transaction 
START TRANSACTION;
INSERT INTO Orders (CustomerID, Date)
VALUES('1', '2023-01-01');
INSERT INTO OrderItems (ProductID, Count, OrderId)
VALUES('1', 1, '1');
UPDATE Products SET WarehouseAmount = WarehouseAmount - 5 WHERE ID = '1';


COMMIT;