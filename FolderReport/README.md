<h3>Folder Analysis Report</h3>

This report will provide some analysis on a folder of your choosing. You will need to run the PowerShell Script (FolderReport.ps1) and provide a folder path for it to run on. Example if the PowerShell script is in c:\Temp\Scripts\ and you want to perform a folder analysis against all sub-folders and files in c:\Temp:

<code>c:\Temp\Scripts\FolderReport.ps1 -FolderPath "c:\Temp"</code>

There are some free tools to use to get the raw data of folders such as PowerShell and WinDirStat but I wanted a way to visualize it all in Power BI. This report will show you the raw output, which parent folders are the largest in size, the file extensions consuming the most storage space and the top 100 largest files.
