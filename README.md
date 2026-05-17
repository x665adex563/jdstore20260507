# JD Store

A full-stack Ruby on Rails e-commerce platform built for portfolio demonstration, featuring shopping cart, order management, and admin workflow systems.

---

## Live Demo
https://www.jdstoreapp.com/

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
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/f53967c2-58eb-4d85-8357-58114dbbc10d" />

* Product page

* Cart page

* Checkout page

* Admin dashboard

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
