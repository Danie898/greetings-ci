#simple test script for greetings jar

set -e

java -jar build/libs/greetinfs-ci-$1.jar ${@:2} > output.bench
IFS=' ' read -ra ARR <<< "${@:2}"
for i in "${ARR[@]}"; do
  grep "^$i$" output.bench
done
