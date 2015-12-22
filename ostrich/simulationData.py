import os
import subprocess
if os.name == 'posix':
    sp = subprocess.Popen(["/bin/bash", "-i", "-c", "abaqus cae nogui=runAbaqus.py"])
    sp.communicate()
elif os.name == 'nt':
    os.system('abaqus cae nogui=runAbaqus.py')
os.system('python interpolateData.py')
