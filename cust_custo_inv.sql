          
CREATE CACHED TABLE "CUSTOMER"(
    "NAME" TEXT,
    "CUSTOMER_ID" INT NOT NULL,
    "AMOUNT_SPENT" INT
);            
ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CONSTRAINT_5" PRIMARY KEY("CUSTOMER_ID");             
-- 4 +/- SELECT COUNT(*) FROM CUSTOMER; 
INSERT INTO "CUSTOMER" VALUES
('Maxim Scott', 1, 2500),
('Jane Doe', 2, 10000),
('Adam Apple', 3, 5000),
('John Doe', 4, 7500);       
CREATE CACHED TABLE "CUSTOMER_OVERVIEW"(
    "NAME" TEXT,
    "CUSTOMER_ID" INT NOT NULL,
    "AMOUNT_SPENT" INT,
    "INVOICE_NO" INT,
    "NUMBER_OF_ITEMS_SOLD" INT
);             
-- 4 +/- SELECT COUNT(*) FROM CUSTOMER_OVERVIEW;        
INSERT INTO "CUSTOMER_OVERVIEW" VALUES
('Maxim Scott', 1, 2500, 1, 5),
('Maxim Scott', 1, 2500, 5, 8),
('Maxim Scott', 1, 2500, 6, 9),
('John Jones', 2, 3500, NULL, NULL);           
CREATE CACHED TABLE "INVOICES"(
    "CUSTOMER_ID" INT NOT NULL,
    "INVOICE_NO" INT NOT NULL,
    "NUMBER_OF_ITEMS_SOLD" INT
);      
ALTER TABLE "INVOICES" ADD CONSTRAINT "CONSTRAINT_54" PRIMARY KEY("INVOICE_NO");             
-- 4 +/- SELECT COUNT(*) FROM INVOICES; 
INSERT INTO "INVOICES" VALUES
(1, 1, 5),
(2, 3, 7),
(1, 5, 8),
(1, 6, 9);             
ALTER TABLE "INVOICES" ADD CONSTRAINT "CONSTRAINT_549" FOREIGN KEY("CUSTOMER_ID") REFERENCES "CUSTOMER"("CUSTOMER_ID") NOCHECK;     
