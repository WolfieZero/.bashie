
function installFunction() {
  $1
  echo $2
  echo $3
}

function test() {
    installFunction 'brew --version' -now
}

test