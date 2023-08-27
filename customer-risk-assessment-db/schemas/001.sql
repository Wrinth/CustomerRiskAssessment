CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_identity VARCHAR(20) NOT NULL,
    customer_contact VARCHAR(50) NOT NULL
);

CREATE TABLE assessment_type (
    assessment_type_id INT PRIMARY KEY,
    assessment_type_name VARCHAR(50) NOT NULL,
    assessment_type_description VARCHAR(200) NOT NULL
);

CREATE TABLE assessment_indicator (
    assessment_indicator_id INT PRIMARY KEY,
    assessment_indicator_name VARCHAR(50) NOT NULL,
    assessment_indicator_method VARCHAR(50) NOT NULL,
    assessment_indicator_weight DECIMAL(5,2) NOT NULL,
    assessment_indicator_score DECIMAL(5,2) NOT NULL,
    assessment_type_id INT NOT NULL,
    FOREIGN KEY (assessment_type_id) REFERENCES assessment_type (assessment_type_id)
);

CREATE TABLE assessment_data (
    assessment_data_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    assessment_type_id INT NOT NULL,
    assessment_data_value VARCHAR(200) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (assessment_type_id) REFERENCES assessment_type (assessment_type_id)
);

CREATE TABLE assessment_result (
    assessment_result_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    assessment_type_id INT NOT NULL,
    assessment_result_value VARCHAR(200) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (assessment_type_id) REFERENCES assessment_type (assessment_type_id)
);
