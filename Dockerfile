
<<<<<<< HEAD
FROM microsoft/dotnet
=======
FROM microsoft/dotnet:latest
>>>>>>> edc06bf37075de5f246605f7391ae7a10e5edeae

ENV ASPNETCORE_URLS http://*:3000

COPY . /app

WORKDIR /app

RUN dotnet publish -c Release -o Publish

EXPOSE 3000

<<<<<<< HEAD
WORKDIR /var/www/Publish

ENTRYPOINT dotnet net1.dll

RUN chmod -R ug+rwx /var/www
=======
ENTRYPOINT dotnet run

RUN chmod -R ug+rwx /app
>>>>>>> edc06bf37075de5f246605f7391ae7a10e5edeae
