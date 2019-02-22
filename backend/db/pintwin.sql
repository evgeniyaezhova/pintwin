DROP DATABASE IF EXISTS pintwin;
CREATE DATABASE pintwin;

\c pintwin;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL,
  password_digest VARCHAR NOT NULL,
  username VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  age VARCHAR NOT NULL
);


CREATE TABLE boards (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  name VARCHAR NOT NULL,
  description VARCHAR
);


CREATE TABLE pins (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  board_id INT NOT NULL REFERENCES boards(id) ON DELETE CASCADE,
  pic_url VARCHAR NOT NULL,
  link_url VARCHAR NOT NULL,
  title VARCHAR,
  body TEXT
);

INSERT INTO users(email, password_digest, username, name, age) VALUES ('johnsmith@gmail.com', 'password1', 'jshere', 'John Smith', 29), ('janered@aol.com', 'password2', 'janered', 'Jane Red', 22), ('maggiekale@yahoo.com', 'password3', 'kalenotyale', 'Maggie Kale', 32), ('alexflinne@gmail.com', 'password4', 'aflinne', 'Alex Flinne', 31);

INSERT INTO boards(user_id, name, description) VALUES (1, 'food', 'yummy'), (2, 'fashion', 'outfit inspo'), (3, 'furbabies', 'cuties'), (3, 'hair', 'hair care and styling'), (4, 'fitness', 'exercises and more'), (4, 'books', 'reading list');

INSERT INTO pins(user_id, board_id, pic_url, link_url, title, body) VALUES (1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'), (1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'), (2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'), (3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'), (3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'), (4, 5, 'http://www.trimmedandtoned.com/wp-content/uploads/2015/03/armor-abs-workout.jpg', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'), (4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'), (1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'), (2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'), (3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'), (3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'), (4, 5, 'http://www.trimmedandtoned.com/wp-content/uploads/2015/03/armor-abs-workout.jpg', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'), (4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book');
