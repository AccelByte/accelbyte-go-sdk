FILE_NAME='test-results.md'

append_to_file() {
  echo $1 >> $2
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

run_script() {
  chmod 755 $1
  echo "Installing github.com/AccelByte/sample-apps"
  go install github.com/AccelByte/sample-apps
  echo "Running script $1"
  append_to_file '```tap' $FILE_NAME
  append_to_file $1 $FILE_NAME
  append_to_file '' $FILE_NAME
  $1 >> $FILE_NAME
  append_to_file '```' $FILE_NAME
  append_to_file '' $FILE_NAME
}

delete_file $FILE_NAME

append_to_file '# Test Results' $FILE_NAME
append_to_file '' $FILE_NAME

run_script sh/run-go-cli-dsmc-unit-test.sh
run_script sh/run-go-cli-achievement-unit-test.sh
run_script sh/run-go-cli-iam-unit-test.sh
run_script sh/run-go-cli-seasonpass-unit-test.sh
run_script sh/run-go-cli-lobby-unit-test.sh
run_script sh/run-go-cli-gdpr-unit-test.sh
run_script sh/run-go-cli-social-unit-test.sh
run_script sh/run-go-cli-platform-unit-test.sh
run_script sh/run-go-cli-sessionbrowser-unit-test.sh
run_script sh/run-go-cli-leaderboard-unit-test.sh
run_script sh/run-go-cli-eventlog-unit-test.sh
run_script sh/run-go-cli-ugc-unit-test.sh
run_script sh/run-go-cli-group-unit-test.sh
run_script sh/run-go-cli-qosm-unit-test.sh
run_script sh/run-go-cli-legal-unit-test.sh
run_script sh/run-go-cli-matchmaking-unit-test.sh
run_script sh/run-go-cli-cloudsave-unit-test.sh
run_script sh/run-go-cli-dslogmanager-unit-test.sh
run_script sh/run-go-cli-basic-unit-test.sh
run_script sh/run-go-cli-gametelemetry-unit-test.sh
