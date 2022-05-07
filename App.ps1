# Importing functions
$psFunctionFiles = (Get-ChildItem -File -Include *ps1 .\functions\* | Select-Object FullName).FullName
foreach ($psFunctioFile in $psFunctionFiles) {
  . $psFunctioFile
}

# Display psMenu until Quit
do {
  $option = psMenu

  switch ($option) {
    1 { 
      $path = Read-Host "Enter Full Path to check for folders"
      ListFolders -FullPath $path
      Pause
    }
    2 { 
      $path = Read-Host "Enter Full Path to check for files"
      ListFiles -FullPath $path 
      Pause
    }
    3 {
      $user = Read-Host "Enter user account (SamAccountName) to validate."
      $user ; Pause
    }
    4 {
      $user = Read-Host "Enter SamAccountName for user to create admin account"
      $ticket = Read-Host "Enter ticket# for creating admin account"
      $mirror = Read-Host "Enter mirror account if any"
      $user ; $ticket ; $mirror ; Pause
    }
    { ($_ -eq 'Q') -or ($_ -eq 'q') } {
      Write-Host "Thanks for using this Application!!!"
      return
    }    
    Default {
      Write-Host "Invalid option selected. Please select a valid option!" ;
      Pause
    }
  }
  
} until (
  $option -eq 'Q' -or $option -eq 'q'
)
