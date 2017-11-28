
FROM microsoft/dotnet:latest

ENV ASPNETCORE_URLS http://*:3000

COPY . /var/www

WORKDIR /var/www

RUN dotnet restore

EXPOSE 3000

ENTRYPOINT dotnet run
