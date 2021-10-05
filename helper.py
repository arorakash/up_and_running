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


def make_apt_purge_command(purge_list, flags, sudo=True):
    return_command_components = list()

    if sudo:
        return_command_components.append("sudo")

    return_command_components.extend(["apt", "purge"])

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


def make_deb_install_command(deb_filepath, sudo=True):
    return_command_components = list()

    if sudo:
        return_command_components.append("sudo")

    return_command_components.extend(["dpkg", "-i", deb_filepath])

    return " ".join(return_command_components)


def create_git_clone_command(git_remote, clone_dir, sudo=False):
    return_command_components = list()

    if sudo:
        return_command_components.append("sudo")

    return_command_components.extend(["git", "clone", git_remote, clone_dir])

    return " ".join(return_command_components)


def make_apt_entries_command_list(gpg_url, sources_entry, sources_target_file):
    return_command_list = list()

    subprocess_command = f"wget -qO- {gpg_url} | sudo apt-key add -"
    return_command_list.append(subprocess_command)

    subprocess_command = f"echo 'deb {sources_entry}' | sudo tee {sources_target_file}"
    return_command_list.append(subprocess_command)

    return return_command_list


def make_add_apt_repository_command(ppa, sudo=True):
    return_command_components = list()

    if sudo:
        return_command_components.append("sudo")

    return_command_components.extend(["add-apt-repository", f"ppa:{ppa}"])

    return " ".join(return_command_components)


def download_installation_file(url, target_file, flags, re_download, only_download):
    will_download = True

    if os.path.exists(target_file):
        if not re_download:
            will_download = False

    if will_download:
        subprocess_command = [
            'wget',
            url,
            '-P',
            target_file,
        ]

        if flags:
            for flag_key, flag_value in flags.items():
                subprocess_command.extend([flag_key, flag_value])

        execute_subprocess_command(subprocess_command)

    if only_download:

        if not will_download:
            raise CustomException("installation file already exists. skipping installation")

        raise CustomException("installation file downloaded. skipping installation")


def make_purge_dirs_command_list(purge_dirs, sudo=True):
    sudo_ = str()
    if sudo:
        sudo_ = "sudo "

    return_command_list = list()
    for dir_ in purge_dirs:
        return_command_list.append(
            f"{sudo_}rm -rf {dir_}"
        )

    return return_command_list


def make_uncompress_command(filepath, uncompress_location, sudo=True):
    return_command_components = list()

    return_command_components.append('sudo')

    if filepath.endswith('tar.bz2'):
        return_command_components.append(['tar', '-xjvf', filepath, '-C', uncompress_location])

    if filepath.endswith('tar.gz'):
        return_command_components.append(['tar', '-xzvf', filepath, '-C', uncompress_location])

    if filepath.endswith('tar.xz'):
        return_command_components.append(['tar', '-xvf', filepath, '-C', uncompress_location])

    return " ".join(return_command_components)


def make_dir_rename_command(dir_selector, target_name, sudo=True):
    sudo_ = str()
    if sudo:
        sudo_ = 'sudo '

    return f"{sudo_}mv {dir_selector} {target_name}"


def make_file_executable_command(filepath):
    sudo_ = str()
    if sudo:
        sudo_ = 'sudo '

    return f"{sudo_}chmod a+x {filepath}"


def make_link_command(link_this, to_this, sudo=True):
    sudo_ = str()
    if sudo:
        sudo_ = "sudo "

    return f"{sudo_}ln -s {link_this} {to_this}"


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
