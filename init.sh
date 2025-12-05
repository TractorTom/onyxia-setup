#!/usr/bin/env bash
set -euo pipefail

init_dir="/home/onyxia/.cache/init"
mkdir -p "${init_dir}"
chown -R onyxia:users "${init_dir}"

cd ${init_dir}
echo "v1.14.1-gh-tractortom"

curl -fsSL -O "https://raw.githubusercontent.com/TractorTom/onyxia-setup/refs/heads/main/library/setup-git-TractorTom.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/onyxia-setup/main/library/setup-rstudio-prefs.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/onyxia-setup/main/library/setup-locales.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/onyxia-setup/main/library/setup-rprofile.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/onyxia-setup/main/library/setup-air.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/onyxia-setup/main/library/setup-firacode.sh"

chmod +x "setup-git-TractorTom.sh"
chmod +x "setup-rstudio-prefs.sh"
chmod +x "setup-locales.sh"
chmod +x "setup-rprofile.sh"
chmod +x "setup-air.sh"
chmod +x "setup-firacode.sh"

"./setup-git-TractorTom.sh"
"./setup-rstudio-prefs.sh"
"./setup-locales.sh"
"./setup-rprofile.sh"
"./setup-air.sh"
"./setup-firacode.sh"
