DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaign;

CREATE TABLE "contacts" (
    "contact_id" varchar (10)   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);
CREATE TABLE "category" (
    "category_id" varchar(20)   NOT NULL,
    "category" varchar(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(20)   NOT NULL,
    "subcategory" varchar(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);
CREATE TABLE "campaign" (
    "cf_id" VARCHAR (20) PRIMARY KEY,
    "contact_id" VARCHAR (20) NOT NULL,
    "company_name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" varchar(30) NOT NULL,
    "pledged" varchar(30) NOT NULL,
    "outcome" VARCHAR(20) NOT NULL,
    "backers_count" VARCHAR (20) NOT NULL,
    "country" VARCHAR(20) NOT NULL,
    "currency" VARCHAR(30) NOT NULL,
    "launched_date" VARCHAR (100) NOT NULL,
    "end_date" VARCHAR (100) NOT NULL,
    "category_id" varchar(20) REFERENCES "category" ("category_id") NOT NULL,
    "subcategory_id" varchar(20) REFERENCES "subcategory" ("subcategory_id") NOT NULL
);

SELECT * FROM category ;
SELECT * FROM subcategory ;
SELECT * FROM campaign ;
SELECT * FROM contacts ;





