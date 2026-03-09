CREATE TABLE tax_slabs (
    slab_id INT,
    slab_start INT,
    slab_end INT,
    tax_rate DECIMAL(5,2)
);

CREATE TABLE income_details (
    person_id INT,
    income INT
);

INSERT INTO tax_slabs VALUES
(1,0,250000,0),
(2,250000,500000,5),
(3,500000,1000000,20),
(4,1000000,NULL,30);

INSERT INTO income_details VALUES
(1,400000),
(2,900000),
(3,1500000),
(4,250000);