# Hotel_Booking_System

This project consists of 2 parts:
1. An online booking system for **hotels**, which allows the authentication of users, who can register as `members` 
to have access to different discounts and promotions.
2. HTML and CSS pages, which simulates a real hotel website. For this part, I have used as base the templates designed by `Spagere` bought in `themforest.net`
under a regular license.

The **focus points** of the project are:
* Back end implemented for members authentication (login & registration)
* Inputs and data validation
* Database structure and relations. This database is connected to an external PMS,
which allows the Hotel Revenue Management (This PMS is a different project)
* Online booking system, which finishes with an email confirmation

**This project does not include photos or hotels information**.

### Functionalities and characteristics:
- Remote relational database in MySQL
- Validation of registration and login forms for members
- `Passay` for password's strength validation during registration
- `Error messages` for inputs read from `ValidationMessages.properties`
- Different `rate codes` and `rate prices`, for offers management (standard and promotional), established through database
- `Hotel search` by city, check in date, check out date and number of guests
- Possibility to `modify search` while the reservation process progresses
- Different styles for offers according to prices and promotions
- Alert with message for non-refundable offers
- **10% discount for members** implementation
- `Members only` - Automatic personal details auto-fill using current session data during payment form
- **Booking confirmation by email** after correctly filling out the registration form

### Database information and external PMS:
The project shares a database with a **Property Management System (`PMS`)** that is in charge of the hotel's Revenue Management.
Because both are different projects, they have been designed to be independent in a way that their relationship be strictly through the database.

### Technologies and tools:
`The app was developed using:` IntelliJ, GitHub, Maven, Bootstrap, JSP, JSTL, SpringBoot, SpringSecurity, Spring Email, Hibernate, 
Hibernate Validator, MySQL on AWS, Lombok, Passay, JavaScript, HTML5 and CSS.

### Deployment:
This project has been deployed with Docker.

To visit the application live [CLICK HERE](http://45.151.125.237:3002/)

Do not forget to register as member to obtain **10% discount** on bookings.