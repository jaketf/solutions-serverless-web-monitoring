#!/usr/bin/env bash
# Copyright 2020 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -eao pipefail

TERRAFORM_VERSION="0.12.0"
TERRAFORM_BASE_URL="https://releases.hashicorp.com/terraform"
TERRAFORM_ZIP="terraform_${TERRAFORM_VERSION}_$(uname | tr '[:upper:]' '[:lower:]')_amd64.zip"
echo "Downloading from ${TERRAFORM_BASE_URL}/${TERRAFORM_VERSION}/${TERRAFORM_ZIP}"
curl -Lo /tmp/terraform.zip "${TERRAFORM_BASE_URL}/${TERRAFORM_VERSION}/${TERRAFORM_ZIP}"
sudo unzip /tmp/terraform.zip -d /bin