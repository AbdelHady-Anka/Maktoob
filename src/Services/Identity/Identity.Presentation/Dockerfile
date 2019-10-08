FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch as build
# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish "Maktub.Services.Identity.Presentation.csproj" -c Release -o out

FROM microsoft/aspnetcore:2.2
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "Maktub.Services.Identity.Presentation.dll"]