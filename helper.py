import os
import time
import subprocess

def read_file_to_list(filepath):
    with open(filepath) as fh:
        return [line.strip() for line in fh.readlines()]

def write_list_to_file(list_, filepath):
    with open(filepath, 'w') as fh:
        for item in list_:
            fh.write(item)
            fh.write(os.linesep)

def ensure_dir_exists(dirpath):
    if not os.path.exists(dirpath):
        os.makedirs(dirpath)

def execute_subprocess_command(subprocess_command):
    shell_flag = False

    if type(subprocess_command) in (str,):
        shell_flag = True

    subprocess_return = subprocess.run(subprocess_command, shell=shell_flag)

    return subprocess_return

def get_home_dir():
    return os.environ['HOME']

def sleep(sleep_time):
    time.sleep(sleep_time)

class CustomException(Exception):
    pass
