# Change API

Empowering change of non-virtual environments.

## Project setup

The project setup instructions are as follows...

#### Configuring application settings

Remove `.example` from the `source\GarthToland.ChangeApi.Web\appsettings.json.example` file and replace `password_here` inside the connection string with your own password.

#### Scaffold a PostgreSQL database (ORM)

```bash
dotnet ef dbcontext scaffold -f "Host=localhost;Port=54321;Username=postgres;Password=p;Database=change;" Npgsql.EntityFrameworkCore.PostgreSQL --project GarthToland.ChangeApi -o Models\Generated --context ChangeDbContext
```

#### Docker

You can also run the ChangeApi using Docker. Ensure you configure the application settings in the step above. Then run the following commands:

```docker
docker-compose build
docker-compose up -d
```