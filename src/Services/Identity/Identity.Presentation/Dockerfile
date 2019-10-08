FROM mcr.microsoft.com/dotnet/core/aspnet AS base
WORKDIR /app/out
EXPOSE 80
EXPOSE 443

#FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
#WORKDIR /
#COPY . .
#RUN dotnet restore
#RUN dotnet build "Maktub.Services.Identity.Presentation.csproj" -c Release -o /app

#FROM build AS publish
#RUN dotnet publish "Maktub.Services.Identity.Presentation.csproj" -c Release -o /app

#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app .
#ENTRYPOINT ["dotnet", "Maktub.Services.Identity.Presentation.dll"]



FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/aspnetcore
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Maktub.Services.Identity.Presentation.dll"]