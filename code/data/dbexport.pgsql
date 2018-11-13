--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ingredientinfo; Type: TABLE; Schema: public; Owner: ctp_user
--

CREATE TABLE public.ingredientinfo (
    id integer NOT NULL,
    name character(1) NOT NULL,
    isgluten boolean NOT NULL,
    isdairy boolean NOT NULL
);


ALTER TABLE public.ingredientinfo OWNER TO ctp_user;

--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: ctp_user
--

CREATE TABLE public.ingredients (
    properties_key text,
    properties_properties text
);


ALTER TABLE public.ingredients OWNER TO ctp_user;

--
-- Name: ingredientsub; Type: TABLE; Schema: public; Owner: ctp_user
--

CREATE TABLE public.ingredientsub (
    id integer NOT NULL,
    ingr_id integer NOT NULL,
    sub_id integer NOT NULL
);


ALTER TABLE public.ingredientsub OWNER TO ctp_user;

--
-- Data for Name: ingredientinfo; Type: TABLE DATA; Schema: public; Owner: ctp_user
--

COPY public.ingredientinfo (id, name, isgluten, isdairy) FROM stdin;
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: ctp_user
--

COPY public.ingredients (properties_key, properties_properties) FROM stdin;
acorn squash	butternut squash
acorn squash	pumpkin
allspice (1 tsp)	1/2 tsp ground cinnamon + 1/2 tsp ground cloves + pinch of ground nutmeg
almond butter	peanut butter
almond butter	cashew butter
almond extract (1/2 tsp)	vanilla extract (3/4 tsp)
amberjack	mahi-mahi
amberjack	grouper
amberjack	tilefish
amberjack	mullet
apples	pears
apples	quinces
apple juice	apple cider
apple juice	pear cider
apple juice	white grape juice
apple pie spice (1 tbsp)	2 tsp ground cinnamon + 1 tsp ground nutmeg + pinch ground allspice
applesauce	pumpkin puree
applesauce	plum puree
arugula	watercress
arugula	baby spinach
arugula	belgian endive
arugula	escarole
arugula	radicchio
Asiago cheese	Parmesan cheese
Asiago cheese	Pecorino Romano cheese
asparagus	broccoli
asparagus	canned hearts of palm
asparagus	green beans
avocado	cooked chayote squash
bacon	pancetta
bacon	prosciutto
bacon	smoked sausage
bacon	ham
baking powder (1 tsp)	1/4 tsp baking soda + 1/4 cornstarch + 1/2 tsp cream of tartar
barbecue sauce (1 cup)	1 cup ketchup + 1/2 to 1 tsp liquid smoke seasoning
beer (for soups and stews)	chicken or beef stock
beer (for soups and stews)	red wine
beer (for soups and stews)	sake
belgian endive	radicchio
belgian endive	arugula
belgian endive	watercress
bell pepper; roasted red	chopped jarred pimientos
blackberries	loganberries
blackberries	boysenberries
blackberries	raspberries
blueberries	huckleberries
blueberries	red currants
blueberries	raspberries
blueberries	strawberries
blue cheese	feta cheese
bok choy	napa cabbage
bok choy	collard greens
boysenberries	blackberries
boysenberries	raspberries
dry bread crumbs	crushed tortilla chips
dry bread crumbs	crushed dry stuffing mix
dry bread crumbs	crushed pretzels
dry bread crumbs	crushed cornflakes
dry bread crumbs	crushed potato chips
broccoli	cauliflower
brussels sprouts	broccoli florets
brussels sprouts	chopped green cabbage
butter	1/4 cup buttermilk + 1/4 cup unsweetened applesauce
buttermilk	1 tbsp lemon juice or vinegar + enough milk to equal 1 cup (for baking, let stand for a few minutes before using)
buttermilk	plain yogurt
buttermilk	sour cream
butternut squash	pumpkin
butternut squash	sweet potato
Canadian bacon	smoked ham
Canadian bacon	pancetta
Canadian bacon	bacon
caraway seeds	dill seeds
caraway seeds	anise seeds
cardamom (1/2 tsp)	1/4 tsp ground cinnamon + 1/4 tsp ground nutmeg or cloves
carrots	parnsips
carrots	turnips
catfish	tilapia
catfish	grouper
cauliflower	broccoli
cayenne pepper	chipotle powder
cayenne pepper	hot paprika
cayenne pepper	crushed red papper flakes
cayenne pepper	chili powder
celery salt	Old Bay seasoning
celery seed	celery salt
celery seed	dill seeds
chard	turnip greens
chard	spinach
chard	mustard greens
Cheddar cheese	Colby cheese
Cheddar cheese	American cheese
chicken (ground)	ground turkey
chicken (ground)	veal
chicken (ground)	turkey breast
chile pepper (fresh, minced)	1 tsp hot pepper sauce
chile pepper (fresh, minced)	1 to 3 tsp chile paste
chile pepper (fresh, minced)	1/4 to 1/2 tsp ground cayenne
chile pepper (fresh, minced)	3/4 tsp crushed red pepper flakes
chile pepper (fresh, minced)	1 tsp paprika
chile powder (1 tsp)	1 tsp cayenne pepper
chile powder (1 tsp)	1 to 2 tsp paprika
chile powder (1 tsp)	1 tsp chili powder
chili powder (1 tsp)	1/2 to 1 tsp cayenne papper
chili powder (1 tsp)	1 to 2 tsp paprika
chili powder (1 tsp)	1 tsp chile oil
chocolate, bittersweet (1oz)	2 heaping tbsp unsweetened cocoa powder + 1 to 1/3 tbsp granulated sugar + 1 1/2 tsp butter
chocolate, bittersweet (1oz)	shortening
chocolate, bittersweet (1oz)	vegetable oil
chocolate, semisweet (1 oz)	3 tbsp unsweetened cocoa powder + 1 to 1/2 tbsp granulated sugar + 1 1/2 tsp butter
chocolate, semisweet (1 oz)	shortening
chocolate, semisweet (1 oz)	vegetable oil
chocolate, unsweetened (1 oz)	3 tbsp unsweetened cocoa powder + 1 tbsp butter
chocolate, unsweetened (1 oz)	shortening
chocolate, unsweetened (1 oz)	vegetable oil
chorizo	andouille sausage
chorizo	hot Italian sausage
cloves	allspice
coffee liqueur (3 tbsp)	3 tbsp water + 3/4 tsp insant coffee granules
coffee liqueur (3 tbsp)	3 tbsp cognac
coffee liqueur (3 tbsp)	3 tbsp rum
collards	kale
collards	mature spinach
collards	mustard greens
collards	turnip greens
corned beef	pastrami
cornstarch (1 tbsp, for thickening)	flour (3 tbsp)
corn syrup, dark (1 cup)	honey
corn syrup, dark (1 cup)	1 1/4 cup packed brown sugar dissolved in 1/4 cup hot water (or liquid from recipe)
corn syrup, light (1 cup)	honey
corn syrup, light (1 cup)	1 1/4 cups granulated sugar dissolved in 1/4 cup hot water (or liquid from recipe)
corn syrup, light (1 cup)	molasses
cottage cheese	ricotta cheese
couscous	quinoa
couscous	brown rice
crab boil seasoning	Old Bay seasoning
crab boil seasoning	pickling spice
cracker crumbs (1 cup)	1 1/4 cup dry bread crumbs
cracker crumbs (1 cup)	1 1/2 cup crushed croutons or stuffing cubes
cracker crumbs (1 cup)	1 cup panko
crayfish	shrimp
crayfish	lobster
crayfish	crab
cream cheese	ricotta cheese (for cooking)
cream, half-and-half (1 cup)	1 tbsp melted unsalted butter + enough whole milk to equal 1 cup
cream, half-and-half (1 cup)	3/4 cup whole milk + 1/4 cup heavy or whipping cream
cream, half-and-half (1 cup)	1 cup evaporated milk (for baking)
cream, light (1 cup)	3 tbsp melted unsalted butter + whole milk to equal 1 cup
cream, light (1 cup)	1/2 cup heavy or whipping cream plus 1/2 cup whole milk
cream, light (1 cup)	1/2 cup evaporated milk + 1/2 cup whole milk
cream, light whipping (1 cup)	3/4 cup whole milk + 1/4 cup melted unsalted butter
cream, light whipping (1 cup)	1 cup heavy or whipping cream
cream of tartar (1 tsp)	1 tbsp distilled white vinegar or lemon juice (to add acidity to liquids)
cream, whipping (1 cup)	2/3 cup whole milk + 1/3 cup melted unsalted butter
cream, whipping (1 cup)	2/3 cup evaporated milk
croissants	crescent rolls from refrigerated dough
cucumber	small zucchini
cumin, ground	chili powder
cumin, ground	ground coriander
dill	tarragon
dill seeds	caraway seeds
dill seeds	celery seeds
egg noodles	dried linguine
egg noodles	fettuccine
egg noodles	pappardelle
eggplant	portobello mushroom caps
eggplant	zucchini
eggplant	yellow squash
egg substitute (3 tbsp)	2 egg whites
egg substitute (3 tbsp)	1 large egg
egg white (1 lg)	2 tsp meringue powder + 3 tbsp water
egg white (1 lg)	1 tbsp ground flaxseed simmered in 3 tbsp water
egg	2 lg whole egg yolks + 1 tbsp cold water
egg	3 tbsp vegetable oil + 1 tbsp water (for baking)
egg	1 tsp cornstarch + 3 tbsp additional liquid in recipe (for thickening)
egg	3 tbsp water/milk + 3 tbsp flour + 1 1/2 tsp shortening + 1/2 tsp baking powder (for baking)
evaporated milk (1 cup)	2 1/4 cups whole milk, simmered until reduced to 1 cup
fish sauce	soy sauce
fish sauce	fermented tofu
flaxseed	wheat germ
flaxseed	wheat bran
flaxseed	oat bran
flaxseed	butter/margarine/oil (to replace ground flaxseed as fat)
garam marsala (1 tbsp)	1/2 tsp ground cumin + 1/2 tsp ground coriander + 1/2 tsp ground black pepper + 1/2 tsp ground cardamom + 1/2 tsp ground cinnamon + 1/4 tsp ground cloves (toast spices just before using)
garlic (1 clove fresh)	1/2 to 1 tsp minced shallots
garlic (1 clove fresh)	1/8 tsp garlic powder
garlic (1 clove fresh)	1/4 tsp granulated garlic
garlic (1 clove fresh)	1/2 tsp garlic salt (omit 1/2 tsp salt from recipe)
garlic salt (1 tsp)	1/4 tsp garlic powder + 3/4 tsp salt
ginger, crystallized (3 tbsp)	2 tsp minced fresh ginger + 1/8 to 1/2 tsp granulated sugar
ginger, crystallized (3 tbsp)	1/8 tsp ground ginger
ginger, fresh (1 tbsp)	1/8 tsp ground ginger (for baking)
ginger, ground (1 tsp, for baking)	1 tbsp grated or minced fresh ginger
ginger, ground (1 tsp, for baking)	1 tsp pumpkin pie spice
ginger, ground (1 tsp, for baking)	1 tsp allspice
Greek seasoning (1 tsp)	1 tsp dried oregano + 3/4 tsp onion powder + 3/4 tsp garlic powder + 1/2 tsp ground black pepper + 1/4 tsp dried mint + pinch of cinnamon + pinch of nutmeg
grenadine (1 tsp)	2 to 3 tsp pomegranate juice (reduce liquid and add sugar as necessary)
grenadine (1 tsp)	1 tsp raspberry syrup
grouper	striped bass, cod, catfish, red snapper
haddock	cod
haddock	pollock
haddock	blackfish
haddock	grouper
haddock	red snapper
haddock	sea bass
halibut	cod
halibut	haddock
halibut	striped bass
harissa (1 tbsp)	chile paste
harissa (1 tbsp)	1 to 3 tsp hot sauce
hearts of palm	canned or marinated artichoke hearts
hearts of palm	cooked asparagus
herbes de Provence (3 tbsp)	2 tsp dried thyme + 2 tsp dried savory + 1 tsp dried marjoram + 1 tsp dried lavender + 1/2 tsp dried rosemary + 1/2 tsp fennel seeds + 1 crushed bay leaf
honey (1 cup)	1 1/4 cups granulated sugar + 1/4 cup liquid called for in recipe
honey (1 cup)	1/2 cup granulated sugar + 3/4 cup maple syrup
Italian seasoning (2 tsp)	1 tsp dried oregano + 1/2 tsp dried basil + 1/2 tsp dried thyme
kale	collard greens
kale	turnip greens
kale	mustard greens
kale	spinach
ketchup (1 cup)	1 cup tomato sauce + 1/4 cup granulated sugar + 3 tbsp apple cider vinegar + 1/2 tsp salt + pinch ground cloves
ketchup (1 cup)	chili sauce
ketchup (1 cup)	barbecue sauce
kielbasa	Cajun andouille sausage
kielbasa	Spanish chorizo
lamb	beef
lamb	pork
lamb	veal
lamb	mutton
lard (1 cup)	vegetable shortening
lard (1 cup)	1 cup + 3 tbsp unsalted butter
lard (1 cup)	bacon fat
leeks (chopped)	chopped green onions or scallions
leeks (chopped)	chopped shallots
leeks (chopped)	chopped sweet or storage onions
lemongrass (1 stalk)	1 1/2 tsp lemon zest + 1/8 minced fresh ginger
lemon pepper seasoning (1 tsp)	1/2 tsp grated fresh lemon zest + 1/4 tsp salt + 1/8 tsp ground black pepper
lima beans	green peas
lima beans	edamame
lima beans	sugar snap peas
lima beans	chickpeas
lima beans	red kidney peas
lima beans	black-eyed peas
lima beans	cannellini beans
liquid smoke (2 drops)	2 slices bacon
liquid smoke (2 drops)	1 tsp canning liquid from canned chipotle peppers
liquid smoke (2 drops)	1/2 tsp paprika
lobster	crayfish
lobster	jumbo shrimp
lobster	crab
lobster	scallops
mackerel	mahi-mahi
mackerel	pompano
mackerel	striped bass
mackerel	tuna
mahi-mahi	tuna
mahi-mahi	pompano
mahi-mahi	swordfish
marjoram	sweet basil
marjoram	summer savory
marscapone cheese (1 cup)	1/2 cup cream cheese + 1/2 cup sour cream blended until smooth
marscapone cheese (1 cup)	3/4 cup cream cheese + 1/4 cup heavy or whipping cream blended until smooth
marscapone cheese (1 cup)	1/2 cup ricotta cheese + 1/2 cup heavy or whipping cream blended until smooth
mayonnaise	sour cream
mayonnaise	yogurt
milk, whole	1 cup minus 3 tbsp fat-free milk + 3 tbsp melted butter or margarine
mint	basil
mozzarella cheese	provolone cheese
mozzarella cheese	gouda cheese
mussels	oysters
mussels	soft-shelled or littleneck clams
mussels	scallops
mustard greens	turnip greens
mustard greens	arugula
mustard greens	collard greens
mustard greens	kale
napa cabbage	green or red cabbage
napa cabbage	collard greens
nectarines	peaches
nectarines	plums
nectarines	apricots
nectarines	cherries
nutmeg	ground mace
nutmeg	ground allspice
nutmeg	ground cinnamon
nutmeg	apple pie spice
nutmeg	pumpkin pie spice
oat flour (1 cup)	1 1/4 cups old-fashioned oatmeal
oat flour (1 cup)	ground in blender
oil, vegetable (1/2 cup)	1/4 cup buttermilk + 1/4 cup well-drained
oil, vegetable (1/2 cup)	unsweetened applesauce or baby food prunes (for baking)
okra (2 cups)	green beans
okra (2 cups)	asparagus
okra (2 cups)	broccoli
okra (2 cups)	1 tbsp filé powder or 2 tsp cornstarch mixed with 1 tbsp cold water (for thickening, especially in gumbo)
Old Bay seasoning	crab boil
Old Bay seasoning	pickling spice
olive oil	corn oil
olive oil	canola oil
olive oil	peanut oil
onion flakes (1 tbsp)	3/4 to 1 tsp onion powder
onion flakes (1 tbsp)	1/2 cup chopped fresh or frozen onion
onion, green (1 bunch)	1 bunch scallions
onion, green (1 bunch)	3 cups chopped shallots
onion (1 cup)	2 tbsp dried onion flakes
onion (1 cup)	1 1/2 to 2 tsp onion powder
orange roughy	flounder
orange roughy	red snapper
orange roughy	tilapia
oregano	marjoram
oregano	thyme
oregano	fresh basil
oregano	summer savory
oysters	mussels
oysters	soft-shell clams
oysters	littleneck clams
oysters	scallops
oyster liquor	fresh or bottled clam juice
oyster sauce	2 tsp soy sauce or teriyaki sauce + 1 tsp canning liquid from canned oysters + pinch of sugar (if using soy sauce)
pancetta	Canadian bacon
pancetta	bacon
pancetta	prosciutto
papaya	mango
papaya	peaches
papaya	nectarines
paprika 	chili powder
Parmesan cheese	Pecorino Romano cheese
Parmesan cheese	aged Asiago cheese
peaches	nectarines
peaches	apricots
peaches	plums
peaches	cherries
peaches	mango
pears	apples
pears	asian pears
pears	quinces
Pecorino cheese	Parmesan cheese
Pecorino cheese	aged Asiago cheese
pickling spice	crab boil
pickling spice	Old Bay seasoning
pineapple	papaya
pineapple	guava
pineapple	mango
pineapple juice	orange juice
pineapple juice	grapefruit juice
pine nuts	walnuts
pine nuts	almonds
pine nuts	pecans
pomegranate juice	cranberry juice
pompano	mahi-mahi
pompano	tuna
poultry seasoning (1 tsp)	3/4 tsp dried thyme + 1/2 tsp crushed or rubbed sage + 1/2 tsp dried marjoram + 1/4 tsp ground black pepper
Provolone cheese	mozzarella cheese
Provolone cheese	Fontina cheese
puff pastry	phyllo dough
puff pastry	pie dough
pumpkin	butternut squash
pumpkin	sweet potato
pumpkin pie spice (1 tsp)	1/2 tsp ground cinnamon + 1/4 tsp ground nutmeg + 1/4 tsp ground ginger + 1/8 tsp groud cloves; 1 tsp apple pie spice
quail	young pheasant
quail	cornish hen
queso fresco	feta cheese (rinsed to remove some salt)
quinoa	couscous
quinoa	bulgur
radicchio	belgian endive
radicchio	arugula
radicchio	watercress
radishes	turnips
radishes	parsnips
raisins	other dried fruits like apricots
raisins	blueberries
raisins	cranberries
raisins	cherries
raspberries	strawberries
raspberries	blackberries
red cabbage	green cabbage
red cabbage	brussels sprouts
red cabbage	napa cabbage
red snapper	striped bass
red snapper	grouper
red snapper	halibut
rhubarb	cranberries
ricotta cheese	puréed cottage cheese
ricotta cheese	fromage blanc
ricotta cheese	mashed firm tofu
romaine lettuce	iceberg lettuce
romaine lettuce	butterhead lettuce
romano cheese	Parmesan cheese
romano cheese	aged Asiago cheese
rosemary	summer savory
rosemary	basil
rosemary	oregano
rum	brandy
rum	bourbon
rutabaga	turnips
rutabaga	broccoli stems
saffron (10-15 threads)	1/2 tsp turmeric + 1/2 tsp mild paprika
sage (1 tbsp)	3 to 4 tsp summer savory thyme
sage (1 tbsp)	basil
sage (1 tbsp)	oregano
sage (1 tbsp)	1 tbsp rosemary
sage (1 tbsp)	1 to 2 tsp poultry seasoning
salami	pepperoni
salami	spanish chorizo
salami	prosciutto
salami	summer sausage
salmon	trout
salmon	striped bass
salmon	tuna
savory (1 tbsp)	2 to 3 tsp chopped thyme or rosemary
savory (1 tbsp)	1 to 1 1/2 tsp thyme + 1 to 1/2 tsp mint
savory (1 tbsp)	1 to 2 tsp sage
savory (1 tbsp)	1 tsp herbes de Provence
scallion (1 bunch)	1 bunch green onions
scallion (1 bunch)	3 to 4 cups chopped leeks
scallops	mussels
scallops	clams
scallops	oysters
scallops	shrimp
scallops	lobster
sesame oil, toasted (1 tsp)	2 tsp crushed and toasted sesame seeds + 1 tsp peanut oil
sesame seeds	white poppy seeds
sesame seeds	black poppy seeds
sesame seeds	finely chopped peanuts
sesame seeds	finely chopped almonds
sesame seeds	finely chopped cashews
shallot (1 chopped)	1/4 cup chopped leeks
shallot (1 chopped)	1/4 cup chopped red onions + 1/2 tsp minced garlic
shallot (1 chopped)	1/4 cup chopped green onions (white and light green parts only)
shallot (1 chopped)	1/4 cup chopped scallions (white and light green parts only)
sherry	sake, port
sherry	dry white wine + pinch of sugar
shrimp	prawns
shrimp	crab
shrimp	lobster
shrimp	scallops
snapper	striped bass
snapper	grouper
snapper	halibut
sole	flounder
sole	cod
sole	whiting
sorghum molasses	light corn syrup
sorghum molasses	dark corn syrup
sorghum molasses	honey
sorghum molasses	pure maple syrup
sour cream	plain yogurt
sour cream	1/3 melted unsalted butter + 3/4 cup milk + 1 tsp lemon juice (for baking)
soy sauce (1 tbsp)	scant 3/4 tsp kosher salt + 1/2 tsp granulated sugar dissolved in 1 tbsp hot water
soy sauce (1 tbsp)	teriyaki sauce
spinach	beet greens
spinach	turnip greens
spinach	kale
spinach	arugula
spinach	watercess
stock, beef (1 cup)	1 cup boiling water + 1 beef bouillon cube
stock, beef (1 cup)	1 cup canned beef broth
stock, beef (1 cup)	1 cup red wine or beer (can replace up to half of beef stock in sauce and stews)
stock, chicken (1 cup)	1 cup boiling water + 1 chicken bouillon cube
stock, chicken (1 cup)	1 cup canned chicken broth
stock, vegetable (1 cup)	1 cup boiling water + 1 vegetable bouillon cube
stock, vegetable (1 cup)	1 cup canned vegetable broth
strawberries	raspberries
strawberries	blueberries
striped bass	grouper
striped bass	red snapper
sugar, confectioner's (1 cup)	1/2 cup +  1 1/2 tbsp granulated sugar + 3/4 tsp cornstarch
sugar, confectioner's (1 cup)	fine ground in blender or food processor
sugar, dark brown (1 packed cup)	1 cup granulated sugar + 2 to 3 tbsp molasses
sugar, light brown (1 packed cup)	1 cup granulated sugar + 1 to 2 tbsp molasses
sugar, light brown (1 packed cup)	1/2 cup dark brown sugar + 1/2 cup granulated sugar
summer sausage	salami or other dry sausage
summer sausage	pepperoni
summer sausage	bologna
sweetened condensed milk (1 14 oz can)	1 cup evaporated milk + 1 1/4 cups granulated sugar
sweetened condensed milk (1 14 oz can)	heated until sugar dissolves
sweet potato	pumpkin
sweet potato	butternut squash
Swiss cheese	Provolone cheese
Swiss cheese	Gruyère cheese
swordfish	tuna
swordfish	mahi-mahi
swordfish	grouper
swordfish	halibut
taco seasoning (1 tbsp)	2 tsp pure chile powder + 1/4 tsp dried oregano + 1/4 tsp ground cumin + 1/8 tsp garlic powder + 1/8 tsp onion powder + pinch of cayenne pepper + salt to taste
tahini (1 cup)	3/4 cup peanut butter + 1/4 cup untoasted sesame oil
tarragon	dill
tequila	vodka
tequila	light rum
teriyaki sauce (1/2 cup)	1/3 cup soy sauce + 3 tbsp rice vinegar + 3 tsp sugar or honey
thyme	marjoram, oregano
thyme	basil
thyme	summer savory
tilapia	red snapper
tilapia	orange roughy
tilapia	sole
tilapia	flounder
tomatoes (1 lb)	1 1/2 cups canned whole tomatoes
tomatoes (1 lb)	3 tbsp tomato paste (to replace cooked tomatoes)
tomato juice (1 cup)	1/2 cup tomato purée or tomato sauce + 1/2 cup water
tomato juice (1 cup)	1/4 cup tomato paste + 3/4 cup water
tomato paste (1 tbsp)	2 to 3 tbsp tomato purée (boil until reduced to 1 tbsp)
tomato paste (1 tbsp)	tomato sauce (boil until reduced to 1 tbsp)
tomato purée (1 cup)	1/3 cup tomato paste + 2/3 cup water
tomato purée (1 cup)	tomato sauce
tomato sauce (1 cup)	1/2 cup tomato paste + 1/2 cup water
tomato sauce (1 cup)	1 cup canned stewed tomatoes
tomato sauce (1 cup)	blended until smooth
trout	salmon
trout	ocean perch
tuna	swordfish
tuna	mahi-mahi
tuna	striped bass
tuna	salmon
turmeric (1/4 to 1/2 tsp)	1/4 to 1/2 tsp ground ginger + 1 to 2 tsp minced fresh ginger
turmeric (1/4 to 1/2 tsp)	5 to 7 saffron threads
turmeric (1/4 to 1/2 tsp)	1/2 tsp curry powder
turnips 	parsnips
turnips 	rutabaga
turnips 	broccoli stems
turnip greens	mustard greens
turnip greens	collards
turnip greens	kale
turnip greens	mature spinach
vanilla bean (1 8-inch pod)	2 to 3 tsp vanilla extract
vegetable shortening (1 cup)	1 cup + 2 tbsp unsalted butter (baking)
vegetable shortening (1 cup)	1 cup bacon fat (sautéing and frying)
vermouth	dry sherry, dry white wine
vinegar	lemon juice or lime juice (for dressings, marinades, sauces, and deglazing pans)
vodka	gin, white rum, tequila
walnuts	pine nuts
walnuts	pecans
walnuts	almonds
wasabi (1 tbsp)	1 tbsp well-drained prepared horseradish
wasabi (1 tbsp)	1 tbsp mustard powder + 1 tsp water (mix, cover, and let rest for 15 minutes)
watermelon	honeydew melon
whipped cream (1 cup)	12 oz can evaporated milk, chilled overnight, mixed with 1 tbsp lemon juice, whipped until stiff, beat in 1 tsp vanilla extract and 1/4 cup confectioner's sugar
whiskey	cognac
whiskey	brandy
whiskey	rum
whitefish	perch
whitefish	lake trout
whiting	cod
whiting	flounder
whiting	ocean perch
whiting	red snapper
wine, red (1 cup)	3/4 cup red grape juice + 2 tbsp red wine vinegar or lemon juice + 2 tbsp water (for marinades)
wine, red (1 cup)	beef stock (for sauces and stews)
wine, white (1 cup)	3/4 cup white grape juice
wine, white (1 cup)	apple juice
wine, white (1 cup)	apple cider + 1/4 cup white wine vinegar or lemon juice (for marinades)
wine, white (1 cup)	sherry
wine, white (1 cup)	vermouth
wine, white (1 cup)	sake
wine, white (1 cup)	chicken stock
wine, white (1 cup)	vegetable stock (for sauce and stews)
worcestershire sauce (1 tbsp)	2 tsp soy sauce + 4 drops hot pepper sauce + 1/4 lemon juice + 1/4 tsp granulated sugar
yellow squash	zucchini
yellow squash	pattypan squash
yogurt	sour cream
yogurt	crème fraîche
yogurt	silken tofu (blended)
yogurt	mayonnaise
zucchini	yellow squash
zucchini	pattypan squash
acorn squash	butternut squash
acorn squash	pumpkin
allspice (1 tsp)	1/2 tsp ground cinnamon + 1/2 tsp ground cloves + pinch of ground nutmeg
almond butter	peanut butter
almond butter	cashew butter
almond extract (1/2 tsp)	vanilla extract (3/4 tsp)
amberjack	mahi-mahi
amberjack	grouper
amberjack	tilefish
amberjack	mullet
apples	pears
apples	quinces
apple juice	apple cider
apple juice	pear cider
apple juice	white grape juice
apple pie spice (1 tbsp)	2 tsp ground cinnamon + 1 tsp ground nutmeg + pinch ground allspice
applesauce	pumpkin puree
applesauce	plum puree
arugula	watercress
arugula	baby spinach
arugula	belgian endive
arugula	escarole
arugula	radicchio
Asiago cheese	Parmesan cheese
Asiago cheese	Pecorino Romano cheese
asparagus	broccoli
asparagus	canned hearts of palm
asparagus	green beans
avocado	cooked chayote squash
bacon	pancetta
bacon	prosciutto
bacon	smoked sausage
bacon	ham
baking powder (1 tsp)	1/4 tsp baking soda + 1/4 cornstarch + 1/2 tsp cream of tartar
barbecue sauce (1 cup)	1 cup ketchup + 1/2 to 1 tsp liquid smoke seasoning
beer (for soups and stews)	chicken or beef stock
beer (for soups and stews)	red wine
beer (for soups and stews)	sake
belgian endive	radicchio
belgian endive	arugula
belgian endive	watercress
bell pepper; roasted red	chopped jarred pimientos
blackberries	loganberries
blackberries	boysenberries
blackberries	raspberries
blueberries	huckleberries
blueberries	red currants
blueberries	raspberries
blueberries	strawberries
blue cheese	feta cheese
bok choy	napa cabbage
bok choy	collard greens
boysenberries	blackberries
boysenberries	raspberries
dry bread crumbs	crushed tortilla chips
dry bread crumbs	crushed dry stuffing mix
dry bread crumbs	crushed pretzels
dry bread crumbs	crushed cornflakes
dry bread crumbs	crushed potato chips
broccoli	cauliflower
brussels sprouts	broccoli florets
brussels sprouts	chopped green cabbage
butter	1/4 cup buttermilk + 1/4 cup unsweetened applesauce
buttermilk	1 tbsp lemon juice or vinegar + enough milk to equal 1 cup (for baking, let stand for a few minutes before using)
buttermilk	plain yogurt
buttermilk	sour cream
butternut squash	pumpkin
butternut squash	sweet potato
Canadian bacon	smoked ham
Canadian bacon	pancetta
Canadian bacon	bacon
caraway seeds	dill seeds
caraway seeds	anise seeds
cardamom (1/2 tsp)	1/4 tsp ground cinnamon + 1/4 tsp ground nutmeg or cloves
carrots	parnsips
carrots	turnips
catfish	tilapia
catfish	grouper
cauliflower	broccoli
cayenne pepper	chipotle powder
cayenne pepper	hot paprika
cayenne pepper	crushed red papper flakes
cayenne pepper	chili powder
celery salt	Old Bay seasoning
celery seed	celery salt
celery seed	dill seeds
chard	turnip greens
chard	spinach
chard	mustard greens
Cheddar cheese	Colby cheese
Cheddar cheese	American cheese
chicken (ground)	ground turkey
chicken (ground)	veal
chicken (ground)	turkey breast
chile pepper (fresh, minced)	1 tsp hot pepper sauce
chile pepper (fresh, minced)	1 to 3 tsp chile paste
chile pepper (fresh, minced)	1/4 to 1/2 tsp ground cayenne
chile pepper (fresh, minced)	3/4 tsp crushed red pepper flakes
chile pepper (fresh, minced)	1 tsp paprika
chile powder (1 tsp)	1 tsp cayenne pepper
chile powder (1 tsp)	1 to 2 tsp paprika
chile powder (1 tsp)	1 tsp chili powder
chili powder (1 tsp)	1/2 to 1 tsp cayenne papper
chili powder (1 tsp)	1 to 2 tsp paprika
chili powder (1 tsp)	1 tsp chile oil
chocolate, bittersweet (1oz)	2 heaping tbsp unsweetened cocoa powder + 1 to 1/3 tbsp granulated sugar + 1 1/2 tsp butter
chocolate, bittersweet (1oz)	shortening
chocolate, bittersweet (1oz)	vegetable oil
chocolate, semisweet (1 oz)	3 tbsp unsweetened cocoa powder + 1 to 1/2 tbsp granulated sugar + 1 1/2 tsp butter
chocolate, semisweet (1 oz)	shortening
chocolate, semisweet (1 oz)	vegetable oil
chocolate, unsweetened (1 oz)	3 tbsp unsweetened cocoa powder + 1 tbsp butter
chocolate, unsweetened (1 oz)	shortening
chocolate, unsweetened (1 oz)	vegetable oil
chorizo	andouille sausage
chorizo	hot Italian sausage
cloves	allspice
coffee liqueur (3 tbsp)	3 tbsp water + 3/4 tsp insant coffee granules
coffee liqueur (3 tbsp)	3 tbsp cognac
coffee liqueur (3 tbsp)	3 tbsp rum
collards	kale
collards	mature spinach
collards	mustard greens
collards	turnip greens
corned beef	pastrami
cornstarch (1 tbsp, for thickening)	flour (3 tbsp)
corn syrup, dark (1 cup)	honey
corn syrup, dark (1 cup)	1 1/4 cup packed brown sugar dissolved in 1/4 cup hot water (or liquid from recipe)
corn syrup, light (1 cup)	honey
corn syrup, light (1 cup)	1 1/4 cups granulated sugar dissolved in 1/4 cup hot water (or liquid from recipe)
corn syrup, light (1 cup)	molasses
cottage cheese	ricotta cheese
couscous	quinoa
couscous	brown rice
crab boil seasoning	Old Bay seasoning
crab boil seasoning	pickling spice
cracker crumbs (1 cup)	1 1/4 cup dry bread crumbs
cracker crumbs (1 cup)	1 1/2 cup crushed croutons or stuffing cubes
cracker crumbs (1 cup)	1 cup panko
crayfish	shrimp
crayfish	lobster
crayfish	crab
cream cheese	ricotta cheese (for cooking)
cream, half-and-half (1 cup)	1 tbsp melted unsalted butter + enough whole milk to equal 1 cup
cream, half-and-half (1 cup)	3/4 cup whole milk + 1/4 cup heavy or whipping cream
cream, half-and-half (1 cup)	1 cup evaporated milk (for baking)
cream, light (1 cup)	3 tbsp melted unsalted butter + whole milk to equal 1 cup
cream, light (1 cup)	1/2 cup heavy or whipping cream plus 1/2 cup whole milk
mahi-mahi	swordfish
cream, light (1 cup)	1/2 cup evaporated milk + 1/2 cup whole milk
cream, light whipping (1 cup)	3/4 cup whole milk + 1/4 cup melted unsalted butter
cream, light whipping (1 cup)	1 cup heavy or whipping cream
cream of tartar (1 tsp)	1 tbsp distilled white vinegar or lemon juice (to add acidity to liquids)
cream, whipping (1 cup)	2/3 cup whole milk + 1/3 cup melted unsalted butter
cream, whipping (1 cup)	2/3 cup evaporated milk
croissants	crescent rolls from refrigerated dough
cucumber	small zucchini
cumin, ground	chili powder
cumin, ground	ground coriander
dill	tarragon
dill seeds	caraway seeds
dill seeds	celery seeds
egg noodles	dried linguine
egg noodles	fettuccine
egg noodles	pappardelle
eggplant	portobello mushroom caps
eggplant	zucchini
eggplant	yellow squash
egg substitute (3 tbsp)	2 egg whites
egg substitute (3 tbsp)	1 large egg
egg white (1 lg)	2 tsp meringue powder + 3 tbsp water
egg white (1 lg)	1 tbsp ground flaxseed simmered in 3 tbsp water
egg	2 lg whole egg yolks + 1 tbsp cold water
egg	3 tbsp vegetable oil + 1 tbsp water (for baking)
egg	1 tsp cornstarch + 3 tbsp additional liquid in recipe (for thickening)
egg	3 tbsp water/milk + 3 tbsp flour + 1 1/2 tsp shortening + 1/2 tsp baking powder (for baking)
evaporated milk (1 cup)	2 1/4 cups whole milk, simmered until reduced to 1 cup
fish sauce	soy sauce
fish sauce	fermented tofu
flaxseed	wheat germ
flaxseed	wheat bran
flaxseed	oat bran
flaxseed	butter/margarine/oil (to replace ground flaxseed as fat)
garam marsala (1 tbsp)	1/2 tsp ground cumin + 1/2 tsp ground coriander + 1/2 tsp ground black pepper + 1/2 tsp ground cardamom + 1/2 tsp ground cinnamon + 1/4 tsp ground cloves (toast spices just before using)
garlic (1 clove fresh)	1/2 to 1 tsp minced shallots
garlic (1 clove fresh)	1/8 tsp garlic powder
garlic (1 clove fresh)	1/4 tsp granulated garlic
garlic (1 clove fresh)	1/2 tsp garlic salt (omit 1/2 tsp salt from recipe)
garlic salt (1 tsp)	1/4 tsp garlic powder + 3/4 tsp salt
ginger, crystallized (3 tbsp)	2 tsp minced fresh ginger + 1/8 to 1/2 tsp granulated sugar
ginger, crystallized (3 tbsp)	1/8 tsp ground ginger
ginger, fresh (1 tbsp)	1/8 tsp ground ginger (for baking)
ginger, ground (1 tsp, for baking)	1 tbsp grated or minced fresh ginger
ginger, ground (1 tsp, for baking)	1 tsp pumpkin pie spice
ginger, ground (1 tsp, for baking)	1 tsp allspice
Greek seasoning (1 tsp)	1 tsp dried oregano + 3/4 tsp onion powder + 3/4 tsp garlic powder + 1/2 tsp ground black pepper + 1/4 tsp dried mint + pinch of cinnamon + pinch of nutmeg
grenadine (1 tsp)	2 to 3 tsp pomegranate juice (reduce liquid and add sugar as necessary)
grenadine (1 tsp)	1 tsp raspberry syrup
grouper	striped bass, cod, catfish, red snapper
haddock	cod
haddock	pollock
haddock	blackfish
haddock	grouper
haddock	red snapper
haddock	sea bass
halibut	cod
halibut	haddock
halibut	striped bass
harissa (1 tbsp)	chile paste
harissa (1 tbsp)	1 to 3 tsp hot sauce
hearts of palm	canned or marinated artichoke hearts
hearts of palm	cooked asparagus
herbes de Provence (3 tbsp)	2 tsp dried thyme + 2 tsp dried savory + 1 tsp dried marjoram + 1 tsp dried lavender + 1/2 tsp dried rosemary + 1/2 tsp fennel seeds + 1 crushed bay leaf
honey (1 cup)	1 1/4 cups granulated sugar + 1/4 cup liquid called for in recipe
honey (1 cup)	1/2 cup granulated sugar + 3/4 cup maple syrup
Italian seasoning (2 tsp)	1 tsp dried oregano + 1/2 tsp dried basil + 1/2 tsp dried thyme
kale	collard greens
kale	turnip greens
kale	mustard greens
kale	spinach
ketchup (1 cup)	1 cup tomato sauce + 1/4 cup granulated sugar + 3 tbsp apple cider vinegar + 1/2 tsp salt + pinch ground cloves
ketchup (1 cup)	chili sauce
ketchup (1 cup)	barbecue sauce
kielbasa	Cajun andouille sausage
kielbasa	Spanish chorizo
lamb	beef
lamb	pork
lamb	veal
lamb	mutton
lard (1 cup)	vegetable shortening
lard (1 cup)	1 cup + 3 tbsp unsalted butter
lard (1 cup)	bacon fat
leeks (chopped)	chopped green onions or scallions
leeks (chopped)	chopped shallots
leeks (chopped)	chopped sweet or storage onions
lemongrass (1 stalk)	1 1/2 tsp lemon zest + 1/8 minced fresh ginger
lemon pepper seasoning (1 tsp)	1/2 tsp grated fresh lemon zest + 1/4 tsp salt + 1/8 tsp ground black pepper
lima beans	green peas
lima beans	edamame
lima beans	sugar snap peas
lima beans	chickpeas
lima beans	red kidney peas
lima beans	black-eyed peas
lima beans	cannellini beans
liquid smoke (2 drops)	2 slices bacon
liquid smoke (2 drops)	1 tsp canning liquid from canned chipotle peppers
liquid smoke (2 drops)	1/2 tsp paprika
lobster	crayfish
lobster	jumbo shrimp
lobster	crab
lobster	scallops
mackerel	mahi-mahi
mackerel	pompano
mackerel	striped bass
mackerel	tuna
mahi-mahi	tuna
mahi-mahi	pompano
marjoram	sweet basil
marjoram	summer savory
marscapone cheese (1 cup)	1/2 cup cream cheese + 1/2 cup sour cream blended until smooth
marscapone cheese (1 cup)	3/4 cup cream cheese + 1/4 cup heavy or whipping cream blended until smooth
marscapone cheese (1 cup)	1/2 cup ricotta cheese + 1/2 cup heavy or whipping cream blended until smooth
mayonnaise	sour cream
mayonnaise	yogurt
milk, whole	1 cup minus 3 tbsp fat-free milk + 3 tbsp melted butter or margarine
mint	basil
mozzarella cheese	provolone cheese
mozzarella cheese	gouda cheese
mussels	oysters
mussels	soft-shelled or littleneck clams
mussels	scallops
mustard greens	turnip greens
mustard greens	arugula
mustard greens	collard greens
mustard greens	kale
napa cabbage	green or red cabbage
napa cabbage	collard greens
nectarines	peaches
nectarines	plums
nectarines	apricots
nectarines	cherries
nutmeg	ground mace
nutmeg	ground allspice
nutmeg	ground cinnamon
nutmeg	apple pie spice
nutmeg	pumpkin pie spice
oat flour (1 cup)	1 1/4 cups old-fashioned oatmeal
oat flour (1 cup)	ground in blender
oil, vegetable (1/2 cup)	1/4 cup buttermilk + 1/4 cup well-drained
oil, vegetable (1/2 cup)	unsweetened applesauce or baby food prunes (for baking)
okra (2 cups)	green beans
okra (2 cups)	asparagus
okra (2 cups)	broccoli
okra (2 cups)	1 tbsp filé powder or 2 tsp cornstarch mixed with 1 tbsp cold water (for thickening, especially in gumbo)
Old Bay seasoning	crab boil
Old Bay seasoning	pickling spice
olive oil	corn oil
olive oil	canola oil
olive oil	peanut oil
onion flakes (1 tbsp)	3/4 to 1 tsp onion powder
onion flakes (1 tbsp)	1/2 cup chopped fresh or frozen onion
onion, green (1 bunch)	1 bunch scallions
onion, green (1 bunch)	3 cups chopped shallots
onion (1 cup)	2 tbsp dried onion flakes
onion (1 cup)	1 1/2 to 2 tsp onion powder
orange roughy	flounder
orange roughy	red snapper
orange roughy	tilapia
oregano	marjoram
oregano	thyme
oregano	fresh basil
oregano	summer savory
oysters	mussels
oysters	soft-shell clams
oysters	littleneck clams
oysters	scallops
oyster liquor	fresh or bottled clam juice
oyster sauce	2 tsp soy sauce or teriyaki sauce + 1 tsp canning liquid from canned oysters + pinch of sugar (if using soy sauce)
pancetta	Canadian bacon
pancetta	bacon
pancetta	prosciutto
papaya	mango
papaya	peaches
papaya	nectarines
paprika 	chili powder
Parmesan cheese	Pecorino Romano cheese
Parmesan cheese	aged Asiago cheese
peaches	nectarines
peaches	apricots
peaches	plums
peaches	cherries
peaches	mango
pears	apples
pears	asian pears
pears	quinces
Pecorino cheese	Parmesan cheese
Pecorino cheese	aged Asiago cheese
pickling spice	crab boil
pickling spice	Old Bay seasoning
pineapple	papaya
pineapple	guava
pineapple	mango
pineapple juice	orange juice
pineapple juice	grapefruit juice
pine nuts	walnuts
pine nuts	almonds
pine nuts	pecans
pomegranate juice	cranberry juice
pompano	mahi-mahi
pompano	tuna
poultry seasoning (1 tsp)	3/4 tsp dried thyme + 1/2 tsp crushed or rubbed sage + 1/2 tsp dried marjoram + 1/4 tsp ground black pepper
Provolone cheese	mozzarella cheese
Provolone cheese	Fontina cheese
puff pastry	phyllo dough
puff pastry	pie dough
pumpkin	butternut squash
pumpkin	sweet potato
pumpkin pie spice (1 tsp)	1/2 tsp ground cinnamon + 1/4 tsp ground nutmeg + 1/4 tsp ground ginger + 1/8 tsp groud cloves; 1 tsp apple pie spice
quail	young pheasant
quail	cornish hen
queso fresco	feta cheese (rinsed to remove some salt)
quinoa	couscous
quinoa	bulgur
radicchio	belgian endive
radicchio	arugula
radicchio	watercress
radishes	turnips
radishes	parsnips
raisins	other dried fruits like apricots
raisins	blueberries
raisins	cranberries
raisins	cherries
raspberries	strawberries
raspberries	blackberries
red cabbage	green cabbage
red cabbage	brussels sprouts
red cabbage	napa cabbage
red snapper	striped bass
red snapper	grouper
red snapper	halibut
rhubarb	cranberries
ricotta cheese	puréed cottage cheese
ricotta cheese	fromage blanc
ricotta cheese	mashed firm tofu
romaine lettuce	iceberg lettuce
romaine lettuce	butterhead lettuce
romano cheese	Parmesan cheese
romano cheese	aged Asiago cheese
rosemary	summer savory
rosemary	basil
rosemary	oregano
rum	brandy
rum	bourbon
rutabaga	turnips
rutabaga	broccoli stems
saffron (10-15 threads)	1/2 tsp turmeric + 1/2 tsp mild paprika
sage (1 tbsp)	3 to 4 tsp summer savory thyme
sage (1 tbsp)	basil
sage (1 tbsp)	oregano
sage (1 tbsp)	1 tbsp rosemary
sage (1 tbsp)	1 to 2 tsp poultry seasoning
salami	pepperoni
salami	spanish chorizo
salami	prosciutto
salami	summer sausage
salmon	trout
salmon	striped bass
salmon	tuna
savory (1 tbsp)	2 to 3 tsp chopped thyme or rosemary
savory (1 tbsp)	1 to 1 1/2 tsp thyme + 1 to 1/2 tsp mint
savory (1 tbsp)	1 to 2 tsp sage
savory (1 tbsp)	1 tsp herbes de Provence
scallion (1 bunch)	1 bunch green onions
scallion (1 bunch)	3 to 4 cups chopped leeks
scallops	mussels
scallops	clams
scallops	oysters
scallops	shrimp
scallops	lobster
sesame oil, toasted (1 tsp)	2 tsp crushed and toasted sesame seeds + 1 tsp peanut oil
sesame seeds	white poppy seeds
sesame seeds	black poppy seeds
sesame seeds	finely chopped peanuts
sesame seeds	finely chopped almonds
sesame seeds	finely chopped cashews
shallot (1 chopped)	1/4 cup chopped leeks
shallot (1 chopped)	1/4 cup chopped red onions + 1/2 tsp minced garlic
shallot (1 chopped)	1/4 cup chopped green onions (white and light green parts only)
shallot (1 chopped)	1/4 cup chopped scallions (white and light green parts only)
sherry	sake, port
sherry	dry white wine + pinch of sugar
shrimp	prawns
shrimp	crab
shrimp	lobster
shrimp	scallops
snapper	striped bass
snapper	grouper
snapper	halibut
sole	flounder
sole	cod
sole	whiting
sorghum molasses	light corn syrup
sorghum molasses	dark corn syrup
sorghum molasses	honey
sorghum molasses	pure maple syrup
sour cream	plain yogurt
sour cream	1/3 melted unsalted butter + 3/4 cup milk + 1 tsp lemon juice (for baking)
soy sauce (1 tbsp)	scant 3/4 tsp kosher salt + 1/2 tsp granulated sugar dissolved in 1 tbsp hot water
soy sauce (1 tbsp)	teriyaki sauce
spinach	beet greens
spinach	turnip greens
spinach	kale
spinach	arugula
spinach	watercess
stock, beef (1 cup)	1 cup boiling water + 1 beef bouillon cube
stock, beef (1 cup)	1 cup canned beef broth
stock, beef (1 cup)	1 cup red wine or beer (can replace up to half of beef stock in sauce and stews)
stock, chicken (1 cup)	1 cup boiling water + 1 chicken bouillon cube
stock, chicken (1 cup)	1 cup canned chicken broth
stock, vegetable (1 cup)	1 cup boiling water + 1 vegetable bouillon cube
stock, vegetable (1 cup)	1 cup canned vegetable broth
strawberries	raspberries
strawberries	blueberries
striped bass	grouper
striped bass	red snapper
sugar, confectioner's (1 cup)	1/2 cup +  1 1/2 tbsp granulated sugar + 3/4 tsp cornstarch
sugar, confectioner's (1 cup)	fine ground in blender or food processor
sugar, dark brown (1 packed cup)	1 cup granulated sugar + 2 to 3 tbsp molasses
sugar, light brown (1 packed cup)	1 cup granulated sugar + 1 to 2 tbsp molasses
sugar, light brown (1 packed cup)	1/2 cup dark brown sugar + 1/2 cup granulated sugar
summer sausage	salami or other dry sausage
summer sausage	pepperoni
summer sausage	bologna
sweetened condensed milk (1 14 oz can)	1 cup evaporated milk + 1 1/4 cups granulated sugar
sweetened condensed milk (1 14 oz can)	heated until sugar dissolves
sweet potato	pumpkin
sweet potato	butternut squash
Swiss cheese	Provolone cheese
Swiss cheese	Gruyère cheese
swordfish	tuna
swordfish	mahi-mahi
swordfish	grouper
swordfish	halibut
taco seasoning (1 tbsp)	2 tsp pure chile powder + 1/4 tsp dried oregano + 1/4 tsp ground cumin + 1/8 tsp garlic powder + 1/8 tsp onion powder + pinch of cayenne pepper + salt to taste
tahini (1 cup)	3/4 cup peanut butter + 1/4 cup untoasted sesame oil
tarragon	dill
tequila	vodka
tequila	light rum
teriyaki sauce (1/2 cup)	1/3 cup soy sauce + 3 tbsp rice vinegar + 3 tsp sugar or honey
thyme	marjoram, oregano
thyme	basil
thyme	summer savory
tilapia	red snapper
tilapia	orange roughy
tilapia	sole
tilapia	flounder
tomatoes (1 lb)	1 1/2 cups canned whole tomatoes
tomatoes (1 lb)	3 tbsp tomato paste (to replace cooked tomatoes)
tomato juice (1 cup)	1/2 cup tomato purée or tomato sauce + 1/2 cup water
tomato juice (1 cup)	1/4 cup tomato paste + 3/4 cup water
tomato paste (1 tbsp)	2 to 3 tbsp tomato purée (boil until reduced to 1 tbsp)
tomato paste (1 tbsp)	tomato sauce (boil until reduced to 1 tbsp)
tomato purée (1 cup)	1/3 cup tomato paste + 2/3 cup water
tomato purée (1 cup)	tomato sauce
tomato sauce (1 cup)	1/2 cup tomato paste + 1/2 cup water
tomato sauce (1 cup)	1 cup canned stewed tomatoes
tomato sauce (1 cup)	blended until smooth
trout	salmon
trout	ocean perch
tuna	swordfish
tuna	mahi-mahi
tuna	striped bass
tuna	salmon
turmeric (1/4 to 1/2 tsp)	1/4 to 1/2 tsp ground ginger + 1 to 2 tsp minced fresh ginger
turmeric (1/4 to 1/2 tsp)	5 to 7 saffron threads
turmeric (1/4 to 1/2 tsp)	1/2 tsp curry powder
turnips 	parsnips
turnips 	rutabaga
turnips 	broccoli stems
turnip greens	mustard greens
turnip greens	collards
turnip greens	kale
turnip greens	mature spinach
vanilla bean (1 8-inch pod)	2 to 3 tsp vanilla extract
vegetable shortening (1 cup)	1 cup + 2 tbsp unsalted butter (baking)
vegetable shortening (1 cup)	1 cup bacon fat (sautéing and frying)
vermouth	dry sherry, dry white wine
vinegar	lemon juice or lime juice (for dressings, marinades, sauces, and deglazing pans)
vodka	gin, white rum, tequila
walnuts	pine nuts
walnuts	pecans
walnuts	almonds
wasabi (1 tbsp)	1 tbsp well-drained prepared horseradish
wasabi (1 tbsp)	1 tbsp mustard powder + 1 tsp water (mix, cover, and let rest for 15 minutes)
watermelon	honeydew melon
whipped cream (1 cup)	12 oz can evaporated milk, chilled overnight, mixed with 1 tbsp lemon juice, whipped until stiff, beat in 1 tsp vanilla extract and 1/4 cup confectioner's sugar
whiskey	cognac
whiskey	brandy
whiskey	rum
whitefish	perch
whitefish	lake trout
whiting	cod
whiting	flounder
whiting	ocean perch
whiting	red snapper
wine, red (1 cup)	3/4 cup red grape juice + 2 tbsp red wine vinegar or lemon juice + 2 tbsp water (for marinades)
wine, red (1 cup)	beef stock (for sauces and stews)
wine, white (1 cup)	3/4 cup white grape juice
wine, white (1 cup)	apple juice
wine, white (1 cup)	apple cider + 1/4 cup white wine vinegar or lemon juice (for marinades)
wine, white (1 cup)	sherry
wine, white (1 cup)	vermouth
wine, white (1 cup)	sake
wine, white (1 cup)	chicken stock
wine, white (1 cup)	vegetable stock (for sauce and stews)
worcestershire sauce (1 tbsp)	2 tsp soy sauce + 4 drops hot pepper sauce + 1/4 lemon juice + 1/4 tsp granulated sugar
yellow squash	zucchini
yellow squash	pattypan squash
yogurt	sour cream
yogurt	crème fraîche
yogurt	silken tofu (blended)
yogurt	mayonnaise
zucchini	yellow squash
zucchini	pattypan squash
\.


--
-- Data for Name: ingredientsub; Type: TABLE DATA; Schema: public; Owner: ctp_user
--

COPY public.ingredientsub (id, ingr_id, sub_id) FROM stdin;
\.


--
-- Name: ingredientinfo ingredientinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: ctp_user
--

ALTER TABLE ONLY public.ingredientinfo
    ADD CONSTRAINT ingredientinfo_pkey PRIMARY KEY (id);


--
-- Name: ingredientsub ingredientsub_pkey; Type: CONSTRAINT; Schema: public; Owner: ctp_user
--

ALTER TABLE ONLY public.ingredientsub
    ADD CONSTRAINT ingredientsub_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
