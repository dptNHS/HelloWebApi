﻿create database HelloWebApi
go
use HelloWebApi
go
create table TimesheetDays(Id int identity primary key,
Name nvarchar(50), Hours float)
go
insert into TimesheetDays(Name, Hours)
values
('Emma',9.8),
('Olivia',2.6),
('Ava',0.6),
('Isabella',6.2),
('Sophia',14.5),
('Mia',11.4),
('Charlotte',9.2),
('Amelia',11.1),
('Evelyn',14.3),
('Abigail',8.7),
('Harper',3.1),
('Emily',1.1),
('Elizabeth',14.1),
('Avery',9.5),
('Sofia',9.8),
('Ella',2.3),
('Madison',4.8),
('Scarlett',3),
('Victoria',1.1),
('Aria',5.4),
('Grace',9.1),
('Chloe',12.5),
('Camila',14.8),
('Penelope',6.1),
('Riley',6.2),
('Layla',12.7),
('Lillian',14.2),
('Nora',9.7),
('Zoey',13.9),
('Mila',5.7),
('Aubrey',7.4),
('Hannah',9.6),
('Lily',2.8),
('Addison',6),
('Eleanor',1.5),
('Natalie',6.7),
('Luna',13.1),
('Savannah',13.7),
('Brooklyn',2.2),
('Leah',0.4),
('Zoe',3.7),
('Stella',10.6),
('Hazel',9),
('Ellie',4.9),
('Paisley',12.2),
('Audrey',6.8),
('Skylar',1.4),
('Violet',13.2),
('Claire',5.9),
('Bella',1.6),
('Aurora',14.3),
('Lucy',5.7),
('Anna',13.7),
('Samantha',2.1),
('Caroline',8.6),
('Genesis',4.4),
('Aaliyah',8.3),
('Wally',0.9),
('Kennedy',0.3),
('Kinsley',8.2),
('Allison',12.3),
('Maya',8.6),
('Sarah',14.1),
('Madelyn',1.1),
('Adeline',0.2),
('Alexa',4.8),
('Ariana',13.2),
('Elena',4),
('Gabriella',0.9),
('Naomi',6.8),
('Alice',2.7),
('Sadie',9.5),
('Hailey',10.3),
('Eva',6.2),
('Emilia',7.1),
('Autumn',10.4),
('Quinn',14.2),
('Nevaeh',8.2),
('Piper',14.9),
('Ruby',9.8),
('Serenity',3.8),
('Willow',9.4),
('Everly',14),
('Cora',2),
('Kaylee',0.3),
('Lydia',8.8),
('Aubree',0.2),
('Arianna',6.2),
('Eliana',5.3),
('Peyton',6.5),
('Melanie',5.7),
('Gianna',11.6),
('Isabelle',9.2),
('Julia',14),
('Valentina',7.5),
('Nova',11.4),
('Clara',8.4),
('Vivian',3.9),
('Reagan',0.1),
('Mackenzie',5.1),
('Madeline',8.9),
('Brielle',10.9),
('Delilah',10.7),
('Isla',3.7),
('Rylee',3.2),
('Katherine',3.8),
('Sophie',4.6),
('Josephine',13.4),
('Ivy',10.6),
('Liliana',4.4),
('Jade',4),
('Maria',5),
('Taylor',7.5),
('Hadley',0.3),
('Kylie',8.3),
('Emery',0),
('Adalynn',14.2),
('Natalia',12.3),
('Annabelle',10),
('Faith',8.2),
('Alexandra',9.9),
('Ximena',9.5),
('Ashley',5.8),
('Brianna',9.9),
('Raelynn',7.6),
('Bailey',5.2),
('Mary',2.8),
('Athena',10.9),
('Andrea',7.4),
('Leilani',13.3),
('Jasmine',14.4),
('Lyla',7.3),
('Margaret',6.5),
('Alyssa',3.6),
('Adalyn',14),
('Arya',5.9),
('Norah',2.3),
('Khloe',4.6),
('Kayla',0.1),
('Eden',5.6),
('Eliza',14.5),
('Rose',9),
('Ariel',5.2),
('Melody',14.8),
('Alexis',4.4),
('Isabel',14.2),
('Sydney',12.6),
('Juliana',14.9),
('Lauren',5.3),
('Iris',13.2),
('Emerson',0.1),
('London',14.3),
('Morgan',2.3),
('Lilly',13.4),
('Charlie',2.6),
('Aliyah',2),
('Valeria',3.8),
('Arabella',6.4),
('Sara',9.9),
('Finley',3.8),
('Trinity',6.2),
('Ryleigh',11.5),
('Jordyn',9.4),
('Jocelyn',8.7),
('Kimberly',6.9),
('Esther',9.2),
('Molly',3),
('Valerie',11.8),
('Cecilia',12.5),
('Anastasia',7.6),
('Daisy',8.3),
('Reese',0),
('Laila',10.5),
('Mya',10.5),
('Amy',3.9),
('Teagan',6.6),
('Amaya',5.1),
('Elise',8.2),
('Harmony',1),
('Paige',8.9),
('Adaline',5.3),
('Fiona',6),
('Alaina',1.5),
('Nicole',8.4),
('Genevieve',12.5),
('Lucia',4.9),
('Alina',14.9),
('Mckenzie',10),
('Callie',7.6),
('Payton',9.2),
('Eloise',4.7),
('Brooke',12.6),
('Londyn',1),
('Mariah',4.6),
('Julianna',14.1),
('Rachel',5.5),
('Daniela',14.1),
('Gracie',14),
('Catherine',0.4),
('Angelina',10.7),
('Presley',1.1),
('Related Post',2.6),
('Josie',10.8),
('Harley',9.2),
('Adelyn',12.3),
('Vanessa',2.3),
('Makayla',1.4),
('Parker',4.4),
('Juliette',8.4),
('Amara',12.3),
('Marley',5.2),
('Lila',12),
('Ana',10.6),
('Rowan',10.8),
('Alana',2.6),
('Michelle',4.2),
('Malia',13.1),
('Rebecca',4),
('Brooklynn',14.3),
('Brynlee',11.1),
('Summer',13.1),
('Sloane',10.6),
('Leila',0.3),
('Sienna',0.8),
('Adriana',3.1),
('Sawyer',0.3),
('Kendall',13.2),
('Juliet',5.5),
('Destiny',8.6),
('Alayna',3.2),
('Elliana',5.6),
('Diana',12.2),
('Hayden',6.5),
('Ayla',13.9),
('Dakota',0),
('Angela',14.3),
('Noelle',1.1),
('Rosalie',12.1),
('Joanna',1.9),
('Jayla',4.4),
('Alivia',0.1),
('Lola',2),
('Emersyn',11.4),
('Georgia',3.1),
('Selena',6.2),
('June',6.1),
('Daleyza',5.7),
('Tessa',6.1),
('Maggie',3.6),
('Jessica',8.1),
('Remi',7.4),
('Delaney',3.2),
('Camille',5.8),
('Vivienne',7.2),
('Hope',13.4),
('Mckenna',1.1),
('Gemma',5.9),
('Olive',6.3),
('Alexandria',14.7),
('Blakely',0.6),
('Izabella',9.1),
('Catalina',4.5),
('Raegan',11.3),
('Journee',5.3),
('Gabrielle',9.7),
('Lucille',2.9),
('Ruth',3.3),
('Amiyah',13),
('Evangeline',7.7),
('Blake',13.5),
('Thea',13.1),
('Amina',10),
('Giselle',14.2),
('Lilah',13.5),
('Melissa',9.8),
('River',6.8),
('Kate',8.8),
('Adelaide',7.5),
('Charlee',3.4),
('Vera',2.2),
('Leia',10.5),
('Gabriela',14.7),
('Zara',14.9),
('Jane',4.5),
('Journey',11.4),
('Elaina',11),
('Miriam',3.8),
('Briella',10.7),
('Stephanie',3.3),
('Cali',14.5),
('Ember',11),
('Lilliana',11.3),
('Aniyah',6.1),
('Logan',0),
('Kamila',4.8),
('Brynn',5.9),
('Ariella',10.9),
('Makenzie',0),
('Annie',13.2),
('Mariana',1.7),
('Kali',2.5),
('Haven',5.2),
('Elsie',8.9),
('Nyla',7.3),
('Paris',1.1),
('Lena',13.4),
('Freya',1.4),
('Adelynn',2.5),
('Lyric',2.3),
('Camilla',1.1),
('Sage',4.8),
('Jennifer',0.4),
('Paislee',10.6),
('Talia',2.2),
('Alessandra',6.5),
('Juniper',8.8),
('Fatima',0.6),
('Raelyn',12),
('Amira',4),
('Arielle',11.7),
('Phoebe',4.2),
('Kinley',8),
('Ada',0.4),
('Nina',3.4),
('Ariah',10.2),
('Samara',9.2),
('Myla',12),
('Brinley',9.4),
('Cassidy',5.8),
('Maci',9.8),
('Aspen',6.9),
('Allie',11.7),
('Keira',6.6),
('Kaia',12),
('Makenna',4.4),
('Amanda',1.4),
('Heaven',5.8),
('Joy',14.3),
('Lia',5.4),
('Madilyn',11.8),
('Gracelyn',1.6),
('Laura',0.3),
('Evelynn',0),
('Lexi',11.7),
('Haley',12.9),
('Miranda',13.6),
('Kaitlyn',10.2),
('Daniella',8.9),
('Felicity',7.4),
('Jacqueline',7.6),
('Evie',11.1),
('Angel',12.2),
('Danielle',1.7),
('Ainsley',9),
('Dylan',4.1),
('Kiara',3.1),
('Millie',14.2),
('Jordan',7.5),
('Maddison',6.9),
('Rylie',0),
('Alicia',2.9),
('Maeve',7.5),
('Margot',12.4),
('Kylee',11.9),
('Phoenix',5.9),
('Heidi',7.9),
('Zuri',5),
('Alondra',5.2),
('Lana',6.9),
('Madeleine',10.6),
('Gracelynn',11.2),
('Kenzie',14.6),
('Miracle',5.5),
('Shelby',10.2),
('Elle',2.1),
('Adrianna',6.8),
('Bianca',9.9),
('Addilyn',5.1),
('Kira',14.2),
('Veronica',4.9),
('Gwendolyn',1.4),
('Esmeralda',10.6),
('Chelsea',10.6),
('Alison',2.1),
('Skyler',11.1),
('Magnolia',7.9),
('Daphne',1.5),
('Jenna',4.4),
('Everleigh',2.4),
('Kyla',6.1),
('Braelynn',3.2),
('Harlow',1.9),
('Annalise',3.3),
('Mikayla',4.9),
('Dahlia',0.3),
('Maliyah',6),
('Averie',8.3),
('Scarlet',10.3),
('Kayleigh',4.3),
('Luciana',11.7),
('Kelsey',12.9),
('Nadia',14.5),
('Amber',10.8),
('Gia',6),
('Kamryn',10.9),
('Yaretzi',4.1),
('Carmen',0.9),
('Jimena',9.2),
('Erin',8.8),
('Christina',3.7),
('Katie',8.1),
('Ryan',5.5),
('Viviana',5.3),
('Alexia',3.7),
('Anaya',2),
('Serena',13.4),
('Katelyn',6.2),
('Ophelia',8.8),
('Regina',6.7),
('Helen',2),
('Remington',8.4),
('Camryn',4.6),
('Cadence',4.6),
('Royalty',3.2),
('Amari',12.5),
('Kathryn',8.1),
('Skye',1.9),
('Emely',10.1),
('Jada',2.5),
('Ariyah',5.7),
('Aylin',6.9),
('Saylor',5.9),
('Kendra',10.7),
('Cheyenne',14.2),
('Fernanda',10.8),
('Sabrina',12.4),
('Francesca',0.3),
('Eve',13.7),
('Mckinley',14.5),
('Frances',8.3),
('Sarai',7.4),
('Carolina',14),
('Kennedi',3.6),
('Nylah',5.6),
('Tatum',11.9),
('Alani',9.2),
('Lennon',4),
('Raven',4.9),
('Zariah',14.4),
('Leslie',1.4),
('Winter',6.9),
('Abby',0.6),
('Mabel',13.4),
('Sierra',11.3),
('April',6.3),
('Willa',5),
('Carly',9.2),
('Jolene',1.8),
('Rosemary',4.2),
('Aviana',5.9),
('Madelynn',13.1),
('Selah',4.5),
('Renata',0.3),
('Lorelei',13.6),
('Briana',4.1),
('Celeste',7.2),
('Wren',1.6),
('Charleigh',10.3),
('Leighton',5.5),
('Annabella',8.7),
('Jayleen',1.3),
('Braelyn',8.3),
('Ashlyn',9.2),
('Jazlyn',9),
('Mira',9.5),
('Oakley',11.9),
('Malaysia',12.2),
('Edith',0.2),
('Avianna',9.5),
('Maryam',5.9),
('Emmalyn',1.7),
('Hattie',1.4),
('Kensley',6),
('Macie',5.7),
('Bristol',11.2),
('Marlee',12.5),
('Demi',12.6),
('Cataleya',5.2),
('Maia',2.9),
('Sylvia',5.7),
('Itzel',8.4),
('Allyson',1.4),
('Lilith',1.5),
('Melany',3.1),
('Kaydence',6.4),
('Holly',3.1),
('Nayeli',12.8),
('Meredith',5.8),
('Nia',12.6),
('Liana',14),
('Megan',10.8),
('Justice',0.7),
('Bethany',2.9),
('Alejandra',6.4),
('Janelle',3.9),
('Elisa',6.4),
('Adelina',14.6),
('Ashlynn',13),
('Elianna',4.5),
('Aleah',13.4),
('Myra',13.6),
('Lainey',5),
('Blair',13),
('Kassidy',11.8),
('Charley',10),
('Virginia',9.7),
('Kara',10.3),
('Helena',4.6),
('Sasha',12.7),
('Julie',13.9),
('Michaela',3.9),
('Carter',1.1),
('Matilda',4.3),
('Kehlani',4.5),
('Henley',7.5),
('Maisie',10),
('Hallie',13.5),
('Jazmin',0.2),
('Priscilla',6.8),
('Marilyn',8.8),
('Cecelia',13.9),
('Danna',7.4),
('Colette',14.3),
('Baylee',5.4),
('Elliott',11.9),
('Ivanna',2.8),
('Cameron',9.3),
('Celine',3.5),
('Alayah',14.8),
('Hanna',9.8),
('Imani',9.9),
('Angelica',11.6),
('Emelia',6.3),
('Kalani',1.2),
('Alanna',14.9),
('Lorelai',4),
('Macy',7.6),
('Karina',1.5),
('Addyson',1.2),
('Aleena',6.3),
('Aisha',14.5),
('Johanna',14.3),
('Mallory',1.3),
('Leona',6.9),
('Mariam',3.4),
('Kynlee',2.4),
('Madilynn',10.4),
('Karen',12.7),
('Karla',4.7),
('Skyla',4),
('Beatrice',4.6),
('Dayana',4.8),
('Gloria',13.9),
('Milani',13),
('Savanna',1.6),
('Karsyn',10.7),
('Rory',1.4),
('Giuliana',1.9),
('Lauryn',5.1),
('Liberty',9.8),
('Galilea',6.1),
('Aubrie',4.9),
('Charli',2.8),
('Kyleigh',1.2),
('Brylee',9.7),
('Jillian',5.4),
('Anne',2.3),
('Haylee',7.4),
('Dallas',11.1),
('Azalea',8.3),
('Jayda',14.2),
('Tiffany',0.3),
('Avah',1.3),
('Shiloh',8.4),
('Bailee',14.5),
('Jazmine',2.2),
('Esme',3.4),
('Coraline',4.4),
('Madisyn',5.5),
('Elaine',2.6),
('Lilian',5.6),
('Kyra',13.9),
('Kaliyah',0.9),
('Kora',8),
('Octavia',2.6),
('Irene',13),
('Kelly',13.4),
('Lacey',3.2),
('Laurel',0.4),
('Adley',1.4),
('Anika',2.2),
('Janiyah',10.3),
('Dorothy',2.2),
('Sutton',6.9),
('Julieta',11.2),
('Kimber',9.1),
('Remy',13.5),
('Cassandra',13.7),
('Rebekah',6.2),
('Collins',8),
('Elliot',2),
('Emmy',9.2),
('Sloan',8),
('Hayley',11),
('Amalia',4.2),
('Jemma',12.3),
('Jamie',12.9),
('Melina',10.3),
('Leyla',11.4),
('Jaylah',9.6),
('Anahi',11.4),
('Jaliyah',5.8),
('Kailani',12.1),
('Harlee',5.6),
('Wynter',13.9),
('Saige',3.4),
('Alessia',0.4),
('Monica',13.9),
('Anya',5.3),
('Antonella',7),
('Emberly',14),
('Khaleesi',10.7),
('Ivory',2.1),
('Greta',7.7),
('Maren',4.8),
('Alena',0.4),
('Emory',9.8),
('Alaia',1.5),
('Cynthia',10.9),
('Addisyn',9.1),
('Alia',1.8),
('Lylah',13),
('Angie',4.7),
('Ariya',14),
('Alma',5.1),
('Crystal',0.4),
('Jayde',14.9),
('Aileen',12.4),
('Kinslee',11.8),
('Siena',8.6),
('Zelda',5.1),
('Katalina',14.6),
('Marie',8.1),
('Pearl',11.1),
('Reyna',1.3),
('Mae',5.4),
('Zahra',4),
('Kailey',0.4),
('Jessie',9.8),
('Tiana',12.4),
('Amirah',13.8),
('Madalyn',6),
('Alaya',12.2),
('Lilyana',13.6),
('Julissa',8.2),
('Armani',10.2),
('Lennox',12.5),
('Lillie',13.5),
('Jolie',3.3),
('Laney',7.8),
('Roselyn',3.4),
('Mara',10.3),
('Joelle',13.9),
('Rosa',11.6),
('Kaylani',5),
('Bridget',9.5),
('Liv',12.2),
('Oaklyn',7.4),
('Aurelia',6.1),
('Clarissa',8.8),
('Elyse',3.5),
('Marissa',9.6),
('Monroe',4.2),
('Kori',13.7),
('Elsa',3),
('Rosie',10.8),
('Amelie',11.3),
('Aitana',4.5),
('Aliza',11.9),
('Eileen',8.9),
('Poppy',6.6),
('Emmie',5.3),
('Braylee',12),
('Milana',5.2),
('Addilynn',14.7),
('Royal',7.4),
('Chaya',0.5),
('Frida',9.3),
('Bonnie',9.7),
('Amora',0.2),
('Stevie',3.1),
('Tatiana',10.9),
('Malaya',11.1),
('Mina',6.6),
('Emerie',0.9),
('Reign',12.6),
('Zaylee',10.5),
('Annika',1.8),
('Kenia',1.5),
('Linda',3.9),
('Kenna',4.4),
('Faye',6.2),
('Reina',12.3),
('Brittany',5.9),
('Marina',5.5),
('Astrid',9.1),
('Kadence',11.3),
('Mikaela',12.1),
('Jaelyn',2.4),
('Briar',14.5),
('Kaylie',4.5),
('Teresa',1.7),
('Bria',2.9),
('Hadassah',8.1),
('Lilianna',10.2),
('Guadalupe',2),
('Rayna',12.6),
('Chanel',11.2),
('Lyra',3.3),
('Noa',5.2),
('Zariyah',1.3),
('Laylah',1.7),
('Aubrielle',6.4),
('Aniya',14.3),
('Livia',8.8),
('Ellen',9.3),
('Meadow',8.6),
('Amiya',13.4),
('Ellis',5.9),
('Elora',5.1),
('Milan',6.2),
('Hunter',3.2),
('Princess',12.2),
('Leanna',10.7),
('Nathalie',12.8),
('Clementine',14.3),
('Nola',4.3),
('Tenley',7.1),
('Simone',6.6),
('Lina',1.2),
('Marianna',14.9),
('Martha',12.9),
('Sariah',13.2),
('Louisa',10.9),
('Noemi',12.8),
('Emmeline',14.9),
('Kenley',13.9),
('Belen',8.2),
('Erika',14.2),
('Myah',0.4),
('Lara',6.1),
('Amani',12.5),
('Ansley',11.9),
('Everlee',14.4),
('Maleah',8.2),
('Salma',13.1),
('Jaelynn',13.8),
('Kiera',14.9),
('Dulce',2.4),
('Nala',5),
('Natasha',1.1),
('Averi',7.2),
('Mercy',3.6),
('Penny',4.9),
('Ariadne',12.3),
('Deborah',11),
('Elisabeth',12),
('Zaria',12.4),
('Hana',12),
('Kairi',7.8),
('Yareli',11.3),
('Raina',11.3),
('Ryann',6.6),
('Lexie',3.6),
('Thalia',0.3),
('Karter',8.5),
('Annabel',10.7),
('Christine',3.2),
('Estella',7.4),
('Keyla',10.8),
('Adele',3.4),
('Aya',9),
('Estelle',0),
('Landry',5.9),
('Tori',12.2),
('Perla',1.6),
('Lailah',12.7),
('Miah',3.9),
('Rylan',2.5),
('Angelique',6.2),
('Avalynn',4.4),
('Romina',1.9),
('Ari',11.7),
('Jaycee',9.8),
('Jaylene',13.3),
('Kai',4.6),
('Louise',10.1),
('Mavis',7.6),
('Scarlette',11),
('Belle',5.1),
('Lea',9.6),
('Nalani',0.2),
('Rivka',2.4),
('Ayleen',5.6),
('Calliope',9.7),
('Dalary',12),
('Zaniyah',0.8),
('Kaelyn',12.7),
('Sky',11.9),
('Jewel',14.4),
('Joselyn',11.4),
('Madalynn',9.7),
('Paola',0.7),
('Giovanna',1.7),
('Isabela',3.7),
('Karlee',14.8),
('Aubriella',8.7),
('Azariah',13.8),
('Tinley',0.2),
('Dream',10.6),
('Claudia',13.6),
('Corinne',1.7),
('Erica',10.2),
('Milena',9.4),
('Aliana',11.9),
('Kallie',8),
('Alyson',8.8),
('Joyce',4.5),
('Tinsley',10.3),
('Whitney',9.2),
('Emilee',10.4),
('Paisleigh',4.9),
('Carolyn',9.3),
('Jaylee',6.7),
('Zoie',4.5),
('Frankie',2),
('Andi',8.9),
('Judith',3.2),
('Paula',7.5),
('Xiomara',3.2),
('Aiyana',12.6),
('Amia',9.6),
('Analia',4.3),
('Audrina',1.1),
('Hadlee',3),
('Rayne',11.6),
('Amayah',8.4),
('Cara',12.8),
('Celia',4.2),
('Lyanna',12.3),
('Opal',2.6),
('Amaris',4),
('Clare',4.7),
('Gwen',2),
('Giana',7.9),
('Veda',10.9),
('Alisha',7.3),
('Davina',11.2),
('Rhea',5.8),
('Sariyah',5.3),
('Noor',3.4),
('Danica',2.5),
('Kathleen',9.3),
('Lillianna',9.9),
('Lindsey',12),
('Maxine',8.4),
('Paulina',9.4),
('Hailee',9.5),
('Harleigh',5.5),
('Nancy',0.2),
('Jessa',9.8),
('Raquel',9),
('Raylee',8.8),
('Zainab',5.2),
('Chana',9.9),
('Lisa',6.5),
('Heavenly',10.4),
('Oaklynn',7.9),
('Aminah',12.7),
('Emmalynn',5.6),
('Patricia',2.8),
('India',13.1),
('Janessa',4.7),
('Paloma',5.9),
('Ramona',7.5),
('Sandra',12.6),
('Abril',1.5),
('Emmaline',7.2),
('Itzayana',14.1),
('Kassandra',3.4),
('Vienna',0.8),
('Marleigh',14.5),
('Kailyn',10.1),
('Novalee',3.9),
('Rosalyn',13.5),
('Hadleigh',10.9),
('Luella',3.7),
('Taliyah',11.6),
('Avalyn',8.4),
('Barbara',4.9),
('Iliana',2.8),
('Jana',0.9),
('Meilani',6.4),
('Aadhya',14.2),
('Alannah',0),
('Blaire',9.6),
('Brenda',2.9),
('Casey',10.7),
('Selene',7.9),
('Lizbeth',8.9),
('Adrienne',0.2),
('Annalee',9.3),
('Malani',11.4),
('Aliya',6.9),
('Miley',13.7),
('Nataly',12),
('Bexley',9.6),
('Joslyn',8),
('Maliah',3.1),
('Zion',11.2),
('Breanna',2.7),
('Melania',7.4),
('Estrella',12.5),
('Ingrid',3.2),
('Jayden',11.6),
('Kaya',10.1)

