DROP TABLE calendars;
DROP TABLE notes;
DROP TABLE days;

CREATE TABLE days (
  id SERIAL4 PRIMARY KEY,
  day VARCHAR(255)
);

CREATE TABLE notes (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  description VARCHAR(255),
  day_id INT4
);

CREATE TABLE calendars (
  id SERIAL4 PRIMARY KEY,
  note_id INT8 REFERENCES notes(id),
  day_id INT8 REFERENCES days(id)
);
