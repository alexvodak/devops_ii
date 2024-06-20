dotnet sonarscanner begin /k:"dofd-05-dotnet-alexvodak" /d:sonar.host.url="http://wsl-host.internal:9000"  /d:sonar.token="sqp_****"
dotnet build
dotnet sonarscanner end /d:sonar.token="sqp_***"