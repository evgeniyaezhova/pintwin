DROP DATABASE IF EXISTS pintwin;
CREATE DATABASE pintwin;

\c pintwin;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL UNIQUE,
  password_digest VARCHAR NOT NULL,
  username VARCHAR,
  name VARCHAR,
  age INT
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

CREATE TABLE frontPins (
  id SERIAL PRIMARY KEY,
  pic_url VARCHAR NOT NULL,
  title VARCHAR
);

INSERT INTO users(email, password_digest, username, name, age) VALUES ('johnsmith@gmail.com', '$2a$10$eFzqcO18n0WsWGiTzmMavO2BuHUOWRcHuPOsFC.Gr7tZX.kYL4LK6', 'John', 'John Smith', 29), ('janered@aol.com', '$2a$10$Aka8EtL1ekm74H6IeNfjwe7yd8D/KjlxLO0JPBZNzTBQ3TQxS1q9a', 'Red', 'Jane Red', 22), ('maggiekale@yahoo.com', '$2a$10$s2bF.6oKS0AQqQ0dDrXqLOMmxpmgMFb4EYIJC0HwHqQyN23kyANa6', 'Maggie', 'Maggie Kale', 32), ('alexflinne@gmail.com', '$2a$10$iUmHqkF8gYVKjPqX7kEtge1jkOK16ss7HdvBeO2ZiLcUolHtnp70q', 'Aussie', 'Alex Flinne', 31);

INSERT INTO boards(user_id, name, description) VALUES (1, 'food', 'yummy'), (2, 'fashion', 'outfit inspo'), (3, 'furbabies', 'cuties'), (3, 'hair', 'hair care and styling'), (4, 'fitness', 'exercises and more'), (4, 'books', 'reading list');


