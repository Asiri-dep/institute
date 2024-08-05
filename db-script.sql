
CREATE TABLE enrollment
(
    student_id      VARCHAR(10) NOT NULL REFERENCES student (id),
    batch_number    VARCHAR(10) NOT NULL REFERENCES batch (number),
    registered_date DATE        NOT NULL,
    CONSTRAINT PRIMARY KEY (student_id, batch_number, registered_date)
CREATE TABLE employee(
  employee_id VARCHAR(5) PRIMARY KEY,
  name VARCHAR(100) NOT NULL ,
  address VARCHAR(200) NOT NULL
);

CREATE TABLE contact(
  contact VARCHAR(12) PRIMARY KEY,
  employee_id VARCHAR(5) NOT NULL ,
    CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

INSERT INTO employee (employee_id,name,address) VALUES ('E001', 'Kasun', 'Galle'),
                                                       ('E002', 'Namal', 'Kandy'),
                                                       ('E003', 'Sunimal', 'Matara'),
                                                       ('E004', 'Lawindu', 'Galle'),
                                                       ('E005', 'Supun', 'Colombo'),
                                                       ('E006', 'Ravindu', 'Pandura');

INSERT INTO contact (contact, employee_id) VALUES ('011-1234658', 'E001'),
                                                  ('011-1234777', 'E002'),
                                                  ('071-1234777', 'E002'),
                                                  ('076-1234777', 'E003');

CREATE TABLE enrollment(
    student_id VARCHAR(10) NOT NULL REFERENCES student(id),
    batch_number VARCHAR(10) NOT NULL REFERENCES batch(number),
    registered_date DATE NOT NULL