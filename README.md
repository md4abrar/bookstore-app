# Demonstrates the use of Jenkins CI-CD pipeline to deploy webapps to EKS cluster.

# Bookstore App

**A full-stack bookstore application for managing books, authors, and users.Also demonstrated the use of Jenkins CI-CD pipeline to deploy webapps to EKS cluster**

## Overview

The Bookstore App is a web-based application designed to facilitate book management, author tracking, and user interactions. The application allows users to browse books, add new books, and manage their inventory efficiently.

## Features

- **User Authentication**: Secure login and registration functionality.
- **Book Management**: Add, update, delete, and view books.
- **Author Management**: Associate books with authors and manage author details.
- **Search and Filtering**: Search books by title, author, or category.
- **RESTful API**: Backend API for book and author data management.
- **Responsive UI**: Optimized for both desktop and mobile devices.

## Technologies Used

- **Frontend**:       React.js, Tailwind CSS
- **Backend**:        Node.js, Express.js
- **Database**:       MongoDB
- **Authentication**: JWT-based authentication
- **Deployment**:     Docker, AWS EC2
- **Integration**:    Jenkins
- **Secrets**:        Jenkins secrets
- **Build**:          Maven
- **Packaging**:      Docker
- **Registry**:       Docker Hub
- **Compute**:        EKS cluster
  

## Installation

### Prerequisites

Ensure you have the following installed on your machine:
- Node.js (v14+)
- MongoDB
- Docker (optional for containerized deployment)
- Jenkins setup
- Jenkins user should have access to docker. [ May be by adding jenkins user to the docker group ]
- aws cli and kubectl installed and setup on jenkins node

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/md4abrar/bookstore-app.git
   cd bookstore-app
   ```
2. **Install dependencies**
   ```bash
   npm install
   ```
3. **Setup environment variables**
   Create a `.env` file and configure the following:
   ```env
   PORT=5000
   MONGO_URI=mongodb://localhost:27017/bookstore
   JWT_SECRET=your_secret_key
   ```
4. **Run the application**
   ```bash
   npm start
   ```

## API Endpoints

| Method | Endpoint         | Description             |
|--------|-----------------|-------------------------|
| GET    | `/api/books`    | Get all books          |
| POST   | `/api/books`    | Add a new book         |
| GET    | `/api/authors`  | Get all authors        |
| POST   | `/api/authors`  | Add a new author       |

## Deployment

For Docker-based deployment, use the following commands:
```bash
docker build -t bookstore-app .
docker run -p 5000:5000 bookstore-app
```

# JENKINS PIPELINE
![Alt Image text](Deployment_Pipeline.PNG?raw=true "Deployment_Pipeline")


## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/md4abrar/bookstore-app/blob/main/LICENSE) file for details.
