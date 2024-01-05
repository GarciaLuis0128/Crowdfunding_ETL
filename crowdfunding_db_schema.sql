DROP TABLE category; 
DROP TABLE subcategory; 
DROP TABLE contacts;
DROP TABLE campaign;

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category_id" varchar(5)   NOT NULL,
    "categorys" varchar(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" SERIAL PRIMARY KEY,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" varchar(30) NOT NULL,
    "pledged" varchar(30) NOT NULL,
    "outcome" VARCHAR(20) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" CHAR(2) NOT NULL,
    "currency" CHAR(3) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" varchar(5) REFERENCES "category" ("category_id") NOT NULL,
    "subcategory_id" varchar(10) REFERENCES "subcategory" ("subcategory_id") NOT NULL
);

select * from category ;
select * from subcategory;
select * from contacts;
select * from campaign; 