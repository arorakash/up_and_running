import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        subprocess_command_list = list()

        distribution = common['distribution']
        channel = config['channel']

        for key, value in config['apt_entries'].items():
            if '$CHANNEL' in value:
                config['apt_entries'][key] = value.replace('$CHANNEL', channel)

        for key, value in config['apt_entries'].items():
            if '$DISTRIBUTION' in config['apt_entries'][key]:
                config['apt_entries'][key] = value.replace('$DISTRIBUTION', distribution)

        gpg_url = config['apt_entries']['gpg_url']
        sources_entry = config['apt_entries']['sources_entry']
        sources_target_file = config['apt_entries']['sources_target_file']

        apt_entries_command_list = helper.make_apt_entries_command_list(
            gpg_url,
            sources_entry,
            sources_target_file,
        )

        subprocess_command_list.extend(apt_entries_command_list)

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
