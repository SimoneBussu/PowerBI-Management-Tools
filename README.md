# PowerShell Scripts for Power BI Administration and Automation

In this repository, you can find the PowerShell Scripts I made to simplify and / or automate tasks in Power BI.

| Script | Description |
|-------------|-------------|
| ReassignCapacity_v1.1.ps1 | Reassigns a list of workspaces from their current Premium Capacity to a different target Premium Capacity using the Power BI REST API. The script first unassigns the workspaces from their current capacity and then assigns them to the specified target capacity. |
| AddUserToWorkspace_v1.0.ps1 | Add a user or a group to a list of Power BI workspaces or to all workspaces in your Organization. |

#### Requirements
- PowerShell 7 (Preferred) or Windows PowerShell
- PowerShell with Power BI Management modules installed. Here is the link to the Microsoft documentation: https://learn.microsoft.com/en-us/powershell/power-bi/overview?view=powerbi-ps
- Power BI tenant admin permissions
