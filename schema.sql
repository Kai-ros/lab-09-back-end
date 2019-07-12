DROP TABLE IF EXISTS weather;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  search_input VARCHAR(225),
  search_query VARCHAR(255),
  formatted_query VARCHAR(255),
  latitude NUMERIC(10, 7),
  longitude NUMERIC(10,7)
);

CREATE TABLE weather ( 
  id SERIAL PRIMARY KEY, 
  search_input VARCHAR(225),
  forecast VARCHAR(255), 
  time VARCHAR(255), 
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE events ( 
  id SERIAL PRIMARY KEY, 
  search_input VARCHAR(225),
  link VARCHAR(255), 
  name VARCHAR(255), 
  event_date VARCHAR(255),
  summary VARCHAR(225),
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);
