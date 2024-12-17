#!/bin/zsh
DTEX_CONFIG_PATH="${HOME}/.config/dtex"
# Update stevedore
function update_bastion() {
  stevedore_id=$(glab api "/projects?search=stevedore" | jq '.[]|.id')
  glab api '/projects/'"${stevedore_id}"'/repository/files/bastions%2Fbastion?ref=main' | jq -r '.content' | base64 -d  > ~/bin/bastion
  glab api '/projects/'"${stevedore_id}"'/repository/files/bastions%2Fbastion?ref=beta' | jq -r '.content' | base64 -d  > ~/bin/bastion-beta
}

function fetch_all_repos() {
  cd ~/src/ || exit
  echo "Cloning all fedramp repos"
  glab api "/groups?top_level_only=true" | jq -r '.[].name' | \
    while IFS=$'\t' read -r group; do
      echo "Cloning all repos in [$group]"
      glab repo clone --group  "$group" --preserve-namespace --archived=false --paginate
    done
}

function toptal_gitignore() {
  curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;
}

function generate_global_gitignore() {
  global_gitignore=~/.gitignore
  custom_patterns='
## Custom globals
**.idea/*
out/
generated/
*.cast
*-bkp
*-tmp
*out
*.monokle*
.monokle/*
'
  toptal_gitignore certificates,git,macos,windows,go,python,nodejs > "$global_gitignore"
  echo "$custom_patterns" >> "$global_gitignore"
}

function refreshProjects() {
  # if directory does not exist create it
  if [ ! -d "${DTEX_CONFIG_PATH}" ]; then
    mkdir "${DTEX_CONFIG_PATH}"
  fi
  # if file is older than 4 hours refresh it
  if [ ! -f "${PROJECTS_FILE}" ] || [ "$(find "${PROJECTS_FILE}" -mmin +240)" ]; then
    printf "\t[+] Refreshing projects list..."
    gcloud projects list --format json | jq -r '.[]|.projectId' | sort  > "${PROJECTS_FILE}"
  fi
  # for each line of file ${PROJECTS_FILE} print line
  printf "\t[+] All projects in FedRAMP"
  while IFS= read -r line; do
    printf "\t  | %s" "${line}"
  done < ${PROJECTS_FILE}
}

function tenantSelector() {
  refreshProjects
  export TENANT_NAME=$(grep tenant "${PROJECTS_FILE}"| cut -d "-" -f2 | fzf)
}

function projectSelector() {
  refreshProjects
  export PROJECT_ID=$(grep -v tenant "${PROJECTS_FILE}"| fzf)
}

function proxy() {
  HTTPS_PROXY="socks5://localhost:8080" $@
}


# tofu
function tunl() {
  tofu force-unlock -force $1
}

# handy
function stamp() {
  printf "\e]1337;SetBadgeFormat=%s\a" \
  $(echo -n "TENANT_NAME [$TENANT_NAME]" | base64)
}




#  #https://github.com/karthik/wesanderson/blob/master/R/colors.R

BottleRocket=("#FAD510" "#CB2314" "#273046" "#354823" "#1E1E1E")
Rushmore=("#E1BD6D" "#EABE94" "#0B775E" "#35274A" "#F2300F" "#E1BD6D" "#EABE94" "#0B775E" "#35274A" "#F2300F")
Royal=("#899DA4" "#C93312" "#FAEFD1" "#DC863B" "#9A8822" "#F5CDB4" "#F8AFA8" "#FDDDA0" "#74A089")
Zissou=("#3B9AB2" "#78B7C5" "#EBCC2A" "#E1AF00" "#F21A00")
Darjeeling=("#FF0000" "#00A08A" "#F2AD00" "#F98400" "#5BBCD6" "#ECCBAE" "#046C9A" "#D69C4E" "#ABDDDE" "#000000")
Chevalier=("#446455" "#FDD262" "#D3DDDC" "#C7B19C")
FantasticFox=("#DD8D29" "#E2D200" "#46ACC8" "#E58601" "#B40F20")
Moonrise=("#F3DF6C" "#CEAB07" "#D5D5D3" "#24281A" "#798E87" "#C27D38" "#CCC591" "#29211F" "#85D4E3" "#F4B5BD" "#9C964A" "#CDC08C" "#FAD77B")
Cavalcanti=("#D8B70A" "#02401B" "#A2A475" "#81A88D" "#972D15")
GrandBudapest=("#F1BB7B" "#FD6467" "#5B1A18" "#D67236" "#E6A0C4" "#C6CDF7" "#D8A499" "#7294D4")
IsleofDogs=("#9986A5" "#79402E" "#CCBA72" "#0F0D0E" "#D9D0D3" "#8D8680" "#EAD3BF" "#AA9486" "#B6854D" "#39312F" "#1C1718")
FrenchDispatch=("#90D4CC" "#BD3027" "#B0AFA2" "#7FC0C6" "#9D9C85")
AsteroidCity=("#0A9F9D" "#CEB175" "#E54E21" "#6C8645" "#C18748" "#C52E19" "#AC9765" "#54D8B1" "#b67c3b" "#175149" "#AF4E24" "FBA72A" "D3D4D8" "CB7A5C" "5785C1")


function print_variable_value() {
  color=$1
  index=$2
  printf "\x1b]11;${(P)${color}[$index]}\x1b\\"

}

function reset_background() {
  printf "\x1b]111\x1b\\"
}

