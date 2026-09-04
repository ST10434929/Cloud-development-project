FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY ["CoffeeNChill.csproj", "./"]
RUN dotnet restore "CoffeeNChill.csproj"

COPY . .
RUN dotnet publish "CoffeeNChill.csproj" -c Release -o /app/publish