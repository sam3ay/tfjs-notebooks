# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0
set -eux

###############
#  VARIABLES  #
###############

# CODE_SERVER_DOWNLOAD_URL="https://github.com/aws-samples/amazon-sagemaker-codeserver/releases/download/v0.1.5/amazon-sagemaker-codeserver-0.1.5.tar.gz"
# # String pattern maching to isolate folder name
# CODE_SERVER_ARCHIVE=${CODE_SERVER_DOWNLOAD_URL}

# #############
# #  INSTALL  #
# #############
# # Download and extract codeserver files
# curl -LO ${CODE_SERVER_DOWNLOAD_URL}
# tar -xvzf ${CODE_SERVER_ARCHIVE}

# # install code server files
# cd ${CODE_SERVER_ARCHIVE%.tar*}/install-scripts/studio
# chmod +x install-codeserver.sh
# ./install-codeserver.sh

#Install codeserver
curl -sSL https://raw.githubusercontent.com/aws-samples/amazon-sagemaker-codeserver/main/install-scripts/studio/install-codeserver.sh | bash /dev/stdin

# Install dotnet LTS
curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel LTS




