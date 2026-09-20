@echo off

python3 -m fontmake -i -a -o ttf -m Geran.designspace
python3 -m fontmake -i -a -o otf -m Geran.designspace
python3 -m fontmake -a -o variable -m Geran.designspace

python fix-dsig.py .\autohinted\instance_ttf\Geran-Thin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-ExtraLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-Light.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-Bold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-ExtraBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Geran-Black.ttf |
python fix-dsig.py .\instance_otf\Geran-Thin.otf |
python fix-dsig.py .\instance_otf\Geran-ExtraLight.otf |
python fix-dsig.py .\instance_otf\Geran-Light.otf |
python fix-dsig.py .\instance_otf\Geran-Regular.otf |
python fix-dsig.py .\instance_otf\Geran-Medium.otf |
python fix-dsig.py .\instance_otf\Geran-SemiBold.otf |
python fix-dsig.py .\instance_otf\Geran-Bold.otf |
python fix-dsig.py .\instance_otf\Geran-ExtraBold.otf |
python fix-dsig.py .\instance_otf\Geran-Black.otf |

python fix-dsig.py .\variable_ttf\Geran-VF.ttf |

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Geran-VF.ttf ..\fonts\vf\Geran[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit
