import os
import sys


BASE_DIR = os.path.dirname(os.path.realpath(__file__))
ROOT_DIR = os.path.dirname(BASE_DIR)

sys.path.append(ROOT_DIR)

import helper


def handler(config, common):
    try:
        download_dir = common['download_dir']
        download_filepath = os.path.join(download_dir, config['download']['download_filename'])

        helper.download_installation_file(
            url=config['download']['url'],
            target_file=download_filepath,
            flags=config['download'].get('flags'),
            re_download=common.get('re_download', False),
            only_download=common.get('only_download', False)
        )
        helper.sleep(common['sleep_time'])

        subprocess_command_list = list()

        subprocess_command = helper.make_uncompress_command(
            filepath=download_filepath,
            uncompress_location='/opt/'
        )
        subprocess_command_list.append(subprocess_command)

        subprocess_command = helper.make_dir_rename_command(
            dir_selector='/opt/Postman*',
            target_name='/opt/postman',
            sudo=True
        )
        subprocess_command_list.append(subprocess_command)

        subprocess_command = helper.make_link_command(
            link_this='/opt/postman/app/Postman',
            to_this='/usr/bin/postman'
        )
        subprocess_command_list.append(subprocess_command)

        desktop_entry_filepath = os.path.join(BASE_DIR, config['desktop_entry']['desktop_entry_filename'])
        target_dir = config['desktop_entry']['desktop_entry_target_dir']

        subprocess_command = f'cp {desktop_entry_filepath} {target_dir}'
        subprocess_command_list.append(subprocess_command)

        for command in subprocess_command_list:
            command_result = helper.execute_subprocess_command(command)

            if command_result.returncode not in (0,):
                raise helper.CustomException(str(command_result.stderr))

            helper.sleep(common['sleep_time'])

        return True, 'success'

    except Exception as e:
        return False, str(e)
