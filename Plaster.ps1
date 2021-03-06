<#
$manifestProperties = @{
    Path            = "GIT:\PlasterTemplate\PlasterManifest.xml"
    Title           = "Full Module Template"
    TemplateName    = 'FullModuleTemplate'
    TemplateVersion = '0.0.1'
    Author          = 'Daniel Gruber'
}

New-Item -Path FullModuleTemplate -ItemType Directory
New-PlasterManifest @manifestProperties 
#>


$plaster = @{
    TemplatePath    = "GIT:\PlasterTemplate" #(Split-Path $manifestProperties.Path)
    DestinationPath = "GIT:\module"
    FullName = "Daniel Gruber"
    ModuleName = "PSVault"
    ModuleDesc = "Here is a module description"
    Version = "1.0.0"
    GitHubUserName = "ForeachCookieInJarGrowALittle"
    GitHubRepo = "PSVault"
}

If (!(Test-Path $plaster.DestinationPath)) {
    New-Item -ItemType Directory -Path $plaster.DestinationPath
}
Invoke-Plaster @plaster -Verbose

<#
Remove-item $plaster.DestinationPath -Recurse -Force 
#>