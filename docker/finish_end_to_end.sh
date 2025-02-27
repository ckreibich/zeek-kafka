#!/usr/bin/env bash
#
#  Copyright 2020-2021 Zeek-Kafka
#  Copyright 2020-2021 The Apache Software Foundation
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

#
# This script should be run _after_ run_end_to_end.sh when you are finished with your testing and the containers.
# Do not run this if you plan on running docker_execute_shell.sh for example
#

shopt -s nocasematch
set -u # nounset
set -e # errexit
set -E # errtrap
set -o pipefail

PROJECT_NAME="zeek-kafka"

# Stop docker compose
COMPOSE_PROJECT_NAME="${PROJECT_NAME}" docker-compose down

