FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch AS build
WORKDIR /src
COPY ["src/Services/Identity/Identity.Presentation/Maktub.Services.Identity.Presentation.csproj", "src/Services/Identity/Identity.Presentation/"]
RUN dotnet restore "src/Services/Identity/Identity.Presentation/Maktub.Services.Identity.Presentation.csproj"
COPY . .
WORKDIR "/src/src/Services/Identity/Identity.Presentation"
RUN dotnet build "Maktub.Services.Identity.Presentation.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Maktub.Services.Identity.Presentation.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Maktub.Services.Identity.Presentation.dll"]
