
FROM microsoft/dotnet:latest

ENV ASPNETCORE_URLS http://*:3000

COPY . /app

WORKDIR /app

RUN dotnet restore

EXPOSE 3000

ENTRYPOINT dotnet run

RUN chmod -R ug+rwx /app
