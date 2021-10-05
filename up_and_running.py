import os
import time
import json
import argparse

import helper


ARG_PARSER = argparse.ArgumentParser(description="Project to get you up and running in seconds")

ARG_PARSER.add_argument(
    '--config',
    action='store',
    help='relative filepath of config file including .json extension'
)

ARG_PARSER.add_argument(
    '--only-download',
    action='store_true',
    help='only download the installation files'
)

ARG_PARSER.add_argument(
    '--re-download',
    action='store_true',
    help='re-download the installation files'
)

ARGS = ARG_PARSER.parse_args()

CONFIG_FROM_ARGS = ARGS.config
ONLY_DOWNLOAD = ARGS.only_download
RE_DOWNLOAD = ARGS.re_download

SLEEP_TIME = 2

BASE_DIR = os.path.dirname(os.path.realpath(__file__))

if CONFIG_FROM_ARGS:
    CONFIG_FILEPATH = os.path.join(BASE_DIR, CONFIG_FROM_ARGS)
else:
    CONFIG_FILENAME = 'config.json'
    CONFIG_FILEPATH = os.path.join(BASE_DIR, CONFIG_FILENAME)

INSTALLATION_CHECKPOINT_FILENAME = 'installation_checkpoints.txt'
INSTALLATION_CHECKPOINT_FILEPATH = os.path.join(BASE_DIR, INSTALLATION_CHECKPOINT_FILENAME)

STUFF_TO_INSTALL_FILENAME = 'stuff_to_install.txt'
STUFF_TO_INSTALL_FILEPATH = os.path.join(BASE_DIR, STUFF_TO_INSTALL_FILENAME)

HOME_DIR = helper.get_home_dir()

DOWNLOADS_DIRNAME = 'Downloads'
DOWNLOADS_DIR = os.path.join(HOME_DIR, DOWNLOADS_DIRNAME)
# DOWNLOADS_DIR = f"{HOME_DIR}/{DOWNLOADS_DIR}"

DISTRIBUTION = 'debian'

COMMON = {
    'home_dir': HOME_DIR,
    'download_dir': DOWNLOADS_DIR,
    'sleep_time': SLEEP_TIME,
    'distribution': DISTRIBUTION,
}

if ONLY_DOWNLOAD:
    COMMON['only_download'] = True

if RE_DOWNLOAD:
    COMMON['re_download'] = True

# read config file
with open(CONFIG_FILEPATH) as fh:
    installation_config = json.load(fh)

# installation checkpoints
installation_checkpoints = list()
if os.path.exists(INSTALLATION_CHECKPOINT_FILEPATH):
    installation_checkpoints = helper.read_file_to_list(INSTALLATION_CHECKPOINT_FILEPATH)

# stuff_to_install
stuff_to_install = list()
if os.path.exists(STUFF_TO_INSTALL_FILEPATH):
    stuff_to_install = helper.read_file_to_list(STUFF_TO_INSTALL_FILEPATH)

for step_dict in installation_config:
    step = list(step_dict.keys())[0]
    config = list(step_dict.values())[0]

    if step in installation_checkpoints:
        continue

    if config.get('skip', False):
        continue

    if ONLY_DOWNLOAD and 'download' not in config:
        continue

    if stuff_to_install and step not in stuff_to_install:
        continue

    install_scripts_dir = config['install_scripts_dir']

    exec(f"from {install_scripts_dir}.{step} import handler")

    status, message = handler(config, COMMON)

    if status:
        installation_checkpoints.append(step)

    print(message)

    helper.write_list_to_file(installation_checkpoints, INSTALLATION_CHECKPOINT_FILEPATH)

    time.sleep(SLEEP_TIME)
