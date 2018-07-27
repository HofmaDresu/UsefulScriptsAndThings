:: Assumes image is sized for xxxhdpi / 3x
:: Assumes magick by imagemagick is on the path
@ECHO OFF


:: ANDROID
:: Prepare directories
mkdir android
cd android
mkdir drawable-xxxhdpi
mkdir drawable-xxhdpi
mkdir drawable-xhdpi
mkdir drawable-hdpi
mkdir drawable-mdpi
cd ..

:: Convert images
magick convert %1 ./android/drawable-xxxhdpi/%1
magick convert %1 -resize 75%% ./android/drawable-xxhdpi/%1
magick convert %1 -resize 50%% ./android/drawable-xhdpi/%1
magick convert %1 -resize 37.5%% ./android/drawable-hdpi/%1
magick convert %1 -resize 25%% ./android/drawable-mdpi/%1

:: IOS
:: Prepare directories
mkdir iOS
cd iOS
mkdir %~n1.imageset
cd ..

:: Convert images
magick convert %1 ./iOS./%~n1.imageset/%~n1_3x%~x1
magick convert %1 -resize 66.6%% ./iOS./%~n1.imageset/%~n1_2x%~x1
magick convert %1 -resize 33.3%% ./iOS./%~n1.imageset/%1

:: create contents file
cd ./iOS/%~n1.imageset
echo { >> Contents.json
echo     "images": [ >> Contents.json
echo         { >> Contents.json
echo             "filename": "%1", >> Contents.json
echo             "idiom": "universal", >> Contents.json
echo             "scale": "1x" >> Contents.json
echo         }, >> Contents.json
echo         { >> Contents.json
echo             "filename": "%~n1_2x%~x1", >> Contents.json
echo             "idiom": "universal", >> Contents.json
echo             "scale": "2x" >> Contents.json
echo         }, >> Contents.json
echo         { >> Contents.json
echo             "filename": "%~n1_3x%~x1", >> Contents.json
echo             "idiom": "universal", >> Contents.json
echo             "scale": "3x" >> Contents.json
echo         } >> Contents.json
echo     ], >> Contents.json
echo     "info": { >> Contents.json
echo         "author": "xcode", >> Contents.json
echo         "version": 1 >> Contents.json
echo     } >> Contents.json
echo } >> Contents.json
cd ../..
