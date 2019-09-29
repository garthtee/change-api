FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env

# Copy csproj and restore as distinct layers
WORKDIR /app
COPY ./source/GarthToland.ChangeApi.Web/*.csproj ./
RUN dotnet restore

# Copy everything else and build
WORKDIR /app
COPY ./source/ ./
RUN dotnet publish GarthToland.ChangeApi.Web -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.0
WORKDIR /app
COPY --from=build-env /app/GarthToland.ChangeApi.Web/out/ .

ENTRYPOINT ["dotnet", "GarthToland.ChangeApi.Web.dll"]
