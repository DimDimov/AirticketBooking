A full-stack web application for searching flights and managing airline ticket 
bookings developed as portfolio project.

The application provides a user-friendly interface for searching flights, creating
bookings, managing passengers, and generating tickets. It also includes an 
administration area for managing bookings and users. The application uses SerpAPI to retrieve
flight search data and display available flights to the user.

# 🚀 Features

## User

* User registration and login
* JWT-based authentication
* Search for available flights
* Select seats
* Select additional meals
* Select outbound and return flights
* Add passenger information
* Create and manage bookings
* Generate and download tickets as PDF
* Email notifications
* Pay for bookings using PayPal Sandbox
* View Bookings details

## Admin

* Admin authentication
* Manage users
* View and manage bookings
* Access booking details
* Generate tickets

## Payment Flow
The application implements an event-driven payment flow using Apache Kafka to 
handle asynchronous communication between the Payment Service 
and the Booking Service.

### How it works.

1. **Payment Processing:** The Payment Service processes the user's payment.
2. **Event Publishing:** After successful payment, the Payment Service publishes 
a payment completion event to Kafka.
3. **Event Consumption:** The Booking Service consumes the event and updates 
the booking's payment status in the database.
4. **Status Retrieval:** The React frontend retrieves the latest payment status 
through a REST API, using JWT-based authentication.
5. **Confirmation:** Once the payment status is PAID, the frontend displays the 
booking confirmation message.

## Payment Statuses
* **PENDING** — Payment is being processed.
* **PAID** — Payment was successful.
* **FAILED** — Payment failed.

The payment status is maintained separately from the booking status, allowing 
payment processing and booking lifecycle management to be handled 
independently.

# 🛠️ Technologies

## Backend

* Java
* Spring Boot
* Spring Security
* JWT
* Apache Kafka
* REST API
* JPA/Hibernate
* PostgreSQL

## Frontend

* React
* JavaScript
* Vite
* HTML
* CSS

## External services

* Serp API - flight search data
* PayPal SandBox - demo payment processing

# Tools & Infrastructure

* Docker
* Docker Compose
* Git/ GitHub
* IntelliJ IDEA


# ▶️ How to Run

Before starting the application, make sure you have installed:

* Docker Desktop
* Git
* Node.js and npm

## 1. Clone the repository
   git clone https://github.com/DimDimov/AirticketBooking.git
   cd AirticketBooking

## 2. Configure environment variables 

    Create  a .env file in the project root and configure the required environment
    variables. The SerpAPI key is required to use flight functionality. Add your API
    key to the .env file.

    Example:
    # Email
    MAIL_USERNAME=
    MAIL_PASSWORD=
    MAIL_HOST=
    MAIL_PORT=

    # Security
    JWT_SECRET_KEY=
    SECURITY_USER_PASSWORD=
    SECURITY_USER_NAME=

    # External API
    SERPAPI_API_KEY=

    #database
    DATASOURCE_USERNAME=
    DATASOURCE_PASSWORD=
    DATASOURCE_URL_DOCKER=
    DATASOURCE_URL_LOCAL=
    DATASOURCE_URL=
    
    # Server
    SERVER_PORT_DOCKER=

    # Demo Admin
    ADMIN_EMAIL=
    ADMIN_PASSWORD=

## 3. Start the application with Docker Compose

    From the project root, run:
    docker compose up --build

    Docker  Compose will build and start the application and PostgreSQL database.
    Admin user and airports data is created automatically.   
   
## 4. Start the React

    Start React with npm install and npm run dev
    
## 4. Open the application

    After the containers have started, open the application in your browser:

    http://localhost:5173/home