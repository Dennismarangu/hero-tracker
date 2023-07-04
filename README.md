# Hero Tracker

Hero Tracker is a Rails API backend that allows you to track heroes and their superpowers. It provides endpoints to retrieve information about heroes, powers, and their associations. This README provides an overview of the project, including setup instructions, models and associations, routes, and response structures.

### Table of Contents

- Project Setup
- Models and Associations
- Validations
- Routes
- Response Structures

Follow the steps below to set up the Hero Tracker project:

1. Create a new Rails project using the following command:

rails new hero-tracker --api -d postgresql

2. Change into the project directory:

cd hero-tracker

3. Create a new private GitHub repository for the project and add your team members as contributors.

Initialize a Git repository and connect it to your remote repository:

git init
git remote add origin

## Models and Associations

The Hero Tracker project consists of the following models and associations:

1. Hero model:

name (string): The name of the hero.
super_name (string): The superhero name of the hero.
Associations:
has_many :hero_powers
has_many :powers, through: :hero_powers

2. Power model:

name (string): The name of the superpower.
description (text): A description of the superpower.
Associations:
has_many :hero_powers
has_many :heroes, through: :hero_powers

3. HeroPower model:

strength (string): The strength level of the hero for a specific power (allowed values: 'Strong', 'Weak', 'Average').
Associations:
belongs_to :hero
belongs_to :power

### Validations

The Hero Tracker project includes the following validations:

1. HeroPower model:
strength field must be one of the following values: 'Strong', 'Weak', 'Average'.

2. Power model:
description field must be present and at least 20 characters long.

### Routes

The Hero Tracker API provides the following routes:

GET /heroes: Retrieve a list of all heroes.
GET /heroes/:id: Retrieve a specific hero by ID.
GET /powers: Retrieve a list of all powers.
GET /powers/:id: Retrieve a specific power by ID.
PATCH /powers/:id: Update the description of a specific power.
POST /hero_powers: Create a new HeroPower association.


## Authors

Dennis Mutuma Marangu
