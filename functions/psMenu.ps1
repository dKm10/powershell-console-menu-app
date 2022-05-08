function psMenu {
  
  Clear-Host
  Write-Host @"
  |-----------------------------------------------------------------|
  |              PS CONSOLE APP                                     |
  |-----------------------------------------------------------------|
  |                                                                 |
  |   1) List Folders in Directory                                  |
  |   2) List Files in Directory                                    |
  |   3) Validate account in AD                                     |
  |   4) Create Admin Account for User                              |
  |   Q) Quit                                                       |
  |                                                                 |
  |-----------------------------------------------------------------|
"@

  $option = Read-Host "Enter your option"

  return($option)
  
}
