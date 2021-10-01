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


def make_apt_install_command(install_list, flags, sudo=True):
    return_command_components = list()

    if sudo:
        return_command_components.append("sudo")

    return_command_components.extend(["apt", "install"])

    return_command_components.extend(install_list)

    return_command_components.append("-y")

    return " ".join(return_command_components)


def make_pip_install_command(install_list, flags, sudo=True):
    return_command_components = list()

    if sudo:
        return_command_components.append("sudo")

    return_command_components.extend(["python3", "-m", "pip", "install"])

    return_command_components.extend(install_list)

    if flags:
        for flag_key, flag_value in flags.items():
            return_command_components.extend([flag_key, flag_value])

    return " ".join(return_command_components)


def make_apt_entries_command_list(gpg_url, sources_entry, sources_target_file):
    return_command_list = list()

    subprocess_command = f"wget -qO- {gpg_url} | sudo apt-key add -"
    return_command_list.append(subprocess_command)

    subprocess_command = f"echo 'deb {sources_entry}' | sudo tee {sources_target_file}"
    return_command_list.append(subprocess_command)

    return return_command_list


def make_entry_in_file_command(filepath, entry, sudo=True):
    sudo_ = str()

    if sudo:
        sudo_ = "sudo "

    return f"{sudo_}echo '{entry}' >> {filepath}"

def get_home_dir():
    return os.environ['HOME']


def sleep(sleep_time):
    time.sleep(sleep_time)


class CustomException(Exception):
    pass
