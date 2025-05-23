# PostgREST + PostgreSQL + pgAdmin + Swagger (Dev Stack with Podman Compose)

This is a full development stack using **PostgreSQL as your database** and **PostgREST as an instant REST API layer**.

It also includes:

- pgAdmin4 for managing the database
- Swagger UI for testing the REST API
- `.env` file support to avoid hardcoding credentials
- Designed to work seamlessly with **Podman Compose**

---

## 🚀 Getting Started

### 1. Create a `.env` file

In the root directory, create a `.env` file with the following contents:

```env
POSTGRES_USER=myuser
POSTGRES_PASSWORD=mypass
POSTGRES_DB=mydb

PGADMIN_DEFAULT_EMAIL=admin@example.com
PGADMIN_DEFAULT_PASSWORD=admin123

PGRST_DB_URI=postgres://myuser:mypass@db:5432/mydb
```

### 2. Start the Stack

Run the following command to start the stack:

```bash
podman-compose up -d
```

### 3. Stop the Stack

To stop the stack, run:

```bash
podman-compose down
```

## Available Services

| Service     | URL                         | Description                    |
|-------------|-----------------------------|--------------------------------|
| **PostgREST**   | [http://localhost:3000](http://localhost:3000) | REST API autogenerated from DB |
| **pgAdmin**     | [http://localhost:5050](http://localhost:5050) | Web-based DB management tool   |
| **Swagger UI**  | [http://localhost:8080](http://localhost:8080) | API explorer and tester        |

## Example API Test

```
curl http://localhost:3000/todos

curl -X POST http://localhost:3000/todos \
  -H "Content-Type: application/json" \
  -d '{"task": "Trying out PostgREST"}'
```
