import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        ppa = config['ppa']

        subprocess_command_list = list()

        add_apt_repository_command = helper.make_add_apt_repository_command(ppa=ppa)
        subprocess_command_list.append(add_apt_repository_command)

        subprocess_command = "sudo apt update"
        subprocess_command_list.append(subprocess_command)

        subprocess_command = helper.make_apt_install_command(
            install_list=config['apt_install'],
            flags=config.get('flags'),
        )
        subprocess_command_list.append(subprocess_command)

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
