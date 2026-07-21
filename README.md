# sanquote-demo

ASP.NET Core MVC application targeting .NET 10.
This repo is for creating and testing a Github actions based CICD pipeline with the required features.

## Prerequisites

- .NET 10 SDK
- Optional: Visual Studio 2022 or VS Code with C# extensions

## Getting Started

1. Restore dependencies:

```bash
dotnet restore
```

2. Build the application:

```bash
dotnet build
```

3. Run the application:

```bash
dotnet run
```

When running locally, launch profiles are configured in `Properties/launchSettings.json`:

- HTTP: http://localhost:5113
- HTTPS: https://localhost:7256

## Project Structure

- `Controllers/` - MVC controllers
- `Models/` - View and domain models
- `Views/` - Razor views
- `wwwroot/` - Static files (CSS, JavaScript, images)
- `Program.cs` - Application startup and middleware pipeline
- `appsettings.json` - Default configuration
- `appsettings.Development.json` - Development-only configuration

## Configuration

The app uses standard ASP.NET Core configuration sources:

- `appsettings.json`
- `appsettings.Development.json`
- Environment variables

Set the environment with:

```bash
set ASPNETCORE_ENVIRONMENT=Development
```

Use `Development` for local debugging and `Production` for deployed environments.

## Common Commands

```bash
dotnet restore
dotnet build
dotnet run
dotnet watch
dotnet publish -c Release -o ./publish
```

## Troubleshooting

- If HTTPS certificate warnings appear, run:

```bash
dotnet dev-certs https --trust
```

- If ports conflict, update `applicationUrl` values in `Properties/launchSettings.json`.

## Contributing

1. Create a feature branch.
2. Make your changes and verify the app builds.
3. Open a pull request.
