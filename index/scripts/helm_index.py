import json
import os
import re
import subprocess
import sys

def index():
    '''
    Run `helm repo index` command
    '''
    result = subprocess.run(
                 sys.argv[1:],
                 check=True,
                 stdout=subprocess.PIPE
    )
    return {'index_path':os.path.join(sys.argv[-1], 'index.yaml')}


if __name__ == "__main__":
    print(json.dumps(index()))