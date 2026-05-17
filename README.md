# JD Store

A full-stack Ruby on Rails e-commerce platform built for portfolio demonstration, featuring shopping cart, order management, and admin workflow systems.

---

## Live Demo

https://www.jdstoreapp.com/

---

## Demo Video

This demo follows a full user flow from browsing products to order creation, followed by admin management and order status transitions.

https://www.youtube.com/watch?v=wQBasrAbekg

---

### Test Accounts

**User**
Email: 112233@gmail.com
Password: 11223

**Admin**
Email: 123456@gmail.com
Password: 123456

> This project is a portfolio demonstration and is not intended for production use.

---


## Tech Stack

**Backend**
* Ruby on Rails
* PostgreSQL

**Frontend**
* HTML / CSS / JavaScript
* Tailwind CSS

**Authentication & Logic**
* Devise (User authentication)
* AASM (Order state machine)

**Features**
* i18n for multi-language support (EN / zh-TW)
* Action Mailer (Order confirmation emails)

**Deployment**
* Render

**Version Control**
* Git / GitHub

---

## Features

### User System
* User registration and authentication system
* Session-based login/logout

### Shopping System
* Product browsing and listing system
* Shopping cart management
* Checkout workflow

### Order System
* Order lifecycle management (creation, tracking, history)
* State management using AASM

### Internationalization
* Internationalization support for English and Traditional Chinese (i18n)

### Email Notification
* Order confirmation email via Action Mailer

### Admin Features
* Product management (CRUD)
* Order management overview

---

## What I Learned
* MVC architecture in a full-stack Ruby on Rails application
* RESTful routing design for product, cart, and order workflows
* Designed relational database associations between users, orders, and products
* Implemented order state machine using AASM
* Applied Git version control in a collaborative development workflow
* Deployed Rails application on Render
* Debugged and resolved issues across full-stack development

---

## Screenshots

* Homepage
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/719abeca-1ae8-41f8-adc0-82c76b966660" />

* Product page
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4e2b4b7f-2f86-4dd0-b2c2-391acb2b3e55" />

* Cart page
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a19df5f2-623a-4162-b24f-50d6f51e8853" />

* Checkout page
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a8a609e4-a54b-439a-9831-dcffeccc7fdc" />

* Admin dashboard (product management)
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/ce3fcbda-0036-4008-bfc7-60205e62e3fa" />

* Admin dashboard (order management)
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4dc42c1b-4abf-432e-9dd7-391a0e016072" />

---

## Installation (Local Setup)

```bash
git clone https://github.com/x665adex563/jdstore20260507.git
cd jdstore20260507
bundle install
rails db:create
rails db:migrate
rails db:seed
bin/dev
```
Make sure PostgreSQL is running before setup.

After starting the server, visit:
http://localhost:3000

## Environment

Ruby version: 3.2.2  
Rails version: 8.x  

Database:
- Development: SQLite3 (local testing)
- Production: PostgreSQL (Render deployment)

---

## Contact
- GitHub: https://github.com/x665adex563
- Email: x665adex563@gmail.com
