# Using official .NET 9.0 SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

# Set working directory inside the container
WORKDIR /app

# Copy csproj and restore dependencies first (better caching)
COPY EurofleetLogisticsApp/*.csproj ./
RUN dotnet restore

# Copy everything else and build the project
COPY EurofleetLogisticsApp/ ./
RUN dotnet publish -c Release -o out

# Use the smaller runtime image for the final container
FROM mcr.microsoft.com/dotnet/aspnet:9.0
WORKDIR /app

# Copy published app from the build stage
COPY --from=build /app/out ./

# Expose the port app listens on
EXPOSE 5102

# Start the app
ENTRYPOINT ["dotnet", "EurofleetLogisticsApp.dll"]
