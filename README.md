UsefulScriptsAndThings
======================

A collection of scripts or small apps created to solve one-off problems

FindLongestLineOfFile.ps1
-------------------------

This is a PowerShell script that will find the length and line-number of the longest line in a file. The filename is currently a hardcoded value, so the file will need to be edited for each use.

PropertyRaiseChangedSnippet.snippet
-----------------------------------

This creates a snippet in Visual Studio 2017 to quickly create properties that call RaisePropertyChanged in the setter

WpfDependencyPropertySnippet.snippet
------------------------------------

This creates a snippet in Visual Studio 2017 to quickly create Dependency Properties for use in WPF custom controls

mobile_image_resize.cmd
-----------------------

Uses [ImageMagic](https://www.imagemagick.org/script/index.php) to create density-specific images for iOS and Android. It expects a highest-density (3x / xxxhdpi) sized image and creates scaled down copies in a useful folder structure ( \*.imageset with Contents.json for iOS, drawable-\*dpi for Android)
