import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        home_dir = common['home_dir']

        subprocess_command_list = list()

        for rc_filename in config['shells_rc']:
            rc_filepath = os.path.join(home_dir, rc_filename)

            for entry in config['entries']:
                subprocess_command = helper.make_entry_in_file_command(
                    filepath=rc_filepath,
                    entry = "",
                    sudo=False
                )
                subprocess_command_list.append(subprocess_command)

                subprocess_command = helper.make_entry_in_file_command(
                    filepath=rc_filepath,
                    entry = entry,
                    sudo=False
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