insert into TimesheetDays(Name, Hours)
values
('Kaylin',9.1),
('Harmoni',10.7),
('Arely',4.3),
('Jazlynn',13),
('Kiana',8.1),
('Dana',1.9),
('Mylah',8.7),
('Oaklee',11.3),
('Ailani',12.3),
('Kailee',6.9),
('Legacy',4.7),
('Marjorie',10.3),
('Paityn',2.7),
('Courtney',9.9),
('Ellianna',0.5),
('Jurnee',13.1),
('Karlie',4.4),
('Evalyn',10.7),
('Holland',0.7),
('Kenya',13),
('Magdalena',12.1),
('Carla',2.2),
('Halle',7.5),
('Aryanna',10.3),
('Kaiya',10.2),
('Kimora',9.3),
('Naya',4.5),
('Saoirse',11.6),
('Susan',12),
('Desiree',4.4),
('Ensley',2),
('Renee',10.7),
('Esperanza',1.4),
('Treasure',10.3),
('Caylee',7.1),
('Ellison',0.5),
('Kristina',12.8),
('Adilynn',10.7),
('Anabelle',0.2),
('Egypt',11.3),
('Spencer',12.9),
('Tegan',6.4),
('Aranza',14.5),
('Vada',12),
('Emerald',1.4),
('Florence',2.4),
('Marlowe',4),
('Micah',3.6),
('Sonia',5.5),
('Sunny',13.2),
('Tara',6),
('Riya',7.9),
('Yara',9.8),
('Alisa',2.8),
('Nathalia',11.2),
('Yamileth',3.4),
('Saanvi',12.1),
('Samira',9.8),
('Sylvie',4.4),
('Brenna',3.5),
('Carlee',4.4),
('Jenny',12.3),
('Miya',3.8),
('Monserrat',5.7),
('Zendaya',9.3),
('Alora',3),
('Liam',3.6),
('Noah',6.5),
('William',8.4),
('James',2.1),
('Logan',8.9),
('Benjamin',8.5),
('Mason',11.4),
('Elijah',5.7),
('Oliver',11),
('Jacob',1.4),
('Lucas',9.3),
('Michael',12.9),
('Alexander',4.1),
('Ethan',14.7),
('Daniel',0),
('Matthew',14.4),
('Aiden',0.3),
('Henry',10.9),
('Joseph',5.5),
('Jackson',8.3),
('Samuel',5.9),
('Sebastian',10.2),
('David',7.5),
('Carter',9.1),
('Wyatt',9.4),
('Jayden',11.9),
('John',8.5),
('Owen',9.6),
('Dylan',11.6),
('Luke',12.7),
('Gabriel',14.5),
('Anthony',0.3),
('Isaac',8.3),
('Grayson',10.3),
('Jack',11.7),
('Julian',10.1),
('Levi',2.1),
('Christopher',3.8),
('Joshua',4.4),
('Andrew',2.2),
('Lincoln',2.7),
('Mateo',4.9),
('Ryan',14.4),
('Jaxon',11.5),
('Nathan',8.7),
('Aaron',11.4),
('Isaiah',3.1),
('Thomas',13.5),
('Charles',2.1),
('Caleb',6.4),
('Josiah',2.3),
('Christian',8.4),
('Hunter',8.6),
('Eli',1.9),
('Jonathan',7.7),
('Connor',11.5),
('Landon',8.7),
('Adrian',3.2),
('Asher',12.2),
('Cameron',14.7),
('Leo',13.3),
('Theodore',3.4),
('Jeremiah',9.6),
('Hudson',10.2),
('Robert',12.2),
('Easton',9.4),
('Nolan',14.1),
('Nicholas',6.4),
('Ezra',8.6),
('Colton',4.7),
('Angel',3.3),
('Brayden',6.3),
('Jordan',13.9),
('Dominic',2.9),
('Austin',1.6),
('Ian',4.5),
('Adam',13.1),
('Elias',6.3),
('Jaxson',9.1),
('Greyson',7.8),
('Jose',8.8),
('Ezekiel',8.5),
('Carson',14.2),
('Evan',6.3),
('Maverick',8.7),
('Bryson',4.9),
('Jace',4.8),
('Cooper',5.9),
('Xavier',10.8),
('Parker',11.4),
('Roman',4),
('Jason',14),
('Santiago',0.6),
('Chase',8.4),
('Sawyer',9.8),
('Gavin',2.3),
('Leonardo',11.7),
('Kayden',4.3),
('Ayden',0.1),
('Jameson',0.5),
('Kevin',5.6),
('Bentley',6.7),
('Zachary',4.8),
('Everett',0),
('Axel',11.7),
('Tyler',7.9),
('Micah',6.5),
('Vincent',12.5),
('Weston',5),
('Miles',8.6),
('Wesley',4),
('Nathaniel',10.9),
('Harrison',8.2),
('Brandon',2.5),
('Cole',4.2),
('Declan',7.9),
('Luis',10.4),
('Braxton',6.6),
('Damian',0.8),
('Silas',7.5),
('Tristan',1.9),
('Ryder',9.4),
('Bennett',0.1),
('George',12.4),
('Emmett',8.7),
('Justin',2.9),
('Kai',6.7),
('Max',7.1),
('Diego',11.1),
('Luca',13.9),
('Ryker',9.1),
('Carlos',10.9),
('Maxwell',7.2),
('Kingston',14.8),
('Ivan',14.9),
('Maddox',8.4),
('Juan',9.2),
('Ashton',12.5),
('Jayce',5.3),
('Rowan',10.3),
('Kaiden',4.4),
('Giovanni',11.5),
('Eric',5.2),
('Jesus',12.5),
('Calvin',1),
('Abel',2.3),
('King',5),
('Camden',10.7),
('Amir',14),
('Blake',8.2),
('Alex',6.2),
('Brody',4),
('Malachi',13.9),
('Emmanuel',3.3),
('Jonah',10.6),
('Beau',8.7),
('Jude',8.9),
('Antonio',8),
('Alan',0.5),
('Elliott',4),
('Elliot',14.6),
('Waylon',1.1),
('Xander',7.9),
('Timothy',10.5),
('Victor',12.8),
('Bryce',7.8),
('Finn',3.8),
('Brantley',13.3),
('Edward',12.7),
('Abraham',3.4),
('Patrick',11.4),
('Grant',8.8),
('Karter',6.8),
('Hayden',13.9),
('Richard',9.7),
('Miguel',9.8),
('Joel',13.5),
('Gael',11.4),
('Tucker',1.7),
('Rhett',6.2),
('Avery',0.7),
('Steven',11.4),
('Graham',4.5),
('Kaleb',8.6),
('Jasper',7.8),
('Jesse',9.8),
('Matteo',12.6),
('Dean',8.2),
('Zayden',7.4),
('Preston',14.7),
('August',7.6),
('Oscar',14.9),
('Jeremy',0.4),
('Alejandro',0.6),
('Marcus',3.4),
('Dawson',1.7),
('Lorenzo',12.7),
('Messiah',13.1),
('Zion',10),
('Maximus',13.6),
('River',6.3),
('Zane',11.5),
('Mark',7.9),
('Brooks',7.1),
('Nicolas',10.6),
('Paxton',7.2),
('Judah',4.6),
('Emiliano',0.5),
('Kaden',8.2),
('Bryan',7.6),
('Kyle',2.5),
('Myles',0.1),
('Peter',8.2),
('Charlie',8.8),
('Kyrie',8.6),
('Thiago',5.3),
('Brian',4.2),
('Kenneth',11.4),
('Andres',8.2),
('Lukas',11.9),
('Aidan',8.7),
('Jax',5.7),
('Caden',12.9),
('Milo',3.7),
('Paul',14.8),
('Beckett',0.6),
('Brady',2.9),
('Colin',9.1),
('Omar',8.7),
('Bradley',14.3),
('Javier',5.7),
('Knox',3.5),
('Jaden',11.7),
('Barrett',5.2),
('Israel',2.5),
('Matias',12.3),
('Jorge',7.5),
('Zander',1.5),
('Derek',14.5),
('Josue',13.7),
('Cayden',1),
('Holden',6.1),
('Griffin',2),
('Arthur',5.3),
('Leon',7.6),
('Felix',4),
('Remington',9.4),
('Jake',14.6),
('Killian',7.8),
('Clayton',9.2),
('Sean',0.9),
('Adriel',7.6),
('Riley',9.9),
('Archer',14.8),
('Legend',9.6),
('Erick',13.3),
('Enzo',3.5),
('Corbin',14.7),
('Francisco',12),
('Dallas',5.3),
('Emilio',11.8),
('Gunner',3.8),
('Simon',11.9),
('Andre',7.5),
('Walter',0.6),
('Damien',9.9),
('Chance',11.2),
('Phoenix',9.5),
('Colt',1.3),
('Tanner',7.6),
('Stephen',12.9),
('Kameron',6.9),
('Tobias',12.2),
('Manuel',11.9),
('Amari',6.7),
('Emerson',13.4),
('Louis',10.9),
('Cody',9),
('Finley',4),
('Iker',0),
('Martin',10.6),
('Rafael',4.4),
('Nash',7.4),
('Beckham',3.4),
('Cash',2.1),
('Karson',14.8),
('Rylan',8.2),
('Reid',0.7),
('Theo',5.6),
('Ace',3.4),
('Eduardo',8),
('Spencer',2.6),
('Raymond',8),
('Maximiliano',11.7),
('Anderson',0.9),
('Ronan',11.1),
('Lane',7.5),
('Cristian',14.3),
('Titus',2.9),
('Travis',7.8),
('Jett',9.8),
('Ricardo',2.1),
('Bodhi',7.3),
('Gideon',6.1),
('Jaiden',5),
('Fernando',2),
('Mario',7),
('Conor',8.2),
('Keegan',1.5),
('Ali',4.1),
('Cesar',14.4),
('Ellis',4.7),
('Jayceon',2.1),
('Walker',13.4),
('Cohen',2.4),
('Arlo',2.6),
('Hector',4.8),
('Dante',11.7),
('Kyler',3.9),
('Garrett',3.8),
('Donovan',8),
('Seth',1.5),
('Jeffrey',6.4),
('Tyson',10.2),
('Jase',13.8),
('Desmond',9.5),
('Caiden',9.8),
('Gage',5),
('Atlas',9.3),
('Major',7.3),
('Devin',1.6),
('Edwin',8.6),
('Angelo',7.1),
('Orion',13.5),
('Conner',4.1),
('Julius',1),
('Marco',4.5),
('Jensen',6.2),
('Daxton',12.9),
('Peyton',5.8),
('Zayn',12.9),
('Collin',9.5),
('Jaylen',11.7),
('Dakota',13.3),
('Prince',14.9),
('Johnny',8.1),
('Kayson',10.2),
('Cruz',0.3),
('Hendrix',12.1),
('Atticus',6.4),
('Troy',3.1),
('Kane',6),
('Edgar',6.1),
('Sergio',5.5),
('Kash',7.5),
('Marshall',11.8),
('Johnathan',1.1),
('Romeo',3.5),
('Shane',3.3),
('Warren',7.3),
('Joaquin',10.3),
('Wade',3.4),
('Leonel',12.3),
('Trevor',10.9),
('Dominick',6.9),
('Muhammad',7.5),
('Erik',1),
('Odin',12.6),
('Quinn',4),
('Jaxton',13.9),
('Dalton',1.2),
('Nehemiah',6.4),
('Frank',10.6),
('Grady',6.6),
('Gregory',1.8),
('Andy',8),
('Solomon',5.1),
('Malik',6.9),
('Rory',5),
('Clark',13.2),
('Reed',2.9),
('Harvey',12.6),
('Zayne',1.7),
('Jay',8.1),
('Jared',0),
('Noel',3.5),
('Shawn',7.5),
('Fabian',10.2),
('Ibrahim',10.8),
('Adonis',11),
('Ismael',14.8),
('Pedro',7.7),
('Leland',3.6),
('Malakai',14.7),
('Malcolm',0.6),
('Alexis',10.1),
('Kason',0.4),
('Porter',12.8),
('Sullivan',8.8),
('Raiden',12.8),
('Allen',4.2),
('Ari',8.7),
('Russell',9.8),
('Princeton',10.5),
('Winston',13.7),
('Kendrick',10.3),
('Roberto',3.6),
('Lennox',6.4),
('Hayes',7.1),
('Finnegan',12.5),
('Nasir',13.7),
('Kade',10.6),
('Nico',5.1),
('Emanuel',7),
('Landen',12),
('Moises',5),
('Ruben',2.8),
('Hugo',10.4),
('Abram',6.3),
('Adan',2.1),
('Khalil',5.4),
('Zaiden',13.3),
('Augustus',0.9),
('Marcos',7.2),
('Philip',9.8),
('Phillip',0.3),
('Cyrus',13.7),
('Esteban',5.8),
('Braylen',13.3),
('Albert',13.3),
('Bruce',0.2),
('Kamden',2.1),
('Lawson',3.4),
('Jamison',3.2),
('Sterling',11.8),
('Damon',6.1),
('Gunnar',0.6),
('Kyson',6.8),
('Luka',12.5),
('Franklin',9.9),
('Ezequiel',13.8),
('Pablo',14.6),
('Derrick',13.1),
('Zachariah',8.2),
('Cade',14.2),
('Jonas',14.8),
('Dexter',9.2),
('Kolton',9.2),
('Remy',13.8),
('Hank',6.7),
('Tate',1),
('Trenton',4.7),
('Kian',12.8),
('Drew',9.8),
('Mohamed',9.3),
('Dax',5.9),
('Rocco',6.3),
('Bowen',1.3),
('Mathias',2.5),
('Ronald',4.5),
('Francis',7.3),
('Matthias',1.8),
('Milan',2.5),
('Maximilian',7.4),
('Royce',11.7),
('Skyler',13.4),
('Corey',5.9),
('Kasen',7.2),
('Drake',13.5),
('Gerardo',1.7),
('Jayson',4.6),
('Sage',6),
('Braylon',8.4),
('Benson',9.1),
('Moses',3),
('Alijah',6),
('Rhys',8.2),
('Otto',6.3),
('Oakley',2.1),
('Armando',10.2),
('Jaime',9.1),
('Nixon',12.5),
('Saul',8.2),
('Scott',13.6),
('Brycen',10.5),
('Ariel',0),
('Enrique',8.5),
('Donald',5.9),
('Chandler',7.2),
('Asa',12.6),
('Eden',5.2),
('Davis',9.1),
('Keith',11),
('Frederick',4.9),
('Rowen',1.8),
('Lawrence',2.9),
('Leonidas',13.8),
('Aden',10.5),
('Julio',1.2),
('Darius',1.2),
('Johan',9.4),
('Deacon',7),
('Cason',1.8),
('Danny',9.3),
('Nikolai',2.2),
('Taylor',6.2),
('Alec',14.3),
('Royal',13.3),
('Armani',5.5),
('Kieran',12.7),
('Luciano',4.8),
('Omari',6.1),
('Rodrigo',3.7),
('Arjun',3.6),
('Ahmed',10.4),
('Brendan',11.4),
('Cullen',4.5),
('Raul',0.9),
('Raphael',5.3),
('Ronin',0.8),
('Brock',10.7),
('Pierce',4),
('Alonzo',4.5),
('Casey',12.6),
('Dillon',3.4),
('Uriel',9.7),
('Dustin',4.1),
('Gianni',2.3),
('Roland',11.1),
('Landyn',2),
('Kobe',11.2),
('Dorian',9.2),
('Emmitt',8.5),
('Ryland',2.4),
('Apollo',0.7),
('Aarav',3.1),
('Roy',0.8),
('Duke',0.7),
('Quentin',5.4),
('Sam',8.7),
('Lewis',0.9),
('Tony',10.4),
('Uriah',13.4),
('Dennis',7),
('Moshe',4.1),
('Isaias',9.8),
('Braden',6.3),
('Quinton',5.1),
('Cannon',13.3),
('Ayaan',12),
('Mathew',8.6),
('Kellan',9.1),
('Niko',11.3),
('Edison',1.2),
('Izaiah',9.6),
('Jerry',2.1),
('Gustavo',2.8),
('Jamari',0.8),
('Marvin',3.9),
('Mauricio',10.3),
('Ahmad',6.2),
('Mohammad',1.4),
('Justice',14.1),
('Trey',12.7),
('Elian',8.1),
('Mohammed',1.7),
('Sincere',12.3),
('Yusuf',5.7),
('Arturo',4.2),
('Callen',12.2),
('Rayan',13),
('Keaton',3.1),
('Wilder',3.5),
('Mekhi',5.4),
('Memphis',10.2),
('Cayson',4.3),
('Conrad',2.3),
('Kaison',1.9),
('Kyree',9.2),
('Soren',2.6),
('Colby',12.8),
('Bryant',3.6),
('Lucian',2),
('Alfredo',11.6),
('Cassius',7.5),
('Marcelo',2.3),
('Nikolas',13.7),
('Brennan',5.2),
('Darren',11.3),
('Jasiah',14.1),
('Jimmy',1.4),
('Lionel',12.2),
('Reece',13.5),
('Ty',11.8),
('Chris',7.3),
('Forrest',14.3),
('Korbin',8.8),
('Tatum',7.7),
('Jalen',13.5),
('Santino',4.4),
('Case',6.7),
('Leonard',5.6),
('Alvin',5.6),
('Issac',3.3),
('Bo',14.7),
('Quincy',8.3),
('Mack',2),
('Samson',10),
('Rex',4.8),
('Alberto',2.2),
('Callum',13.8),
('Curtis',7.3),
('Hezekiah',0.8),
('Finnley',13.1),
('Briggs',7.9),
('Kamari',12.9),
('Zeke',13.6),
('Raylan',4.5),
('Neil',6),
('Titan',6.1),
('Julien',0.9),
('Kellen',9.3),
('Devon',1.6),
('Kylan',5.6),
('Roger',0.3),
('Axton',4.3),
('Carl',1.3),
('Douglas',10.5),
('Larry',11),
('Crosby',0.1),
('Fletcher',13.1),
('Makai',0.1),
('Nelson',14.2),
('Hamza',14.7),
('Lance',9.5),
('Alden',9.8),
('Gary',14.1),
('Wilson',3.1),
('Alessandro',3.5),
('Ares',10),
('Kashton',2.6),
('Bruno',4.2),
('Jakob',7.3),
('Stetson',12.8),
('Zain',2.8),
('Cairo',3.4),
('Nathanael',1),
('Byron',7.3),
('Harry',8.3),
('Harley',13.9),
('Mitchell',12.2),
('Maurice',1.4),
('Orlando',14.8),
('Kingsley',3.8),
('Kaysen',10.5),
('Sylas',0.8),
('Trent',5.2),
('Ramon',6.2),
('Boston',14.5),
('Lucca',12.7),
('Noe',4.3),
('Jagger',10),
('Reyansh',3.6),
('Vihaan',0.2),
('Randy',0.8),
('Thaddeus',8.9),
('Lennon',7.5),
('Kannon',4.5),
('Kohen',12.9),
('Tristen',1.3),
('Valentino',4),
('Maxton',1.6),
('Salvador',1.2),
('Abdiel',1.8),
('Langston',12.5),
('Rohan',9.8),
('Kristopher',6.4),
('Yosef',4),
('Rayden',14.2),
('Lee',7.6),
('Callan',1.5),
('Tripp',10.2),
('Deandre',4.6),
('Joe',4.7),
('Morgan',6.9),
('Dariel',12.9),
('Colten',14),
('Reese',14.5),
('Jedidiah',14.8),
('Ricky',0.6),
('Bronson',8.7),
('Terry',4.5),
('Eddie',12.3),
('Jefferson',0),
('Lachlan',2.1),
('Layne',0.4),
('Clay',13.9),
('Madden',13.9),
('Jamir',8.3),
('Tomas',10.3),
('Kareem',10.3),
('Stanley',5.8),
('Brayan',9.5),
('Amos',0),
('Kase',8.3),
('Kristian',0.6),
('Clyde',3.9),
('Ernesto',14.7),
('Tommy',7.4),
('Casen',3.7),
('Ford',4.2),
('Crew',5.9),
('Braydon',14.8),
('Brecken',12.5),
('Hassan',14.2),
('Axl',0.2),
('Boone',10.3),
('Leandro',9.8),
('Samir',0.4),
('Jaziel',7.6),
('Magnus',1.8),
('Abdullah',12.6),
('Yousef',10.9),
('Branson',12),
('Jadiel',0.7),
('Jaxen',7),
('Layton',13),
('Franco',5.2),
('Ben',2),
('Grey',11.5),
('Kelvin',2),
('Chaim',3.4),
('Demetrius',12.8),
('Blaine',2.7),
('Ridge',12.6),
('Colson',0.5),
('Melvin',4.9),
('Anakin',7.4),
('Aryan',6.9),
('Lochlan',3.3),
('Jon',2.8),
('Canaan',13.8),
('Dash',7.7),
('Zechariah',0.4),
('Alonso',14.1),
('Otis',3.9),
('Zaire',14.3),
('Marcel',12.8),
('Brett',9.9),
('Stefan',1.5),
('Aldo',1.5),
('Jeffery',11.7),
('Baylor',3.6),
('Talon',14.8),
('Dominik',14.1),
('Flynn',13.4),
('Carmelo',13.3),
('Dane',3.7),
('Jamal',11.1),
('Kole',14.9),
('Enoch',7.1),
('Graysen',14.1),
('Kye',3.5),
('Vicente',12.6),
('Fisher',14.5),
('Ray',14.4),
('Fox',3.6),
('Jamie',3.4),
('Rey',7.7)

