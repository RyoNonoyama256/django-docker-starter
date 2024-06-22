# Django Docker Starter
This repository provides a boilerplate for setting up a "Django 4" environment using Docker and Docker Compose. It includes the necessary configurations and scripts to get a Django application up and running with minimal effort.


## 基本操作
- **サービスのビルド**
  ```bash
  docker-compose up --build
  ```

- **コンテナの起動**
  ```bash
  docker-compose up
  ```

- **バックグラウンドでコンテナの起動**
  ```bash
  docker-compose up -d
  ```

- **コンテナの停止・削除**
  ```bash
  docker-compose down
  ```

- **サービスの再ビルド**
  ```bash
  docker-compose up --build
  ```

- **特定のサービスの実行**
  ```bash
  docker-compose run web python /app/blogproject/manage.py migrate
  ```

## My Django Project
This is a Django project set up using Docker and Docker Compose.

### Prerequisites

- Docker
- Docker Compose

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/yourproject.git
   cd yourproject
   ```

2. Create a `.env` file from the example:
   ```bash
   cp .env.example .env
   ```

3. Fill in the required environment variables in the `.env` file.

4. Build and start the Docker containers:
   ```bash
   docker-compose up --build
   ```

5. Apply the database migrations:
   ```bash
   docker-compose exec web python /app/${PROJECT_NAME:-blogproject}/manage.py migrate
   ```

6. Access the project at `http://localhost:8000`.

### Environment Variables

The following environment variables are required:

- `SECRET_KEY`: Django secret key.
- `DEBUG`: Set to `1` for development and `0` for production.
- `DB_NAME`: Name of the PostgreSQL database.
- `DB_USER`: Username for the PostgreSQL database.
- `DB_PASSWORD`: Password for the PostgreSQL database.
- `DB_HOST`: Hostname of the PostgreSQL database.
- `DB_PORT`: Port number of the PostgreSQL database.
- `PROJECT_NAME`: Name of the Django project (default: `blogproject`).

### Example .env File

Here is an example of what your `.env` file should look like:

```env
SECRET_KEY=your-secret-key
DEBUG=1
DB_NAME=mydatabase
DB_USER=myuser
DB_PASSWORD=mypassword
DB_HOST=db
DB_PORT=5000
PROJECT_NAME=yourproject
```
