mkdircd () {
  mkdir -p "${@}" && cd "${"${#}"}"
}
