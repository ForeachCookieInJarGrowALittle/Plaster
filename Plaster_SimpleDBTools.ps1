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
    DestinationPath = "GIT:\SimpleDBTools"
    FullName = "Daniel Gruber"
    ModuleName = "SimpleDBTools"
    ModuleDesc = "Tools to simplify interaction between 'CustomObjects' and 'Databases'"
    Version = "0.1.0"
    GitHubUserName = "ForeachCookieInJarGrowALittle"
    GitHubRepo = "SimpleDBTools"
}

If (!(Test-Path $plaster.DestinationPath)) {
    New-Item -ItemType Directory -Path $plaster.DestinationPath
}
Invoke-Plaster @plaster -Verbose

<#
Remove-item $plaster.DestinationPath -Recurse -Force 
#>