INSERT INTO pins(user_id, board_id, pic_url, link_url, title, body) VALUES
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort'),
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort'),
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort'),
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort'),
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort'),
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort'),
(1, 1, 'https://i0.wp.com/karluci.com/wp-content/uploads/2018/11/Plum-Thyme-Prosecco-Smash.jpg?w=736&ssl=1', 'https://www.mydiaryofus.com/blog/2015/5/14/plum-and-thyme-prosecco-smash', 'Plum and Thyme Prosecco Smash', 'Perfect for your Sunday afternoon'),
(2, 2, 'https://cdn.cliqueinc.com/cache/posts/188378/easy-outfit-ideas-188378-1508523934920-image.700x0c.jpg', 'https://www.whowhatwear.com/easy-outfit-ideas', 'Easy Outfit Ideas', '...for When You Hate Everything You Own'),
(3, 3, 'https://www.petmd.com/sites/default/files/petmd-kitten-development.jpg', 'https://www.petmd.com/cat/care/kitten-development-understanding-kittens-major-growth-milestones', 'Kitten Development', 'Understanding a Kitten Major Growth Milestones'),
(4, 5, 'https://cdn.shopify.com/s/files/1/0162/2116/files/mens_abs_workout.jpg?v=1504539829', 'http://www.trimmedandtoned.com/20-stomach-fat-burning-ab-workouts-from-neilarey-com/', 'Abs on fire', '20 Stomach Fat Burning Ab Workouts'),
(2, 2, 'https://cdn.shopify.com/s/files/1/1024/6037/products/f142d923113d0b9b14e86200ad30fc5e_grande.jpg?v=1545659278', 'https://www.lupsona.com/collections/new-arrivals/products/4-colors-loose-turtleneck-sweater-dress?variant=333979451410&utm_medium=Social&utm_source=Pinterest', 'Sweater Dress Outfit', 'Keep it stylish every season'),
(1, 1, 'https://www.skinnytaste.com/wp-content/uploads/2013/01/Hot-Buffalo-Cauliflower-Fritters-550x367.jpg', 'https://itdoesnttastelikechicken.com/crispy-buffalo-cauliflower/', 'CRISPY BUFFALO CAULIFLOWER', 'Cauliflower florets coated in a crispy spiced crust, served with hot buffalo sauce and a side of Vegan Blue Cheese Dip'),
(3, 4, 'https://i2.wp.com/thehairstyledaily.com/wp-content/uploads/2018/05/Popular-Wedding-Hairstyling-Ideas-For-Long-Hair-3.jpg?ssl=1', 'https://thehairstyledaily.com/80-wedding-hairstyles-for-brides-with-long-hair/', 'Wedding Hairstyles for Long Hair', 'Creating a romantic bridal image isn’t too difficult. All you need is a bit of inspiration.'),
(1, 1, 'https://www.mygorgeousrecipes.com/wp-content/uploads/2016/12/Grilled-chicken-avocado-and-spinach-wholemeal-wrap-2.jpg','https://www.mygorgeousrecipes.com/grilled-chicken-avocado-wrap/#_a5y_p=6051165','Grilled Chicken Avocado Wrap', 'Low Carb High Protein'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2159/7885/products/1_acac1562-1012-47d9-acc5-ec59d8606108_grande.jpg?v=1536033363', 'https://www.ncocon.com/collections/women/products/fluffy-long-faux-fur-coat-women-thicken-winter-fake-fur', 'Fun Winter Outfit', 'Fluffy Pink Faux Fur Coat'),
(4, 6, 'https://images.gr-assets.com/books/1327883226l/864037.jpg', 'https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale', 'The Thirteenth Tale', 'My Favorite Book'),
(2, 2, 'https://cdn1.hellomolly.com/media/catalog/product/cache/4/small_image/667x1001/c96a280f94e22e3ee3823dd0a1a87606/i/m/img_6658.jpg', 'https://www.hellomolly.com/us/catalog/product/view/id/95203/s/moral-of-the-story-playsuit-orange/category/64/', 'Cute Date Outfit', 'Floral Orange Romper'),
(1, 1, 'https://www.eatwell101.com/wp-content/uploads/2018/02/baby-spinach-salad.jpg', 'https://www.eatwell101.com/spinach-salad-recipe', 'Apple Feta Spinach Salad', 'Crunchy, sweet and easy to make, this healthy spinach salad is full of fresh flavors.'),
(2, 2, 'https://cdn.shopify.com/s/files/1/2197/0391/products/34415856_2030890427174719_7729740229879267328_n_480x480.jpg?v=1529403600', 'https://www.buddhaphunk.com/collections/shoes/products/cross-toe-cork-sandals', 'Cross Toe Cork Sandals', 'Bohemian Comfort');

INSERT INTO frontPins(title, pic_url) VALUES
('bonfire', 'https://i.pinimg.com/564x/c1/e8/85/c1e885debcf088ab16fbbde2000bde23.jpg'),
('blue yellow palms ocean', 'https://i.pinimg.com/564x/55/39/ab/5539abc3d36bfcbe8ca21c1bc3b2c111.jpg'),
('cherry blossoms', 'https://i.pinimg.com/564x/7c/ea/e4/7ceae4361653607317fd4831f69ae4c5.jpg'),
('snow magic light', 'https://i.pinimg.com/564x/31/9e/d0/319ed05ab7f7d470950074fccbf99528.jpg?b=t'),
('macaroons and tea', 'https://i.pinimg.com/564x/d2/c3/f7/d2c3f7c32535276172fff4493b405265.jpg'),
('pink ice cubes','https://i.pinimg.com/564x/58/02/88/580288351b27260af2dd1f88d9867e28.jpg'),
('pink northern lights', 'https://i.pinimg.com/564x/7c/20/d2/7c20d2ba6bf7c0589ce9ed1ae8ad06f4.jpg'),
('gb flags', 'https://i.pinimg.com/564x/56/55/eb/5655ebdb29bce81e7ea18e22a1e11a74.jpg'),
('closed peonies', 'https://i.pinimg.com/564x/8f/7f/20/8f7f203e8553484f1f379882b936af8c.jpg'),
('city overview', 'https://i.pinimg.com/564x/52/27/b4/5227b4daca9613280becfc0f4c0dce6d.jpg?b=t'),
('jellyfish', 'https://i.pinimg.com/564x/95/9b/90/959b90ac2fe96c65833ecbb90e4860d0.jpg'),
('dandelions mountains', 'https://i.pinimg.com/564x/14/8f/37/148f37eb46381bda5c316ad81ca8a3c5.jpg'),
('under the sea', 'https://i.pinimg.com/564x/0f/52/82/0f528280598e11b571e9bd05a9bca7c8.jpg'),
('baby turtle', 'https://i.pinimg.com/564x/a8/69/6b/a8696b076b3e0cf6ce623ab57549ff5a.jpg');
