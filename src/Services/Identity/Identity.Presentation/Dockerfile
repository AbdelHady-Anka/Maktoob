FROM mcr.microsoft.com/dotnet/core/aspnet AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR /
COPY . .
RUN dotnet restore
RUN dotnet build "Maktub.Services.Identity.Presentation.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Maktub.Services.Identity.Presentation.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Maktub.Services.Identity.Presentation.dll"]