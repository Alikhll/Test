
FROM microsoft/dotnet

ENV ASPNETCORE_URLS http://*:3000

COPY . /var/www

WORKDIR /var/www

RUN dotnet publish -c Release -o Publish

EXPOSE 3000

WORKDIR /var/www/Publish

ENTRYPOINT dotnet net1.dll

RUN chmod -R ug+rwx /var/www