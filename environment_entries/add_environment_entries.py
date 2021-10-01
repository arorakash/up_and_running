import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        home_dir = common['home_dir']
        file_entries_mapping = config['file_entries_mapping']

        subprocess_command_list = list()
        for file_, entries in file_entries_mapping.items():
            for entry in entries:
                subproess_command = helper.make_entry_in_file_command(
                    filepath=f"{home_dir}/{file_}",
                    entry = "",
                    sudo=False
                )

                subprocess_command_list.append(subproess_command)

                subproess_command = helper.make_entry_in_file_command(
                    filepath=f"{home_dir}/{file_}",
                    entry = entry,
                    sudo=False
                )

                subprocess_command_list.append(subproess_command)

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
