DROP TABLE IF EXISTS crowdfunding CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;

-- Create category table
CREATE TABLE category (
    category_id VARCHAR(255) NOT NULL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

Select * from category;

-- Create contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

Select * from contacts;

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) NOT NULL PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL
);

Select * from subcategory;

-- Create campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description VARCHAR(255),
    goal numeric,
    pledged numeric,
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(255),
    launched_at DATE,
    deadline DATE,
    category_id VARCHAR(255),
    subcategory_id VARCHAR(255),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

Select * from campaign;
