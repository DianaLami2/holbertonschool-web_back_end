--  virtual column to store the first letter of the name
ALTER TABLE names
ADD COLUMN first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) VIRTUAL;


CREATE INDEX idx_name_first ON names (first_letter);
