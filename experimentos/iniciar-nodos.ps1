


$exe = "$env:USERPROFILE\Downloads\syncthing-windows-amd64-v2.1.7\syncthing-windows-amd64-v2.1.7\syncthing.exe"

if (-not (Test-Path $exe)) {
    Write-Error "No se encontro syncthing.exe en la ruta indicada."
    exit 1
}
#Nodo A
Start-Process -FilePath $exe -ArgumentList @(
    "--no-browser"
)
#Nodo B
Start-Process -FilePath $exe -ArgumentList @(
    "--home=$env:USERPROFILE\Syncthing-Lab\Config-B"
    "--gui-address=127.0.0.1:8385"
    "--no-browser"
)

Write-Host "Se solicito el inicio de ambos nodos."
Write-Host "Nodo A: http://127.0.0.1:8384"
Write-Host "Nodo B: http://127.0.0.1:8385"
