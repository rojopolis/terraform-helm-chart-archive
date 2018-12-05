import json
import re
import subprocess
import sys

def package():
    '''
    Run `helm package` command
    '''
    result = subprocess.run(
                 sys.argv[1:],
                 check=True,
                 stdout=subprocess.PIPE
    )
    matches = re.match(
        r'.*: (?P<package_path>.*tgz)',
        result.stdout.decode('utf-8'),
        flags=re.DOTALL
    )
    return matches.groupdict()


if __name__ == "__main__":
    print(json.dumps(package()))