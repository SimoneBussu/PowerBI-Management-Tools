# PowerShell Scripts for Power BI

In this repository, you can find some PowerShell Scripts I made to simplify and / or automate tasks in Power BI.

| Script | Description |
|-------------|-------------|
| reassigncapacity.ps1 | Reassigns a list of workspaces from their current Premium Capacity to a different target Premium Capacity using the Power BI REST API. The script first unassigns the workspaces from their current capacity and then assigns them to the specified target capacity. |

#### Requirements
- PowerShell with Power BI Management modules installed. Here is the link to the Microsoft documentation: https://learn.microsoft.com/en-us/powershell/power-bi/overview?view=powerbi-ps
- Power BI tenant admin permissions
