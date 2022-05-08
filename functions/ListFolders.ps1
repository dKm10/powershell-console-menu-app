function ListFolders {
  param (
    [Parameter(Mandatory = $true)]
    $FullPath
  )

  try {
    $folders = Get-ChildItem -Path $FullPath -Directory -ErrorAction Stop | Select-Object Name, LastWriteTime, CreationTime | Out-String
    Write-Host $folders
    
  }
  catch {
    Write-Warning "Please check folder path"
  } 
  
}