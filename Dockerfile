FROM 975705621860.dkr.ecr.af-south-1.amazonaws.com/sanlam-base/dotnet-10-sdk:latest

WORKDIR /app
COPY . .

RUN dotnet restore
RUN dotnet build -c Release
RUN dotnet publish -c Release -o out

CMD ["dotnet", "out/YourApp.dll"]