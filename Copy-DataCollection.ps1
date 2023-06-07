<#
.SYNOPSIS
Randomly copies data in one folder into another folder until a limit is reached.

.DESCRIPTION
Allows a set of seed data to be used to create a data collection of a known total size.

It will copy any child item in the source folder and generate a guaranteed unique name for it, so if an item is copied multiple times it will not cause issues.

.EXAMPLE
#>

[CmdletBinding()]
param (
    # The folder holding the seed data
    [Parameter(Mandatory)]
    [string]
    $SourceFolder,

    # The folder to copy the seed data to
    [Parameter(Mandatory)]
    [string]
    $TargetFolder,
    
    # The maximum number of bytes to copy
    [Parameter(Mandatory)]
    [double]
    $MaximumByteTotal
)

$SourceItemCollection = Get-ChildItem `
    -Path:$SourceFolder

$SourceItem = $SourceItemCollection[$(Get-Random -Minimum:0 -Maximum:$($SourceItemCollection.Length-1))]

$TargetItemName = switch ($SourceItem.GetType()) {
    "System.IO.DirectoryInfo" {
        [System.IO.Path]::GetFileNameWithoutExtension([System.IO.Path]::GetRandomFileName())   
    }
    "System.IO.FileInfo" {
        [System.IO.Path]::GetRandomFileName()   
    }
    default {
        throw $SourceItem.GetType()
    }
}

$TargetItemPath = Join-Path `
    -Path:$TargetFolder `
    -ChildPath:$TargetItemName


Copy-Item `
    -Path:$SourceItem.FullName `
    -Destination:$TargetItemPath `
    -Recurse
