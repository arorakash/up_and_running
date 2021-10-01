import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        algorithm = config['algorithm']
        size = config['size']
        email = config['email']

        subprocess_command_list = list()

        subprocess_command_list.append(
            [
                'ssh-keygen',
                '-t',
                algorithm,
                '-b',
                size,
                '-C',
                email,
            ]
        )

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
