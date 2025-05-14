# Étape 1 : Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

COPY minimalAPI/*.csproj ./minimalAPI/
RUN dotnet restore ./minimalAPI/minimalAPI.csproj

COPY . .
RUN dotnet publish ./minimalAPI/minimalAPI.csproj -c Release -o /out

# Étape 2 : Runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /out .
EXPOSE 80
ENTRYPOINT ["dotnet", "minimalAPI.dll"]
