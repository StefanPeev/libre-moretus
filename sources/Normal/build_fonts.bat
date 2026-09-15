@echo off

python3 -m fontmake -i -a -o ttf -m Prolog.designspace
python3 -m fontmake -i -a -o otf -m Prolog.designspace
python3 -m fontmake -a -o variable -m Prolog.designspace

python fix-dsig.py .\autohinted\instance_ttf\Prolog-Thin.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-ExtraLight.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-Light.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-Bold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-ExtraBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Prolog-Black.ttf |
python fix-dsig.py .\instance_otf\Prolog-Thin.otf |
python fix-dsig.py .\instance_otf\Prolog-ExtraLight.otf |
python fix-dsig.py .\instance_otf\Prolog-Light.otf |
python fix-dsig.py .\instance_otf\Prolog-Regular.otf |
python fix-dsig.py .\instance_otf\Prolog-Medium.otf |
python fix-dsig.py .\instance_otf\Prolog-SemiBold.otf |
python fix-dsig.py .\instance_otf\Prolog-Bold.otf |
python fix-dsig.py .\instance_otf\Prolog-ExtraBold.otf |
python fix-dsig.py .\instance_otf\Prolog-Black.otf |

python fix-dsig.py .\variable_ttf\Prolog-VF.ttf |

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Prolog-VF.ttf ..\fonts\vf\Prolog[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit
