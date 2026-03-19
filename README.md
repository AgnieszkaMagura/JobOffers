<div align="center">

# 💼 JobOffers - Recruitment Aggregator Backend
**Author: Agnieszka Magura**

</div>

## 📖 Description
**JobOffers** is a robust backend system built with **Spring Boot 2.7.8**, designed to automate the job search process for Junior Java Developers. The application serves as a centralized hub for collecting, managing, and notifying users about new career opportunities.

## 🚀 Project Overview
This repository contains the core business logic and infrastructure for the JobOffers application. It integrates multiple external services and provides a secure API for the client-side application.

* **🖥️ Frontend Client:** [JobOffers React App](https://github.com/AgnieszkaMagura/job-offers-frontend)
* **⚙️ Core Logic:** Automated fetching, data deduplication, and JWT-secured access.

### ✨ Key Features
* **Automated Data Fetching**: An integrated **Spring Scheduler** periodically fetches the latest job postings from external recruitment platforms.
* **Security & Authentication**: Access to job offers is secured via **JWT (JSON Web Tokens)** for stateless authentication.
* **Offer Management**: Authenticated users can browse the aggregated database, search by ID, or manually add new listings.
* **Data Integrity**: Integrated **Bean Validation** ensures data quality, while the system handles duplicate offers during scheduler cycles.

## 🏗️ Architecture & Principles
The project is strictly developed following **Clean Architecture** and **Hexagonal Architecture (Ports and Adapters)** principles.

<div align="center">
  <img width="850" alt="JobOffers Architecture Diagram" src="architecture/job%20offers%20architecture.png" />
</div>

### 🧩 System Flow (Mapped to Diagram)
* **Decoupling:** The core domain logic remains independent of technical details like databases, external APIs, or security configurations.
* 🔵 **Java Components:** Contains the Offer Facade and Services – the entry point to business logic, ensuring high maintainability and clean domain boundaries.
* 🟢 **MongoDB Database:** Primary persistent storage for user accounts and the aggregated job offers repository.
* 🟡 **Redis Cache:** High-performance in-memory storage used to optimize response times for frequent offer queries.
* 🔴 **External Server:** Represents remote recruitment platforms from which the system fetches data (simulated with WireMock during tests).
* ⚪ **Scheduler Task:** The Spring Task Scheduler that automates the recurring lifecycle of fetching and updating job openings.

## 🧪 Quality Assurance & Testing
The application was built with a strong emphasis on **Test-Driven Development (TDD)** and high test coverage:
* **Asynchrony:** Testing scheduled tasks and background processes using **Awaitility**.
* **Mocking:** Full simulation of external job servers with **WireMock** for reliable integration tests.
* **Real Environment:** Using **Testcontainers** to run integration tests on actual **MongoDB** instances.
* **API Testing:** Comprehensive endpoint verification using **MockMvc** and **RestTemplate**.

## 📡 API Endpoints
| Method | Endpoint | Description | Access |
| :--- | :--- | :--- | :--- |
| `POST` | `/register` | Register a new user account | **Public** |
| `POST` | `/token` | Authenticate and get JWT Token | **Public** |
| `GET` | `/offers` | Retrieve all job offers | **Private** |
| `GET` | `/offers/{id}` | Find a specific offer by ID | **Private** |
| `POST` | `/offers` | Manually add a new offer | **Private** |

## 💻 Frontend Integration
The backend is fully integrated with a modern React client. You can find the frontend repository here: **[JobOffers Client App](https://github.com/AgnieszkaMagura/job-offers-frontend)**.

**Key Frontend Technologies (from `App.tsx`):**
* **React 18** (Functional Components, Hooks: `useState`, `useEffect`, `useCallback`)
* **TypeScript** – interfaces synchronized with Backend DTOs for full type safety
* **React Router Dom v6** – handling protected routes and navigation
* **Axios** – asynchronous API communication with JWT interceptors
* **Tailwind CSS** – responsive design with a native **Dark Mode** toggle
* **Lucide React** – modern iconography for a clean UI

## 🚀 How to run
1. **Clone the repository:** `git clone https://github.com/AgnieszkaMagura/JobOffers.git`
2. **Infrastructure:** `docker-compose up -d` (requires Docker Desktop).
3. **Run the app:** `./mvnw spring-boot:run` or via your IDE.
4. **API Docs:** Documentation is available at: `http://localhost:8000/swagger-ui/index.html`

---
<div align="center">
  <strong>🛠️ Backend Tech Stack (Integrated)</strong><br>
 <img src="https://img.shields.io/badge/Architecture-Hexagonal-3498db?style=for-the-badge&logo=architecture" alt="Hexagonal Architecture">
<img src="https://img.shields.io/badge/Java-17-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java 17">
<img src="https://img.shields.io/badge/Spring_Boot-2.7.8-6DB33F?style=for-the-badge&logo=spring-boot&logoColor=white" alt="Spring Boot">
<img src="https://img.shields.io/badge/Spring_Security-6DB33F?style=for-the-badge&logo=spring-security&logoColor=white" alt="Spring Security">
<img src="https://img.shields.io/badge/JWT-black?style=for-the-badge&logo=json-web-tokens&logoColor=white" alt="JWT">
<br>
<img src="https://img.shields.io/badge/MongoDB-47A248?style=for-the-badge&logo=mongodb&logoColor=white" alt="MongoDB">
<img src="https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=redis&logoColor=white" alt="Redis">
<img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
</div>

<br>

<div align="center">
  <strong>🖥️ Frontend Tech Stack</strong><br>
 <img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB" alt="React">
<img src="https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript">
<img src="https://img.shields.io/badge/React_Router-CA4245?style=for-the-badge&logo=react-router&logoColor=white" alt="React Router">
<img src="https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind CSS">
<br>
<img src="https://img.shields.io/badge/Axios-5A29E4?style=for-the-badge&logo=axios&logoColor=white" alt="Axios">
<img src="https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white" alt="Vite">
<img src="https://img.shields.io/badge/Lucide_Icons-F72C5B?style=for-the-badge&logo=lucide&logoColor=white" alt="Lucide">
</div>

<br>

<div align="center">
  <h3>🤝 Contact</h3>
  <em>Designed with ❤️ by <strong>Agnieszka Magura</strong></em><br><br>
  <a href="https://github.com/AgnieszkaMagura" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
  <a href="https://www.linkedin.com/in/agnieszka-magura-0714241a8/" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <br><br>
  If you like this project, please consider giving it a ⭐!
</div>
<br>