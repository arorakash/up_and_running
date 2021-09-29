import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
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
                download_dir
            ]
        )

        key_pair_dirname = config['key_pair_filename'].rsplit(".", 1)[0]
        key_pair_dir = f"{download_dir}/{key_pair_dirname}"

        subprocess_command_list.append(
            f"cp {key_pair_dir}/* {target_dir}"
        )

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
