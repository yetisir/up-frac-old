import os
import shutil
import sys

def clearFolder(folder):
    for file in os.listdir(folder):
        path = os.path.join(folder, file)
        try:
            if os.path.isfile(path):
                os.remove(path)
        except:
            pass
            
if __name__ == '__main__': 
    clargs = sys.argv
    if len(clargs) >= 2:
        clearFolder(clargs[1])
