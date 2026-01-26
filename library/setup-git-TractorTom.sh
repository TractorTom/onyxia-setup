#!/bin/sh

# Préparer Git
git config --global user.name "Tanguy BARTHELEMY"
git config --global user.email tangbarth@hotmail.fr
git config --global credential.username TractorTom
git config --global credential.helper 'cache --timeout=604800'

echo "GITHUB_PAT=\${GITHUB_TRACTORTOM}" >> "${HOME}/.Renviron"
