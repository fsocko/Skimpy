-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2015 at 03:48 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skimpy`
--

-- --------------------------------------------------------

--
-- Table structure for table `asda_scraped`
--

CREATE TABLE IF NOT EXISTS `asda_scraped` (
`ID` int(11) unsigned NOT NULL,
  `ShopID` varchar(200) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Unit` varchar(5) DEFAULT NULL,
  `Mass` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `PPUPrice` double DEFAULT NULL,
  `PPUUnit` varchar(5) DEFAULT NULL,
  `FoodCat` varchar(100) DEFAULT NULL,
  `SuperMarket` char(2) DEFAULT NULL,
  `Calories` double DEFAULT NULL,
  `Protein` double DEFAULT NULL,
  `Carbs` double DEFAULT NULL,
  `Sugars` double DEFAULT NULL,
  `Fats` double DEFAULT NULL,
  `Saturates` double DEFAULT NULL,
  `Salt` double DEFAULT NULL,
  `Fibre` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `portion_sizes`
--

CREATE TABLE IF NOT EXISTS `portion_sizes` (
  `FoodCat` varchar(50) NOT NULL,
  `Item` varchar(600) NOT NULL,
  `Mass` double DEFAULT NULL,
  `Unit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portion_sizes`
--

INSERT INTO `portion_sizes` (`FoodCat`, `Item`, `Mass`, `Unit`) VALUES
('Bakery Products', 'Bagels, tea biscuits, scones, rolls, buns, croissants, tortillas, soft bread sticks, soft pretzels, corn bread', 55, 'g'),
('Bakery Products', 'Bagels, tea biscuits, scones, rolls, buns, croissants, tortillas, soft bread sticks, soft pretzels, corn bread', 55, 'g'),
('Bakery Products', 'Pita', 55, 'g'),
('Bakery Products', 'Brownies', 40, 'g'),
('Bakery Products', 'Cake (heavy weight), cheese cake, pineapple upside-down, cake', 125, 'g'),
('Bakery Products', 'Cake (medium weight)light weight cake icing, Boston cream pie, cupcakes, eclairs, cream puffs', 80, 'g'),
('Bakery Products', 'Cake (light weight), angel food, chiffon, sponge cake', 55, 'g'),
('Bakery Products', 'Coffee cake, doughnut, danish, sweet roll, sweet bread, muffins', 55, 'g'),
('Bakery Products', 'Cookies, wafers', 30, 'g'),
('Bakery Products', 'Crackers, hard bread sticks, melba toast', 20, 'g'),
('Bakery Products', 'Dry breads, matzo, rusks', 30, 'g'),
('Bakery Products', 'Flaky pastry', 55, 'g'),
('Bakery Products', 'Toaster pastries', 55, 'g'),
('Bakery Products', 'Ice cream cones', 5, 'g'),
('Bakery Products', 'Croutons', 7, 'g'),
('Bakery Products', 'French toast, pancakes, waffles', 75, 'g'),
('Bakery Products', 'Grain-based bars with filling', 40, 'g'),
('Bakery Products', 'Grain-based bars, without filling', 30, 'g'),
('Bakery Products', 'Rice cakes, corn cakes', 15, 'g'),
('Bakery Products', 'Pies, tarts, cobblers, turnovers, pastry', 110, 'g'),
('Bakery ProductsBakery Products', 'Pizza crust', 55, 'g'),
('Bakery Products', 'Taco shell', 30, 'g'),
('Bakery Products', 'drink, beverages, iced tea, wine coolers', 355, 'ml'),
('Bakery Products', 'Sports drinks and water', 500, 'ml'),
('Bakery Products', 'Coffee', 175, 'ml'),
('Bakery Products', 'regular and instant tea', 175, 'ml'),
('Bakery Products', 'flavoured and sweetened tea', 250, 'mL'),
('Bakery Products', 'Cocoa, chocolate milk', 175, 'ml'),
('Cereals and Other Grain Products', 'Dry Hot breakfast cereals, Dry oatmeal, Dry cream of wheat', 40, 'g'),
('Cereals and Other Grain Products', 'Prepared Hot breakfast cereals, prepared oatmeal, Prepared cream of wheat', 250, 'ml'),
('Cereals and Other Grain Products', 'breakfast cereals, puffed', 15, 'g'),
('Cereals and Other Grain Products', 'Ready-to-eat breakfast cereals, puffed and coated, flaked, extruded', 30, 'g'),
('Cereals and Other Grain Products', 'breakfast cereals, fruit and nut, granola', 55, 'g'),
('Cereals and Other Grain Products', 'Bran and wheat germ', 15, 'g'),
('Cereals and Other Grain Products', 'Milled flax seeds', 15, 'g'),
('Cereals and Other Grain Products', 'Milled hemp seeds', 15, 'g'),
('Cereals and Other Grain Products', 'Flour, cornmeal', 30, 'g'),
('Cereals and Other Grain Products', 'Grains, such as rice or barley', 45, 'g'),
('Cereals and Other Grain Products', 'Pastas without sauce', 85, 'g'),
('Cereals and Other Grain Products', 'Pastas, dry and ready-to-eat, such as fried canned chow mein noodles', 25, 'g'),
('Cereals and Other Grain Products', 'Starch, such as cornstarch, potato starch, tapioca starch or wheat starch', 10, 'g'),
('Cereals and Other Grain Products', 'Stuffing', 100, 'g'),
('Cereals and Other Grain Products', 'Cheese, cream cheese, cheese spread', 30, 'g'),
('Cereals and Other Grain Products', 'Cottage cheese', 125, 'g'),
('Cereals and Other Grain Products', 'Cheese used as an ingredient, such as dry cottage cheese or ricotta cheese', 55, 'g'),
('Cereals and Other Grain Products', 'Hard cheese, grated, such as parmesan or romano', 15, 'g'),
('Cereals and Other Grain Products', 'Quark, fresh cheese and fresh dairy desserts', 100, 'g'),
('Cereals and Other Grain Products', 'Cream and cream substitute', 15, 'ml'),
('Cereals and Other Grain Products', 'Cream and cream substitute, powder', 2, 'g'),
('Cereals and Other Grain Products', 'Cream and cream substitute, aerosol or whipped', 15, 'g'),
('Cereals and Other Grain Products', 'Eggnog', 125, 'ml'),
('Cereals and Other Grain Products', 'Milk, evaporated or condensed', 15, 'ml'),
('Cereals and Other Grain Products', 'Plant-based beverages, milk, buttermilk and milk-based drinks, such as chocolate milk', 250, 'ml'),
('Cereals and Other Grain Products', 'Smoothie (if whey/dairy is a main ingredient)', 250, 'ml'),
('Cereals and Other Grain Products', 'Drinkable yogurt', 250, 'ml'),
('Cereals and Other Grain Products', 'Shakes and shake substitutes such as dairy shake mix', 250, 'ml'),
('Cereals and Other Grain Products', 'Sour cream', 30, 'ml'),
('Cereals and Other Grain Products', 'Yogurt', 175, 'g'),
('Desserts', 'Ice cream, ice milk, frozen yogurt, sherbet', 125, 'ml'),
('Desserts', 'Non-dairy desserts sold in tub', 125, 'ml'),
('Desserts', 'Dairy desserts, frozen, such as cakes, bars, sandwiches or cones', 125, 'ml'),
('Desserts', 'Non-dairy desserts, frozen, such as flavoured and sweetened ice or pops, frozen fruit juices in bars or cups', 75, 'ml'),
('Desserts', 'Sundaes', 250, 'ml'),
('Desserts', 'Custard, gelatin and pudding', 125, 'ml'),
('Dessert Toppings and Fillings', 'Dessert toppings, maple butter and marshmallow cream', 30, 'g'),
('Dessert Toppings and Fillings', 'Cake frostings and icings', 35, 'g'),
('Dessert Toppings and Fillings', 'Streusal topping', 35, 'g'),
('Dessert Toppings and Fillings', 'Pie fillings', 75, 'ml'),
('Egg and Egg Substitutes', 'Egg mixtures, such as egg foo young, scrambled eggs, omelets', 110, 'g'),
('Egg and Egg Substitutes', 'Eggs,including eggs in the shell, liquid eggs and liquid egg whites', 50, 'g'),
('Egg and Egg Substitutes', 'Egg substitutes', 50, 'g'),
('Fats and Oils', 'Butter, margarine, shortening, lard', 10, 'g'),
('Fats and Oils', 'Butter-flavoured spread (mostly vegetable oil)', 10, 'g'),
('Fats and Oils', 'Vegetable oil', 10, 'ml'),
('Fats and Oils', 'Butter replacement, powder', 2, 'g'),
('Fats and Oils', 'Dressings for salad', 30, 'ml'),
('Fats and Oils', 'Mayonnaise, sandwich spread and mayonnaise-type dressing', 15, 'ml'),
('Fats and Oils', 'Oil, spray type', 0.5, 'g'),
('Marine and Fresh Water Animals', 'Canned anchovies, anchovy paste and caviar ', 15, 'g'),
('Marine and Fresh Water Animals', 'Marine and fresh water animals with sauce, such as fish with cream sauce or shrimp with lobster sauce', 125, 'g'),
('Marine and Fresh Water Animals', 'Raw fish with sauce', 125, 'g'),
('Marine and Fresh Water Animals', 'Marine and fresh water animals, canned', 55, 'g'),
('Marine and Fresh Water Animals', 'Marine and fresh water animals, smoked or pickled, or spreads ', 55, 'g'),
('Fruits and Fruit Juices', 'Fruit, fresh, canned or frozen, coated or uncoated', 140, 'g'),
('Fruits and Fruit Juices', 'Candied or pickled fruit ', 30, 'g'),
('Fruits and Fruit Juices', 'Dried fruit, such as raisins, dates or figs', 40, 'g'),
('Fruits and Fruit Juices', 'Fruit for garnish or flavour, such as maraschino cherries ', 4, 'g'),
('Fruits and Fruit Juices', 'Fruit relishes', 60, 'ml'),
('Fruits and Fruit Juices', 'Avocado, used as an ingredient', 30, 'g'),
('Fruits and Fruit Juices', 'Cranberries, lemons and limes, used as ingredients', 55, 'g'),
('Fruits and Fruit Juices', 'Watermelon, cantaloupe, honeydew and other melons', 150, 'g'),
('Fruits and Fruit Juices', 'Juices, nectars and fruit drinks represented for use as substitutes for fruit juices', 250, 'ml'),
('Fruits and Fruit Juices', 'Juices, used as ingredients, such as lemon juice or lime juice', 5, 'ml'),
('Legumes', 'Bean curd (tofu) or tempeh ', 85, 'g'),
('Legumes', 'Beans, peas and lentils, such as white beans, kidney beans, romano beans, soybeans or chick peas', 100, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Pork rinds and bacon', 54, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Beef, pork and poultry breakfast strips', 30, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Dried meat and poultry, such as jerky, dried beef or parma ham, as well as sausage products with a water activity of 0.90 or less, such as salami, dried thuringer or cervelat', 30, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Sausage products, such as linked sausage, Vienna sausage, wieners, breakfast sausage, frankfurters, pork sausage, bratwurst, kielbasa, Polish sausage, summer sausage, smoked sausage, smoked country sausage, pepperoni, knackwurst, thuringer and cervelat', 75, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Sausage made with combination of seafood and pork (mostly seafood)', 75, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Cuts of meat and poultry without sauce, and ready-to-cook cuts, with or without breading or batter, including marinated, tenderized and injected cuts', 125, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Shish kebab (only marinated meat, no vegetables)', 125, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Whole chicken (no stuffing)', 125, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Turkey roast (no stuffing)', 125, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Patties (including veggie burger patties), cutlettes, chopettes, steakettes, meatballs, sausage meat and ground meat, with or without breading or batter', 100, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Falafels', 100, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Corn dog on a stick (breaded)', 100, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Cured meat products such as cured ham, dry cured ham, back bacon, cured pork back, dry cured cappicolo, corned beef, pastrami, country ham, cured pork shoulder picnic, cured poultry ham products, smoked meat or pickled meat', 85, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Canned meat and poultry ', 55, 'g'),
('Meat, Poultry, Their Products and Substitutes ', 'Meat and poultry with sauce, such as meat in barbecue sauce or turkey with gravy, but excluding combination dishes', 140, 'g'),
('Miscellaneous category', 'Baking powder, baking soda, pectinand yeast', 0.6, 'g'),
('Miscellaneous category', 'Baking decorations, such as coloured sugars or sprinkles for cookies', 4, 'g'),
('Miscellaneous category', 'Bread crumbs and batter mixes', 30, 'g'),
('Miscellaneous category', 'Cooking wine', 30, 'ml'),
('Miscellaneous category', 'Cocoa powder', 5, 'g'),
('Miscellaneous category', 'Non-alcoholic drink mixers, such as pina colada or daiquiri', 250, 'ml'),
('Miscellaneous category', 'Chewing gum', 3, 'g'),
('Miscellaneous category', 'Salad and potato toppers, such as salad crunchies, salad crispins or substitutes for bacon bits', 7, 'g'),
('Miscellaneous category', 'Salt and salt substitute, as well as seasoned salt such as garlic salt', 1, 'g'),
('Miscellaneous category', 'Spices and herbs (no salt)', 0.5, 'g'),
('Combination Dishes', 'Measurable with a cup, such as casserole, hash, macaroni and cheese with or without meat, pot pie, spaghetti with sauce, stir fry, meat or poultry casserole, baked or refried beans, wieners and beans, meat chili, chili with beans, creamed chipped beef, beef or poultry ravioli in sauce, beef stroganoff, poultry à la king, Brunswick stew, goulash, stew, ragout or poutine,rice and vegetables, butter chicken with rice', 250, 'ml'),
('Combination Dishes', 'Meat-filled cannelloni, no sauce', 1.69, 'NULL'),
('Combination Dishes', 'Stuffed turkey roast', 140, 'g'),
('Combination Dishes', 'Stuffed chicken', 140, 'g'),
('Combination Dishes', 'Dish measurable with a cup but net quantity and serving size declared in grams', 140, 'g'),
('Combination Dishes', 'Hors d''oeuvres', 50, 'g'),
('Nuts and Seeds', 'Nuts and seeds, not for use as snacks: whole, chopped, sliced, slivered or ground', 30, 'g'),
('Nuts and Seeds', 'Butters, pastes and creams, other than peanut butter', 30, 'g'),
('Nuts and Seeds', 'Peanut butter', 15, 'g'),
('Nuts and Seeds', 'Flours, such as coconut flour', 15, 'g'),
('Potatoes, Sweet Potatoes and Yams', 'French fries, hash browns, skins and pancakes', 85, 'g'),
('Potatoes, Sweet Potatoes and Yams', 'Fresh Potato, Frozen Potato', 110, 'g'),
('Potatoes, Sweet Potatoes and Yams', 'Potato vacuum packed', 125, 'g'),
('Potatoes, Sweet Potatoes and Yams', 'Potato Canned', 160, 'g'),
('Salads', 'Salads, egg, fish, shellfish, bean, fruit, vegetable, meat, ham or poultry salad, except those listed as a separate item', 100, 'g'),
('Salads', 'Gelatin salad', 120, 'g'),
('Salads', 'Pasta or potato salad', 140, 'g'),
('Sauces, Dips, Gravies and Condiments', 'Sauces for dipping, such as barbecue, hollandaise, tartar, mustard or sweet and sour sauce', 30, 'ml'),
('Sauces, Dips, Gravies and Condiments', 'Dips, such as legume or dairy-based', 30, 'g'),
('Sauces, Dips, Gravies and Condiments', 'main entrée sauce, spaghetti sauce', 125, 'ml'),
('Sauces, Dips, Gravies and Condiments', 'Minor main entrée sauce, pizza sauce, pesto sauce, or other sauces used as toppings such as white sauce, cheese sauce, salsa, cocktail sauce or gravy', 60, 'ml'),
('Sauces, Dips, Gravies and Condiments', 'Major condiments, such as ketchup, steak sauce, soy sauce, vinegar, teriyaki sauce or marinades', 15, 'ml'),
('Sauces, Dips, Gravies and Condiments', 'Minor condiments, such as horseradish, hot sauce, mustard, or Worcestershire sauce', 5, 'ml'),
('Sauces, Dips, Gravies and Condiments', 'Liquid smoke', 1.69, 'NULL'),
('Snacks', 'Chips, pretzels, popcorn, extruded snacks, grain-based snack mixes and fruit-based snacks, such as fruit chips', 50, 'g'),
('Snacks', 'Pita chips', 50, 'g'),
('Snacks', 'Nuts or seeds for use as snacks, shelled', 50, 'g'),
('Snacks', 'Meat or poultry snack food sticks', 20, 'g'),
('Soups', 'Soup', 250, 'ml'),
('Sugars and Sweets', 'Candies, chocolate bars, other chocolate product', 40, 'g'),
('Sugars and Sweets', 'Hard candies', 15, 'g'),
('Sugars and Sweets', 'Baking candies, chocolate chips', 15, 'g'),
('Sugars and Sweets', 'Breath mints', 2, 'g'),
('Sugars and Sweets', 'mini hard candies', 5, 'g'),
('Sugars and Sweets', 'Confectioner''s sugar, icing sugar', 30, 'g'),
('Sugars and Sweets', 'Bread spreads, honey, molasses', 20, 'g'),
('Sugars and Sweets', 'Jams, jellies, marmalades, fruit butters, spreads', 15, 'ml'),
('Sugars and Sweets', 'Marshmallows', 30, 'g'),
('Sugars and Sweets', 'Sugars', 4, 'g'),
('Sugars and Sweets', 'Syrup, chocolate syrup, maple syrup, corn syrup', 50, 'ml'),
('Vegetables', 'Vegetables without sauce, including cream style corn and stewed tomatoes', 85, 'g'),
('Vegetables', 'Onion rings', 85, 'g'),
('Vegetables', 'Breaded zucchini sticks', 85, 'g'),
('Vegetables', 'Vegetables with sauce', 110, 'g'),
('Vegetables', 'Vegetables primarily used for garnish or flavouring, fresh, canned or frozen, but not dried, such as parsley or garlic', 4, 'g'),
('Vegetables', 'Chili pepper and green onion', 30, 'g'),
('Vegetables', 'Seaweed', 15, 'g'),
('Vegetables', 'Dehydrated mushrooms', 15, 'g'),
('Vegetables', 'Lettuce and sprouts', 65, 'g'),
('Vegetables', 'Vegetable juice and vegetable drink', 250, 'ml'),
('Vegetables', 'Olives', 15, 'g'),
('Vegetables', 'Sun-dried tomato packed in oil', 15, 'g'),
('Vegetables', 'Pickles', 30, 'g'),
('Vegetables', 'Artichoke hearts', 30, 'g'),
('Vegetables', 'Relish', 15, 'ml'),
('Vegetables', 'Vegetable paste', 30, 'ml'),
('Vegetables', 'Vegetable sauce or purée', 60, 'ml');

-- --------------------------------------------------------

--
-- Table structure for table `sains_scraped`
--

CREATE TABLE IF NOT EXISTS `sains_scraped` (
`ID` int(11) unsigned NOT NULL,
  `ShopID` varchar(200) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Unit` varchar(5) DEFAULT NULL,
  `Mass` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `PPUPrice` double DEFAULT NULL,
  `PPUUnit` varchar(5) DEFAULT NULL,
  `FoodCat` varchar(100) DEFAULT NULL,
  `SuperMarket` char(2) DEFAULT NULL,
  `Calories` double DEFAULT NULL,
  `Protein` double DEFAULT NULL,
  `Carbs` double DEFAULT NULL,
  `Sugars` double DEFAULT NULL,
  `Fats` double DEFAULT NULL,
  `Saturates` double DEFAULT NULL,
  `Salt` double DEFAULT NULL,
  `Fibre` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tesco`
--

CREATE TABLE IF NOT EXISTS `tesco` (
`ID` int(11) unsigned NOT NULL,
  `ShopID` varchar(200) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Unit` varchar(5) DEFAULT NULL,
  `Mass` double DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `PPUPrice` double DEFAULT NULL,
  `PPUUnit` varchar(5) DEFAULT NULL,
  `FoodCat` varchar(100) DEFAULT NULL,
  `FoodCat2` varchar(100) DEFAULT NULL,
  `SuperMarket` char(2) DEFAULT NULL,
  `Calories` double DEFAULT NULL,
  `Proteins` double DEFAULT NULL,
  `Carbs` double DEFAULT NULL,
  `Sugars` double DEFAULT NULL,
  `Fats` double DEFAULT NULL,
  `Saturates` double DEFAULT NULL,
  `Salt` double DEFAULT NULL,
  `Fibre` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asda_scraped`
--
ALTER TABLE `asda_scraped`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sains_scraped`
--
ALTER TABLE `sains_scraped`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tesco`
--
ALTER TABLE `tesco`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asda_scraped`
--
ALTER TABLE `asda_scraped`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sains_scraped`
--
ALTER TABLE `sains_scraped`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tesco`
--
ALTER TABLE `tesco`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
