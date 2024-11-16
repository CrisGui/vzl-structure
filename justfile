alias m := make
alias b := build

watch COMMAND:
  fd . -tf -e c -e h | entr -cs "{{COMMAND}}"

make:
  premake5 gmake2

build TYPE SCOPE:
  make config={{TYPE}} {{SCOPE}}
