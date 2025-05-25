# PowerShell Scripts for Power BI Administration and Automation
In this repository, you can find PowerShell Scripts I made to simplify and / or automate tasks in Power BI.

#### Requirements
- PowerShell 7 (Preferred) or Windows PowerShell
- PowerShell with Power BI Management modules installed. [See Microsoft documentation](https://learn.microsoft.com/en-us/powershell/power-bi/overview?view=powerbi-ps)
- Power BI tenant admin permissions

| Script | Description | Status | Related Article |
|-------------|-------------|-------------|-------------|
| ReassignCapacity_v1.1.ps1 | Reassigns a list of workspaces from their current Premium Capacity to a different target Premium Capacity using the Power BI REST API. The script first unassigns the workspaces from their current capacity and then assigns them to the specified target capacity. | Released | [Assign multiple Power BI workspaces to a different Premium Capacity](https://medium.com/@demerzel/assign-multiple-power-bi-workspaces-to-a-different-premium-capacity-57fa13a7faf1) |
| AddUserToWorkspace_v1.0.ps1 | Add a user or a group to a list of Power BI workspaces or to all workspaces in your Organization. | WIP | |

