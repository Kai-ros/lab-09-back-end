DROP TABLE IF EXISTS weather;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS yelps;
DROP TABLE IF EXISTS locations;

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  search_query VARCHAR(255),
  formatted_query VARCHAR(255),
  latitude NUMERIC(10, 7),
  longitude NUMERIC(10,7)
);

CREATE TABLE weather ( 
  id SERIAL PRIMARY KEY, 
  forecast VARCHAR(255), 
  time VARCHAR(255), 
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE events ( 
  id SERIAL PRIMARY KEY, 
  link VARCHAR(255), 
  name VARCHAR(255), 
  event_date VARCHAR(255),
  summary VARCHAR(225),
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE movies ( 
  id SERIAL PRIMARY KEY, 
  title VARCHAR(225),
  overview VARCHAR(255), 
  average_votes VARCHAR(225), 
  total_votes VARCHAR(225),
  image_url VARCHAR(225),
  popularity VARCHAR(225),
  released_on VARCHAR(225),
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE yelps (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(255), 
  image_url VARCHAR(255), 
  price VARCHAR(255),
  rating VARCHAR(225),
  url VARCHAR(255),
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
)