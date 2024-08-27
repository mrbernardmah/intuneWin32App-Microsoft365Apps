$Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ProjectProRetail - en-us"
$Name = "DisplayName"
$Type = "STRING"
$Value = "Microsoft Project - en-us"
 
Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction Stop | Select-Object -ExpandProperty $Name
    If ($Registry -eq $Value){
        Write-Output "Detected"
       Exit 0
    } 

    Exit 1
} 

Catch {

    Exit 1
}