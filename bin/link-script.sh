#!/usr/bin/env bash
# template from: https://betterdev.blog/minimal-safe-bash-script-template/


set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

# get script path from symlinks
pushd . > '/dev/null';
SCRIPT_PATH="${BASH_SOURCE[0]:-$0}";

while [ -h "$SCRIPT_PATH" ];
do
    cd "$( dirname -- "$SCRIPT_PATH"; )";
    SCRIPT_PATH="$( readlink -f -- "$SCRIPT_PATH"; )";
done

cd "$( dirname -- "$SCRIPT_PATH"; )" > '/dev/null';
SCRIPT_PATH="$( pwd; )";
popd  > '/dev/null';

pwd=$(pwd)

usage() {
  cat <<EOF
Usage: $(basename "${BASH_SOURCE[0]}") [-h] [-v] [-f] -p param_value arg1 [arg2...]

Link script from dirtory to /usr/local/bin with directory prefix

Available options:

-h, --help      Print this help and exit
-v, --verbose   Print script debug info
EOF
  exit
}

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
  # script cleanup here
}

msg() {
  echo >&2 -e "${1-}"
}


die() {
  local msg=$1
  local code=${2-1} # default exit status 1
  msg "$msg"
  exit "$code"
}

parse_params() {
  # default values of variables set from params
  flag=0
  param=''

  while :; do
    case "${1-}" in
    -h | --help) usage ;;
    -v | --verbose) set -x ;;
    -s | --script)
      script="${2-}"
      shift
      ;;
    -p | --prefix)
      prefix="${2-}"
      shift
      ;;
    -?*) die "Unknown option: $1" ;;
    *) break ;;
    esac
    shift
  done

  args=("$@")

  # check required params and arguments
  [[ -z "${script-}" ]] && die "Missing required preameter: script"
  [[ -z "${prefix-}" ]] && die "Missing required preameter: prefix"

  return 0
}

parse_params "$@"


file_path="${pwd}/${script}"
file_name=$( echo ${script##*/} )
msg "Linking script: ${file_path}"

if [ -f "$file_path" ]; then
  msg "Found script"

  dest="/usr/local/bin/${prefix}-${file_name}"
  msg "Linking to: ${dest}"
  ln -s ${file_path} ${dest}
else
  die "File doesn't exist"

fi
