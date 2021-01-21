FROM steamcmd/steamcmd:windows
RUN mkdir /server; ./steamcmd.exe +login anonymous +force_install_dir c:\server +app_update 556450 +quit
WORKDIR /server
ADD docker-run.ps1 .
ENTRYPOINT [ "powershell.exe", "-ExecutionPolicy", "bypass", "/server/docker-run.ps1" ]
