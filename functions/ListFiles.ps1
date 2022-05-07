function ListFiles {
  param (
    [Parameter(Mandatory = $true)]
    $FullPath
  )

  try {
    $files = Get-ChildItem -Path $FullPath -File -ErrorAction Stop | Select-Object Name, LastWriteTime, CreationTime
    Write-Host $files    
  }
  catch {
    Write-Warning "Please check the folder path"
  } 
  
}