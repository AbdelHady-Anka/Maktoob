FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch AS build
WORKDIR /src
COPY ["src/Services/Memento/Memento.Presentation/Maktub.Services.Memento.Presentation.csproj", "src/Services/Memento/Memento.Presentation/"]
RUN dotnet restore "src/Services/Memento/Memento.Presentation/Maktub.Services.Memento.Presentation.csproj"
COPY . .
WORKDIR "/src/src/Services/Memento/Memento.Presentation"
RUN dotnet build "Maktub.Services.Memento.Presentation.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Maktub.Services.Memento.Presentation.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Maktub.Services.Memento.Presentation.dll"]
