<#

Author: Simone Bussu
LinkedIn: www.linkedin.com/in/simone-bussu
Description: Assign a list of workspaces to a different Premium Capacity
Version: 1.0

#>

#Set the variables for the log file
$StartDate = Get-Date
$TranscriptDate = (($StartDate.GetDateTimeFormats("s") -replace "-", "") -replace ":", "") -replace "T", "_"
$TranscriptDir = "YourTranscriptDirectory"

$TranscriptName = $TranscriptDate+"_"+"ReassignCapacity.txt"
$TranscriptPath = $TranscriptDir+"\"+$TranscriptName

# Start logging

Start-Transcript -Path $TranscriptPath -UseMinimalHeader 

# Set variables

$CapacityID = "YourTargetCapacityID"
$WorkspacesIDList = "WsID1", "WsID2"

#Connect to Power BI using a Tenant Admin Account

Connect-PowerBIServiceAccount

        $FormattedList = $WorkspacesIDList -Join ', '
        Write-Host "Unassigning workspaces: " $FormattedList 


        #Step 1: unassign the workspaces from their current Premium Capacity

        #Set the body for the API call
        $UnassignWorkspace= @{WorkspacesToUnassign=@($WorkspacesIDList)} | ConvertTo-Json

        #Invoce the Admin API
        try {
            
            Invoke-PowerBIRestMethod -Method Post -Url https://api.powerbi.com/v1.0/myorg/admin/capacities/UnassignWorkspaces -Body $UnassignWorkspace
            Write-Host "Unassign complete." -ForegroundColor Green

        }
        catch {

            Write-Error "Something failed. Error details: $_"

        }

        #Step 2: assign the workspace from the premium capacity

        Write-Host "Assign Workspace to Capacity: " $CapacityID

        #Set the body for the API call

        $AssignWorkspace = @{
            CapacityMigrationAssignments = @(@{
            targetCapacityObjectId= $CapacityID
            workspacesToAssign=@($WorkspacesIDList)
            }) }| ConvertTo-Json -Depth 3

        #Invoce the Admin API
        try {
            Invoke-PowerBIRestMethod -Method Post -Url https://api.powerbi.com/v1.0/myorg/admin/capacities/AssignWorkspaces -Body $AssignWorkspace
            Write-Host "Assign complete." -ForegroundColor Green
            Write-Host "--------------------------"
        }
        catch {
            
            Write-Error "Something failed. Error details: $_"

        }
        
  
#Log any error
Resolve-PowerBIError

#Disconnect from Power BI

Disconnect-PowerBIServiceAccount

#Stop the transcript
Stop-Transcript
