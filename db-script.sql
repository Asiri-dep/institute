CREATE TABLE enrollment(
    student_id VARCHAR(10) NOT NULL REFERENCES student(id),
    batch_number VARCHAR(10) NOT NULL REFERENCES batch(number),
    registered_date DATE NOT NULL
);