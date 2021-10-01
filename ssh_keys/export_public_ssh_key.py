import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        ssh_dir = f"{common['home_dir']}/.ssh/"
        public_key_filename = config['public_key_filename']
        export_filename = config['export_filename']

        subprocess_command_list = list()

        subprocess_command_list.append(
            f"cat {ssh_dir}{public_key_filename} >> {common['home_dir']}/{export_filename}"
        )

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