insert into TimesheetDays(Name, Hours)
values
('Zaid',12.2),
('Allan',6.4),
('Emery',2.6),
('Gannon',13.8),
('Joziah',4.8),
('Rodney',9.9),
('Juelz',10.8),
('Sonny',11.9),
('Terrance',13.4),
('Zyaire',3.1),
('Augustine',4.6),
('Cory',5.4),
('Felipe',4.6),
('Aron',13.9),
('Jacoby',13.3),
('Harlan',8.6),
('Marc',7),
('Bobby',5),
('Joey',4),
('Anson',5),
('Huxley',8.2),
('Marlon',5.6),
('Anders',1.2),
('Guillermo',2.7),
('Payton',14),
('Castiel',2.3),
('Damari',10.4),
('Shepherd',9.1),
('Azariah',8.1),
('Harold',12.3),
('Harper',9.1),
('Henrik',14.3),
('Houston',2.6),
('Kairo',9.5),
('Willie',4.1),
('Elisha',9.2),
('Ameer',14.4),
('Emory',3.8),
('Skylar',5.1),
('Sutton',4),
('Alfonso',7.8),
('Brentley',4.6),
('Toby',3.6),
('Blaze',6.2),
('Eugene',2.9),
('Shiloh',8.3),
('Wayne',12.1),
('Darian',4.6),
('Gordon',2.5),
('London',6.8),
('Bodie',14.5),
('Jordy',11.2),
('Jermaine',13.4),
('Denver',4.6),
('Gerald',2.2),
('Merrick',12.4),
('Musa',5.9),
('Vincenzo',14.5),
('Kody',14),
('Yahir',9.3),
('Brodie',0.6),
('Trace',0.9),
('Darwin',9.8),
('Tadeo',0.8),
('Bentlee',4.4),
('Billy',3.7),
('Hugh',5.9),
('Reginald',6.6),
('Vance',13.7),
('Westin',9.1),
('Cain',6.6),
('Arian',13.2),
('Dayton',3.6),
('Javion',13.3),
('Terrence',7.4),
('Brysen',7.2),
('Jaxxon',7.4),
('Thatcher',3),
('Landry',14.8),
('Rene',14.9),
('Westley',10.9),
('Miller',10.1),
('Alvaro',9.5),
('Cristiano',11.5),
('Eliseo',12.9),
('Ephraim',11.9),
('Adrien',11.1),
('Jerome',14.4),
('Khalid',6.9),
('Aydin',2.4),
('Mayson',4.2),
('Alfred',13.9),
('Duncan',3.5),
('Junior',11.1),
('Kendall',8.3),
('Zavier',12.6),
('Koda',12.9),
('Maison',7.4),
('Caspian',4.9),
('Maxim',13.5),
('Kace',8.6),
('Zackary',2.6),
('Rudy',13.1),
('Coleman',14.4),
('Keagan',13.7),
('Kolten',1.9),
('Maximo',3.7),
('Dario',6.4),
('Davion',6.6),
('Kalel',12),
('Briar',5.9),
('Jairo',11.1),
('Misael',10.8),
('Rogelio',12.6),
('Terrell',2.1),
('Heath',14.6),
('Micheal',9.1),
('Wesson',1.3),
('Aaden',8.6),
('Brixton',2),
('Draven',3.9),
('Xzavier',3),
('Darrell',10.9),
('Keanu',12.7),
('Ronnie',3.1),
('Konnor',10.4),
('Will',5.1),
('Dangelo',13.3),
('Frankie',0.4),
('Kamryn',14.5),
('Salvatore',0.1),
('Santana',12.1),
('Shaun',13),
('Coen',11),
('Leighton',13.6),
('Mustafa',9),
('Reuben',5.7),
('Ayan',6.7),
('Blaise',2.5),
('Dimitri',14.3),
('Keenan',10.5),
('Van',6.7),
('Achilles',7.5),
('Channing',5.2),
('Ishaan',5.4),
('Wells',9.4),
('Benton',11.6),
('Lamar',3.4),
('Nova',14),
('Yahya',0.3),
('Dilan',2.9),
('Gibson',13.4),
('Camdyn',4.5),
('Ulises',12.5),
('Alexzander',8.8),
('Valentin',14.7),
('Shepard',4.4),
('Alistair',9),
('Eason',5.3),
('Kaiser',8.1),
('Leroy',11.3),
('Zayd',13.4),
('Camilo',11.1),
('Markus',5.3),
('Foster',6.4),
('Davian',7.5),
('Dwayne',8.4),
('Jabari',13.8),
('Judson',12.8),
('Koa',13.4),
('Yehuda',10.4),
('Lyric',2.9),
('Tristian',14.7),
('Agustin',11),
('Bridger',14.9),
('Vivaan',6.9),
('Brayson',8.6),
('Emmet',5),
('Marley',5.1),
('Mike',11.6),
('Nickolas',11),
('Kenny',13.4),
('Leif',4.9),
('Bjorn',7.1),
('Ignacio',11.7),
('Rocky',11),
('Chad',8.3),
('Gatlin',3.5),
('Greysen',14.9),
('Kyng',7.2),
('Randall',5.8),
('Reign',13.4),
('Vaughn',12),
('Jessie',4.6),
('Louie',2.9),
('Shmuel',0.3),
('Zahir',7.9),
('Ernest',10.8),
('Javon',11.3),
('Khari',11.1),
('Reagan',7.1),
('Avi',13.7),
('Ira',6.5),
('Ledger',8.6),
('Simeon',6.9),
('Yadiel',0.8),
('Maddux',2.6),
('Seamus',3.7),
('Jad',13.9),
('Jeremias',13.8),
('Kylen',12.3),
('Rashad',8.7),
('Santos',11.1),
('Cedric',0.4),
('Craig',11.6),
('Dominique',0.3),
('Gianluca',6.2),
('Jovanni',13.9),
('Bishop',4),
('Brenden',14),
('Anton',3.4),
('Camron',9.2),
('Giancarlo',5.9),
('Lyle',2.9),
('Alaric',5.2),
('Decker',11.2),
('Eliezer',5.4),
('Ramiro',2.5),
('Yisroel',11.5),
('Howard',11.8),
('Jaxx',10.9)
