alias m := make
alias b := build-all
alias t := test-all

make:
  premake5 gmake2

watch COMMAND:
  fd . -tf -e c -e h | entr -cs "{{COMMAND}}"

build TYPE SCOPE: make
  make config={{TYPE}} {{SCOPE}}

build-all: make
  @echo -e "\n=========================="
  @echo -e "Building Debug binaries..."
  @echo -e "==========================\n"
  make config=debug all

  @echo -e "\n============================"
  @echo -e "Building Release binaries..."
  @echo -e "============================\n"
  make config=release all

  @echo -e "\n==========================="
  @echo -e "Building Distro binaries..."
  @echo -e "===========================\n"
  make config=distro all

test-all: build-all
  @echo -e "\n========================="
  @echo -e "Testing Debug binaries..."
  @echo -e "=========================\n"
  for exe in $(find ./binary/test/Debug/ -type f); do $exe; done

  @echo -e "\n==========================="
  @echo -e "Testing Release binaries..."
  @echo -e "===========================\n"
  for exe in $(find ./binary/test/Release/ -type f); do $exe; done

  @echo -e "\n=========================="
  @echo -e "Testing Distro binaries..."
  @echo -e "==========================\n"
  for exe in $(find ./binary/test/Distro/ -type f); do $exe; done
