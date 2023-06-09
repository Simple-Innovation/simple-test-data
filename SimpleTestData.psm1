<#
.SYNOPSIS
Randomly copies data in one folder into another folder until a limit is reached.

.DESCRIPTION
Allows a set of seed data to be used to create a data collection of a known total size.

It will copy any child item in the source folder and generate a guaranteed unique name for it, so if an item is copied multiple times it will not cause issues.

.EXAMPLE
#>

function Copy-DataCollection {
    [CmdletBinding(SupportsShouldProcess)]
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

$SourceItemCollection = @(Get-ChildItem `
    -Path:$SourceFolder)

[double]$MaximumByteCurrent = 0

while ($MaximumByteCurrent -lt $MaximumByteTotal) {
    $SourceIndex = switch ($SourceItemCollection.Length) {
        0 {
            throw "No items in source folder"
        }
        1 {
            0
        }
        default {
            Get-Random -Minimum:0 -Maximum:$($SourceItemCollection.Length - 1)
        }
    } 

    $SourceItem = $SourceItemCollection[$SourceIndex]

    switch ($SourceItem.GetType()) {
        "System.IO.DirectoryInfo" {
            $SourceItemLength = $(Get-ChildItem $SourceItem.FullName -Recurse | Measure-Object -Property Length -Sum).Sum
            $SourceItemPath = "$($SourceItem.FullName)/*"
            $TargetItemName = [System.IO.Path]::GetFileNameWithoutExtension([System.IO.Path]::GetRandomFileName())
            $TargetItemPath = Join-Path `
                -Path:$TargetFolder `
                -ChildPath:$TargetItemName
            if ($PSCmdlet.ShouldProcess("New-Item", $TargetItemPath)) {
                New-Item `
                    -Path:$TargetItemPath `
                    -ItemType:Directory
            }
        }
        "System.IO.FileInfo" {
            $SourceItemLength = $SourceItem.Length
            $SourceItemPath = $SourceItem.FullName
            $TargetItemName = [System.IO.Path]::GetFileNameWithoutExtension([System.IO.Path]::GetRandomFileName()) + $SourceItem.Extension   
            $TargetItemPath = Join-Path `
                -Path:$TargetFolder `
                -ChildPath:$TargetItemName
        }
        default {
            throw $SourceItem.GetType()
        }
    }

    if ($PSCmdlet.ShouldProcess("Copy-Item", $SourceItemPath)) {
        Write-Verbose -Message:"Copy-Item -Path:""$SourceItemPath"" -Destination:""$TargetItemPath"" -Recurse"
        Copy-Item `
            -Path:"$SourceItemPath" `
            -Destination:"$TargetItemPath" `
            -Recurse
    }

    $MaximumByteCurrent = $MaximumByteCurrent + $SourceItemLength
    Write-Verbose -Message:"MaximumByteCurrent: $($MaximumByteCurrent.ToString('N0'))"
}
}
