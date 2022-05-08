function ListFiles {
  param (
    [Parameter(Mandatory = $true)]
    $FullPath
  )

  try {
    $files = Get-ChildItem -Path $FullPath -File -ErrorAction Stop | Select-Object Name, LastWriteTime, CreationTime | Out-String
    Write-Host $files    
  }
  catch {
    Write-Warning "Please check the folder path"
  } 
  
}
