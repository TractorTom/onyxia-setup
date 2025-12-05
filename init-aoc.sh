#!/usr/bin/env bash
set -euo pipefail

init_dir="/home/onyxia/.cache/init"
mkdir -p "${init_dir}"
chown -R onyxia:users "${init_dir}"


GIT_REPO=Advent-of-Code

echo 'PROJ_DIR="/home/onyxia/work/${GIT_REPO}"' >> "/home/onyxia/.Renviron"
chown onyxia:users "/home/onyxia/.Renviron"

cd ${init_dir}
echo "v1.14.7"

curl -fsSL -O "https://raw.githubusercontent.com/TractorTom/onyxia-setup/refs/heads/main/library/setup-git-TractorTom.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/rjdverse-on-onyxia/main/library/setup-rstudio-prefs.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/rjdverse-on-onyxia/main/library/setup-locales.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/rjdverse-on-onyxia/main/library/setup-rprofile.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/rjdverse-on-onyxia/main/library/setup-air.sh"
curl -fsSL -O "https://raw.githubusercontent.com/TanguyBarthelemy/rjdverse-on-onyxia/main/library/setup-firacode.sh"

chmod +x "setup-git-TractorTom.sh"
chmod +x "setup-rstudio-prefs.sh"
chmod +x "setup-locales.sh"
chmod +x "setup-rprofile.sh"
chmod +x "setup-air.sh"
chmod +x "setup-firacode.sh"

"./setup-git-TractorTom.sh"
echo "setup git ok"
"./setup-rstudio-prefs.sh"
echo "setup prefs ok"
"./setup-locales.sh"
echo "setup locales ok"
"./setup-rprofile.sh"
echo "setup rprofile ok"
"./setup-air.sh"
echo "setup air ok"
"./setup-firacode.sh"
echo "setup fira ok"

cd "/home/onyxia/work"
git clone https://TractorTom:${GITHUB_TRACTORTOM}@github.com/TractorTom/Advent-of-Code.git
chown -R onyxia:users ${GIT_REPO}/
echo "setup git adv ok"
