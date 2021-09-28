import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def place_ssh_keys(config, common):
    try:
        download_dir = common['download_dir']
        target_dir = f"{common['home_dir']}/.ssh/"

        helper.ensure_dir_exists(target_dir)

        key_pair_file = f"{download_dir}/{config['key_pair_filename']}"

        subprocess_command_list = list()

        subprocess_command_list.append(
            [
                'unzip',
                key_pair_file,
                '-d',
                target_dir
            ]
        )

        key_pair_dir = f"{download_dir}/{config['key_pair_filename']}"

        subprocess_command_list.append(
            [
                'mv',
                f"{key_pair_dir}/*",
                target_dir
            ]
        )

        print("yup, we do get executed")
        raise helper.CustomException("Sample custom error")

        subprocess_command_list = [['echo', 'hello']]

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
