* Clone python276 environment from https://github.com/yairbloom/python276_forVS2013.git to temp directory.
* Open the VC project file [temp directory]\Python276\PC\VS8.0\python.vcxproj on the VS2013 and compile it debug and realse.
* Set XjetPythonDir environment varibale to target directory.
* Install python on $XjetPythonDir by: [temp directory]\Python276\PC\VS8.0\amd64\python.exe [temp directory]\Python276\PC\VS8.0\manual_install.py
* Test python by open new cmd terminal and typing python and python_d