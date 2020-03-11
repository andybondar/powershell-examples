# powershell-examples

In the `isolated_network.ps1` script here:
```
# Isolated Network IP and Prefix Length
$ip = "10.2.2.15"
$prefix = 24
```
specify appropriate IP address and subnet prefix
<br/>
Run **Windows Command Prompt** as Administrator
<br/>
Use `powershell.exe` to run the script. See example below:
```
powershell.exe -NoLogo -NonInteractive -ExecutionPolicy Unrestricted -File "C:\Users\John.Smith\isolated_network.ps1"
```
Make sure to specify Path to the script appropriate for your environment.