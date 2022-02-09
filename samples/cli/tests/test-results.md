# Test Results

```tap
sh/run-go-cli-iam-unit-test.sh

go install github.com/AccelByte/sample-apps
1..270
not ok 1 - getBansType
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getBansType [flags] sample-apps Iam getBansType [flags]
     
    Flags: Flags:
    -h, --help   help for getBansType -h, --help help for getBansType
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 2 - getListBanReason
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getListBanReason [flags] sample-apps Iam getListBanReason [flags]
     
    Flags: Flags:
    -h, --help   help for getListBanReason -h, --help help for getListBanReason
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 3 getClients (skipped deprecated)
ok 4 createClient (skipped deprecated)
not ok 5 - getClient
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getClient [flags] sample-apps Iam getClient [flags]
     
    Flags: Flags:
    --clientId string   Client id --clientId string Client id
    -h, --help              help for getClient -h, --help help for getClient
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 6 - updateClient
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateClient [flags] sample-apps Iam updateClient [flags]
     
    Flags: Flags:
    --body string       Body --body string Body
    --clientId string   Client id --clientId string Client id
    -h, --help              help for updateClient -h, --help help for updateClient
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 7 deleteClient (skipped deprecated)
not ok 8 - updateClientPermission
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateClientPermission [flags] sample-apps Iam updateClientPermission [flags]
     
    Flags: Flags:
    --body string       Body --body string Body
    --clientId string   Client id --clientId string Client id
    -h, --help              help for updateClientPermission -h, --help help for updateClientPermission
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 9 - addClientPermission
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T08:15:50+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
    Usage: Usage:
    sample-apps Iam addClientPermission [flags] sample-apps Iam addClientPermission [flags]
     
    Flags: Flags:
    --action int        Action (default -1) --action int Action (default -1)
    --clientId string   Client id --clientId string Client id
    -h, --help              help for addClientPermission -h, --help help for addClientPermission
    --resource string   Resource --resource string Resource
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
not ok 10 - deleteClientPermission
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteClientPermission [flags] sample-apps Iam deleteClientPermission [flags]
     
    Flags: Flags:
    --action int        Action (default -1) --action int Action (default -1)
    --clientId string   Client id --clientId string Client id
    -h, --help              help for deleteClientPermission -h, --help help for deleteClientPermission
    --resource string   Resource --resource string Resource
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 11 - updateClientSecret
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateClientSecret [flags] sample-apps Iam updateClientSecret [flags]
     
    Flags: Flags:
    --body string       Body --body string Body
    --clientId string   Client id --clientId string Client id
    -h, --help              help for updateClientSecret -h, --help help for updateClientSecret
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 12 - getClientsbyNamespace
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response []" time="2022-02-09T08:15:50+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getClientsbyNamespace [flags] sample-apps Iam getClientsbyNamespace [flags]
     
    Flags: Flags:
    -h, --help               help for getClientsbyNamespace -h, --help help for getClientsbyNamespace
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 13 - createClientByNamespace
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam createClientByNamespace [flags] sample-apps Iam createClientByNamespace [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createClientByNamespace -h, --help help for createClientByNamespace
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 14 - deleteClientByNamespace
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteClientByNamespace [flags] sample-apps Iam deleteClientByNamespace [flags]
     
    Flags: Flags:
    --clientId string    Client id --clientId string Client id
    -h, --help               help for deleteClientByNamespace -h, --help help for deleteClientByNamespace
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 15 - createUser
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam createUser [flags] sample-apps Iam createUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createUser -h, --help help for createUser
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 16 - getAdminUsersByRoleID
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getAdminUsersByRoleID [flags] sample-apps Iam getAdminUsersByRoleID [flags]
     
    Flags: Flags:
    --after int          After --after int After
    --before int         Before --before int Before
    -h, --help               help for getAdminUsersByRoleID -h, --help help for getAdminUsersByRoleID
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --roleId string      Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 17 - getUserByLoginID
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserByLoginID [flags] sample-apps Iam getUserByLoginID [flags]
     
    Flags: Flags:
    -h, --help               help for getUserByLoginID -h, --help help for getUserByLoginID
    --loginId string     Login id --loginId string Login id
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 18 - getUserByPlatformUserID
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserByPlatformUserID [flags] sample-apps Iam getUserByPlatformUserID [flags]
     
    Flags: Flags:
    -h, --help                    help for getUserByPlatformUserID -h, --help help for getUserByPlatformUserID
    --namespace string        Namespace --namespace string Namespace
    --platformID string       Platform ID --platformID string Platform ID
    --platformUserID string   Platform user ID --platformUserID string Platform user ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 19 - forgotPassword
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam forgotPassword [flags] sample-apps Iam forgotPassword [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for forgotPassword -h, --help help for forgotPassword
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 20 - getUsersByLoginIds
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUsersByLoginIds [flags] sample-apps Iam getUsersByLoginIds [flags]
     
    Flags: Flags:
    -h, --help               help for getUsersByLoginIds -h, --help help for getUsersByLoginIds
    --loginIds string    Login ids --loginIds string Login ids
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 21 - resetPassword
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam resetPassword [flags] sample-apps Iam resetPassword [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for resetPassword -h, --help help for resetPassword
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 22 searchUser (skipped deprecated)
not ok 23 - getUserByUserID
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserByUserID [flags] sample-apps Iam getUserByUserID [flags]
     
    Flags: Flags:
    -h, --help               help for getUserByUserID -h, --help help for getUserByUserID
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 24 - updateUser
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateUser [flags] sample-apps Iam updateUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateUser -h, --help help for updateUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 25 - deleteUser
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteUser [flags] sample-apps Iam deleteUser [flags]
     
    Flags: Flags:
    -h, --help               help for deleteUser -h, --help help for deleteUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 26 - banUser
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam banUser [flags] sample-apps Iam banUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for banUser -h, --help help for banUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 27 - getUserBanHistory
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response []" time="2022-02-09T08:15:50+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:50+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserBanHistory [flags] sample-apps Iam getUserBanHistory [flags]
     
    Flags: Flags:
    -h, --help               help for getUserBanHistory -h, --help help for getUserBanHistory
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 28 - disableUserBan
  ---
  error: |-
    time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:50+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:50+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:50+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T08:15:50+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
    Usage: Usage:
    sample-apps Iam disableUserBan [flags] sample-apps Iam disableUserBan [flags]
     
    Flags: Flags:
    --banId string       Ban id --banId string Ban id
    -h, --help               help for disableUserBan -h, --help help for disableUserBan
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
not ok 29 - enableUserBan
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T08:15:51+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
    Usage: Usage:
    sample-apps Iam enableUserBan [flags] sample-apps Iam enableUserBan [flags]
     
    Flags: Flags:
    --banId string       Ban id --banId string Ban id
    -h, --help               help for enableUserBan -h, --help help for enableUserBan
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
ok 30 listCrossNamespaceAccountLink (skipped deprecated)
ok 31 disableUser (skipped deprecated)
ok 32 enableUser (skipped deprecated)
not ok 33 - getUserInformation
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserInformation [flags] sample-apps Iam getUserInformation [flags]
     
    Flags: Flags:
    -h, --help               help for getUserInformation -h, --help help for getUserInformation
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 34 - deleteUserInformation
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteUserInformation [flags] sample-apps Iam deleteUserInformation [flags]
     
    Flags: Flags:
    -h, --help               help for deleteUserInformation -h, --help help for deleteUserInformation
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 35 - getUserLoginHistories
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserLoginHistories [flags] sample-apps Iam getUserLoginHistories [flags]
     
    Flags: Flags:
    --after float        After --after float After
    --before float       Before --before float Before
    -h, --help               help for getUserLoginHistories -h, --help help for getUserLoginHistories
    --limit float        Limit (default 20) --limit float Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 36 updatePassword (skipped deprecated)
not ok 37 - saveUserPermission
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam saveUserPermission [flags] sample-apps Iam saveUserPermission [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for saveUserPermission -h, --help help for saveUserPermission
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 38 - addUserPermission
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addUserPermission [flags] sample-apps Iam addUserPermission [flags]
     
    Flags: Flags:
    --action int         Action (default -1) --action int Action (default -1)
    --body string        Body --body string Body
    -h, --help               help for addUserPermission -h, --help help for addUserPermission
    --namespace string   Namespace --namespace string Namespace
    --resource string    Resource --resource string Resource
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 39 - deleteUserPermission
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteUserPermission [flags] sample-apps Iam deleteUserPermission [flags]
     
    Flags: Flags:
    --action int         Action (default -1) --action int Action (default -1)
    -h, --help               help for deleteUserPermission -h, --help help for deleteUserPermission
    --namespace string   Namespace --namespace string Namespace
    --resource string    Resource --resource string Resource
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 40 - getUserPlatformAccounts
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response []" time="2022-02-09T08:15:51+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserPlatformAccounts [flags] sample-apps Iam getUserPlatformAccounts [flags]
     
    Flags: Flags:
    -h, --help               help for getUserPlatformAccounts -h, --help help for getUserPlatformAccounts
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 41 - getUserMapping
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserMapping [flags] sample-apps Iam getUserMapping [flags]
     
    Flags: Flags:
    -h, --help                     help for getUserMapping -h, --help help for getUserMapping
    --namespace string         Namespace --namespace string Namespace
    --targetNamespace string   Target namespace --targetNamespace string Target namespace
    --userId string            User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 42 getUserJusticePlatformAccount (skipped deprecated)
not ok 43 - platformLink
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam platformLink [flags] sample-apps Iam platformLink [flags]
     
    Flags: Flags:
    -h, --help                help for platformLink -h, --help help for platformLink
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --ticket string       Ticket --ticket string Ticket
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 44 - platformUnlink
  ---
  error: |-
    Error: unknown flag: --platformNamespace Error: unknown flag: --platformNamespace
    Usage: Usage:
    sample-apps Iam platformUnlink [flags] sample-apps Iam platformUnlink [flags]
     
    Flags: Flags:
    -h, --help                        help for platformUnlink -h, --help help for platformUnlink
    --namespace string            Namespace --namespace string Namespace
    --platformId string           Platform id --platformId string Platform id
    --platform_namespace string   Platform namespace --platform_namespace string Platform namespace
    --userId string               User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --platformNamespace Error: unknown flag: --platformNamespace
not ok 45 - getPublisherUser
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getPublisherUser [flags] sample-apps Iam getPublisherUser [flags]
     
    Flags: Flags:
    -h, --help               help for getPublisherUser -h, --help help for getPublisherUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 46 - saveUserRoles
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam saveUserRoles [flags] sample-apps Iam saveUserRoles [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for saveUserRoles -h, --help help for saveUserRoles
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 47 - addUserRole
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addUserRole [flags] sample-apps Iam addUserRole [flags]
     
    Flags: Flags:
    -h, --help               help for addUserRole -h, --help help for addUserRole
    --namespace string   Namespace --namespace string Namespace
    --roleId string      Role id --roleId string Role id
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 48 - deleteUserRole
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteUserRole [flags] sample-apps Iam deleteUserRole [flags]
     
    Flags: Flags:
    -h, --help               help for deleteUserRole -h, --help help for deleteUserRole
    --namespace string   Namespace --namespace string Namespace
    --roleId string      Role id --roleId string Role id
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 49 - upgradeHeadlessAccount
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam upgradeHeadlessAccount [flags] sample-apps Iam upgradeHeadlessAccount [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for upgradeHeadlessAccount -h, --help help for upgradeHeadlessAccount
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 50 - upgradeHeadlessAccountWithVerificationCode
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam upgradeHeadlessAccountWithVerificationCode [flags] sample-apps Iam upgradeHeadlessAccountWithVerificationCode [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for upgradeHeadlessAccountWithVerificationCode -h, --help help for upgradeHeadlessAccountWithVerificationCode
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 51 - userVerification
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam userVerification [flags] sample-apps Iam userVerification [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for userVerification -h, --help help for userVerification
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 52 - sendVerificationCode
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam sendVerificationCode [flags] sample-apps Iam sendVerificationCode [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for sendVerificationCode -h, --help help for sendVerificationCode
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 53 - authorization
  ---
  error: |-
    Error: unknown flag: --clientId Error: unknown flag: --clientId
    Usage: Usage:
    sample-apps Iam authorization [flags] sample-apps Iam authorization [flags]
     
    Flags: Flags:
    --client_id string       Client id --client_id string Client id
    -h, --help                   help for authorization -h, --help help for authorization
    --login string           Login --login string Login
    --password string        Password --password string Password
    --redirect_uri string    Redirect uri --redirect_uri string Redirect uri
    --response_type string   Response type --response_type string Response type
    --scope string           Scope --scope string Scope
    --state string           State --state string State
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --clientId Error: unknown flag: --clientId
not ok 54 - getJWKS
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getJWKS [flags] sample-apps Iam getJWKS [flags]
     
    Flags: Flags:
    -h, --help   help for getJWKS -h, --help help for getJWKS
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 55 platformTokenRequestHandler (skipped deprecated)
not ok 56 - revokeUser
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam revokeUser [flags] sample-apps Iam revokeUser [flags]
     
    Flags: Flags:
    -h, --help               help for revokeUser -h, --help help for revokeUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 57 - getRevocationList
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRevocationList [flags] sample-apps Iam getRevocationList [flags]
     
    Flags: Flags:
    -h, --help   help for getRevocationList -h, --help help for getRevocationList
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
ok 58 revokeToken (skipped deprecated)
ok 59 revokeAUser (skipped deprecated)
not ok 60 - tokenGrant
  ---
  error: |-
    Error: unknown flag: --deviceId Error: unknown flag: --deviceId
    Usage: Usage:
    sample-apps Iam tokenGrant [flags] sample-apps Iam tokenGrant [flags]
     
    Flags: Flags:
    --Device-Id string       Device id --Device-Id string Device id
    --code string            Code --code string Code
    --extend_exp             Extend exp --extend_exp Extend exp
    --grant_type string      Grant type --grant_type string Grant type
    -h, --help                   help for tokenGrant -h, --help help for tokenGrant
    --namespace string       Namespace --namespace string Namespace
    --password string        Password --password string Password
    --redirect_uri string    Redirect uri --redirect_uri string Redirect uri
    --refresh_token string   Refresh token --refresh_token string Refresh token
    --username string        Username --username string Username
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --deviceId Error: unknown flag: --deviceId
not ok 61 - verifyToken
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam verifyToken [flags] sample-apps Iam verifyToken [flags]
     
    Flags: Flags:
    -h, --help           help for verifyToken -h, --help help for verifyToken
    --token string   Token --token string Token
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 62 - getRoles
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response []" time="2022-02-09T08:15:51+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRoles [flags] sample-apps Iam getRoles [flags]
     
    Flags: Flags:
    -h, --help                help for getRoles -h, --help help for getRoles
    --isWildcard string   Is wildcard --isWildcard string Is wildcard
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 63 - createRole
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam createRole [flags] sample-apps Iam createRole [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for createRole -h, --help help for createRole
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 64 - getRole
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRole [flags] sample-apps Iam getRole [flags]
     
    Flags: Flags:
    -h, --help            help for getRole -h, --help help for getRole
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 65 - updateRole
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateRole [flags] sample-apps Iam updateRole [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for updateRole -h, --help help for updateRole
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 66 - deleteRole
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteRole [flags] sample-apps Iam deleteRole [flags]
     
    Flags: Flags:
    -h, --help            help for deleteRole -h, --help help for deleteRole
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 67 - getRoleAdminStatus
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRoleAdminStatus [flags] sample-apps Iam getRoleAdminStatus [flags]
     
    Flags: Flags:
    -h, --help            help for getRoleAdminStatus -h, --help help for getRoleAdminStatus
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 68 - setRoleAsAdmin
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam setRoleAsAdmin [flags] sample-apps Iam setRoleAsAdmin [flags]
     
    Flags: Flags:
    -h, --help            help for setRoleAsAdmin -h, --help help for setRoleAsAdmin
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 69 - removeRoleAdmin
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam removeRoleAdmin [flags] sample-apps Iam removeRoleAdmin [flags]
     
    Flags: Flags:
    -h, --help            help for removeRoleAdmin -h, --help help for removeRoleAdmin
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 70 - getRoleManagers
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRoleManagers [flags] sample-apps Iam getRoleManagers [flags]
     
    Flags: Flags:
    -h, --help            help for getRoleManagers -h, --help help for getRoleManagers
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 71 - addRoleManagers
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addRoleManagers [flags] sample-apps Iam addRoleManagers [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for addRoleManagers -h, --help help for addRoleManagers
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 72 - removeRoleManagers
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam removeRoleManagers [flags] sample-apps Iam removeRoleManagers [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for removeRoleManagers -h, --help help for removeRoleManagers
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 73 - getRoleMembers
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:51+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRoleMembers [flags] sample-apps Iam getRoleMembers [flags]
     
    Flags: Flags:
    -h, --help            help for getRoleMembers -h, --help help for getRoleMembers
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 74 - addRoleMembers
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addRoleMembers [flags] sample-apps Iam addRoleMembers [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for addRoleMembers -h, --help help for addRoleMembers
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 75 - removeRoleMembers
  ---
  error: |-
    time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:51+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:51+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam removeRoleMembers [flags] sample-apps Iam removeRoleMembers [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for removeRoleMembers -h, --help help for removeRoleMembers
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 76 - updateRolePermissions
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateRolePermissions [flags] sample-apps Iam updateRolePermissions [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for updateRolePermissions -h, --help help for updateRolePermissions
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 77 - addRolePermission
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addRolePermission [flags] sample-apps Iam addRolePermission [flags]
     
    Flags: Flags:
    --action int        Action (default -1) --action int Action (default -1)
    --body string       Body --body string Body
    -h, --help              help for addRolePermission -h, --help help for addRolePermission
    --resource string   Resource --resource string Resource
    --roleId string     Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 78 - deleteRolePermission
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteRolePermission [flags] sample-apps Iam deleteRolePermission [flags]
     
    Flags: Flags:
    --action int        Action (default -1) --action int Action (default -1)
    -h, --help              help for deleteRolePermission -h, --help help for deleteRolePermission
    --resource string   Resource --resource string Resource
    --roleId string     Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 79 - adminGetAgeRestrictionStatusV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetAgeRestrictionStatusV2 [flags] sample-apps Iam adminGetAgeRestrictionStatusV2 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetAgeRestrictionStatusV2 -h, --help help for adminGetAgeRestrictionStatusV2
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 80 - adminUpdateAgeRestrictionConfigV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateAgeRestrictionConfigV2 [flags] sample-apps Iam adminUpdateAgeRestrictionConfigV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateAgeRestrictionConfigV2 -h, --help help for adminUpdateAgeRestrictionConfigV2
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 81 - getListCountryAgeRestriction
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response []" time="2022-02-09T08:15:52+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getListCountryAgeRestriction [flags] sample-apps Iam getListCountryAgeRestriction [flags]
     
    Flags: Flags:
    -h, --help               help for getListCountryAgeRestriction -h, --help help for getListCountryAgeRestriction
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 82 - updateCountryAgeRestriction
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateCountryAgeRestriction [flags] sample-apps Iam updateCountryAgeRestriction [flags]
     
    Flags: Flags:
    --body string          Body --body string Body
    --countryCode string   Country code --countryCode string Country code
    -h, --help                 help for updateCountryAgeRestriction -h, --help help for updateCountryAgeRestriction
    --namespace string     Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 83 - adminSearchUsersV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminSearchUsersV2 [flags] sample-apps Iam adminSearchUsersV2 [flags]
     
    Flags: Flags:
    --after string            After (default "0") --after string After (default "0")
    --before string           Before (default "0") --before string Before (default "0")
    --displayName string      Display name --displayName string Display name
    -h, --help                    help for adminSearchUsersV2 -h, --help help for adminSearchUsersV2
    --limit string            Limit (default "20") --limit string Limit (default "20")
    --loginId string          Login id --loginId string Login id
    --namespace string        Namespace --namespace string Namespace
    --platformId string       Platform id --platformId string Platform id
    --platformUserId string   Platform user id --platformUserId string Platform user id
    --roleId string           Role id --roleId string Role id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 84 - adminGetUserByUserIdV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserByUserIdV2 [flags] sample-apps Iam adminGetUserByUserIdV2 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserByUserIdV2 -h, --help help for adminGetUserByUserIdV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 85 - adminUpdateUserV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserV2 [flags] sample-apps Iam adminUpdateUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserV2 -h, --help help for adminUpdateUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 86 - adminBanUserV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminBanUserV2 [flags] sample-apps Iam adminBanUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminBanUserV2 -h, --help help for adminBanUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 87 - adminGetUserBanV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response []" time="2022-02-09T08:15:52+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserBanV2 [flags] sample-apps Iam adminGetUserBanV2 [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for adminGetUserBanV2 -h, --help help for adminGetUserBanV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 88 - adminDisableUserV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDisableUserV2 [flags] sample-apps Iam adminDisableUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminDisableUserV2 -h, --help help for adminDisableUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 89 - adminEnableUserV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T08:15:52+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
    Usage: Usage:
    sample-apps Iam adminEnableUserV2 [flags] sample-apps Iam adminEnableUserV2 [flags]
     
    Flags: Flags:
    -h, --help               help for adminEnableUserV2 -h, --help help for adminEnableUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
not ok 90 - adminResetPasswordV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminResetPasswordV2 [flags] sample-apps Iam adminResetPasswordV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminResetPasswordV2 -h, --help help for adminResetPasswordV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 91 - adminDeletePlatformLinkV2
  ---
  error: |-
    Error: unknown flag: --platformNamespace Error: unknown flag: --platformNamespace
    Usage: Usage:
    sample-apps Iam adminDeletePlatformLinkV2 [flags] sample-apps Iam adminDeletePlatformLinkV2 [flags]
     
    Flags: Flags:
    -h, --help                        help for adminDeletePlatformLinkV2 -h, --help help for adminDeletePlatformLinkV2
    --namespace string            Namespace --namespace string Namespace
    --platformId string           Platform id --platformId string Platform id
    --platform_namespace string   Platform namespace --platform_namespace string Platform namespace
    --userId string               User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --platformNamespace Error: unknown flag: --platformNamespace
not ok 92 - adminPutUserRolesV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminPutUserRolesV2 [flags] sample-apps Iam adminPutUserRolesV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminPutUserRolesV2 -h, --help help for adminPutUserRolesV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 93 - adminCreateUserRolesV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminCreateUserRolesV2 [flags] sample-apps Iam adminCreateUserRolesV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminCreateUserRolesV2 -h, --help help for adminCreateUserRolesV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 94 - publicCreateUserV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicCreateUserV2 [flags] sample-apps Iam publicCreateUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserV2 -h, --help help for publicCreateUserV2
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 95 - publicForgotPasswordV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicForgotPasswordV2 [flags] sample-apps Iam publicForgotPasswordV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicForgotPasswordV2 -h, --help help for publicForgotPasswordV2
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 96 - publicResetPasswordV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicResetPasswordV2 [flags] sample-apps Iam publicResetPasswordV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicResetPasswordV2 -h, --help help for publicResetPasswordV2
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 97 - publicGetUserByUserIDV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserByUserIDV2 [flags] sample-apps Iam publicGetUserByUserIDV2 [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserByUserIDV2 -h, --help help for publicGetUserByUserIDV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 98 - publicUpdateUserV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response []" time="2022-02-09T08:15:52+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpdateUserV2 [flags] sample-apps Iam publicUpdateUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserV2 -h, --help help for publicUpdateUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 99 - publicGetUserBan
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response []" time="2022-02-09T08:15:52+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserBan [flags] sample-apps Iam publicGetUserBan [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for publicGetUserBan -h, --help help for publicGetUserBan
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 100 - publicUpdatePasswordV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpdatePasswordV2 [flags] sample-apps Iam publicUpdatePasswordV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdatePasswordV2 -h, --help help for publicUpdatePasswordV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 101 - getListJusticePlatformAccounts
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response []" time="2022-02-09T08:15:52+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getListJusticePlatformAccounts [flags] sample-apps Iam getListJusticePlatformAccounts [flags]
     
    Flags: Flags:
    -h, --help               help for getListJusticePlatformAccounts -h, --help help for getListJusticePlatformAccounts
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 102 - publicPlatformLinkV2
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicPlatformLinkV2 [flags] sample-apps Iam publicPlatformLinkV2 [flags]
     
    Flags: Flags:
    -h, --help                help for publicPlatformLinkV2 -h, --help help for publicPlatformLinkV2
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --ticket string       Ticket --ticket string Ticket
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 103 - publicDeletePlatformLinkV2
  ---
  error: |-
    Error: unknown flag: --platformNamespace Error: unknown flag: --platformNamespace
    Usage: Usage:
    sample-apps Iam publicDeletePlatformLinkV2 [flags] sample-apps Iam publicDeletePlatformLinkV2 [flags]
     
    Flags: Flags:
    -h, --help                        help for publicDeletePlatformLinkV2 -h, --help help for publicDeletePlatformLinkV2
    --namespace string            Namespace --namespace string Namespace
    --platformId string           Platform id --platformId string Platform id
    --platform_namespace string   Platform namespace --platform_namespace string Platform namespace
    --userId string               User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --platformNamespace Error: unknown flag: --platformNamespace
not ok 104 - adminGetBansTypeV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetBansTypeV3 [flags] sample-apps Iam adminGetBansTypeV3 [flags]
     
    Flags: Flags:
    -h, --help   help for adminGetBansTypeV3 -h, --help help for adminGetBansTypeV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 105 - adminGetListBanReasonV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetListBanReasonV3 [flags] sample-apps Iam adminGetListBanReasonV3 [flags]
     
    Flags: Flags:
    -h, --help   help for adminGetListBanReasonV3 -h, --help help for adminGetListBanReasonV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 106 - adminGetInputValidations
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetInputValidations [flags] sample-apps Iam adminGetInputValidations [flags]
     
    Flags: Flags:
    -h, --help   help for adminGetInputValidations -h, --help help for adminGetInputValidations
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 107 - adminUpdateInputValidations
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateInputValidations [flags] sample-apps Iam adminUpdateInputValidations [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminUpdateInputValidations -h, --help help for adminUpdateInputValidations
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 108 - adminResetInputValidations
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminResetInputValidations [flags] sample-apps Iam adminResetInputValidations [flags]
     
    Flags: Flags:
    --field string   Field --field string Field
    -h, --help           help for adminResetInputValidations -h, --help help for adminResetInputValidations
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 109 - listAdminsV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam listAdminsV3 [flags] sample-apps Iam listAdminsV3 [flags]
     
    Flags: Flags:
    --after string       After (default "0") --after string After (default "0")
    --before string      Before (default "0") --before string Before (default "0")
    -h, --help               help for listAdminsV3 -h, --help help for listAdminsV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 110 - adminGetAgeRestrictionStatusV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetAgeRestrictionStatusV3 [flags] sample-apps Iam adminGetAgeRestrictionStatusV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetAgeRestrictionStatusV3 -h, --help help for adminGetAgeRestrictionStatusV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 111 - adminUpdateAgeRestrictionConfigV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateAgeRestrictionConfigV3 [flags] sample-apps Iam adminUpdateAgeRestrictionConfigV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateAgeRestrictionConfigV3 -h, --help help for adminUpdateAgeRestrictionConfigV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 112 - adminGetListCountryAgeRestrictionV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response []" time="2022-02-09T08:15:52+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetListCountryAgeRestrictionV3 [flags] sample-apps Iam adminGetListCountryAgeRestrictionV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetListCountryAgeRestrictionV3 -h, --help help for adminGetListCountryAgeRestrictionV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 113 - adminUpdateCountryAgeRestrictionV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateCountryAgeRestrictionV3 [flags] sample-apps Iam adminUpdateCountryAgeRestrictionV3 [flags]
     
    Flags: Flags:
    --body string          Body --body string Body
    --countryCode string   Country code --countryCode string Country code
    -h, --help                 help for adminUpdateCountryAgeRestrictionV3 -h, --help help for adminUpdateCountryAgeRestrictionV3
    --namespace string     Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 114 - adminGetBannedUsersV3
  ---
  error: |-
    time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:52+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:52+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:52+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetBannedUsersV3 [flags] sample-apps Iam adminGetBannedUsersV3 [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    --banType string     Ban type --banType string Ban type
    -h, --help               help for adminGetBannedUsersV3 -h, --help help for adminGetBannedUsersV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 115 - adminGetBansTypeWithNamespaceV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetBansTypeWithNamespaceV3 [flags] sample-apps Iam adminGetBansTypeWithNamespaceV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetBansTypeWithNamespaceV3 -h, --help help for adminGetBansTypeWithNamespaceV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 116 - adminGetClientsByNamespaceV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetClientsByNamespaceV3 [flags] sample-apps Iam adminGetClientsByNamespaceV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetClientsByNamespaceV3 -h, --help help for adminGetClientsByNamespaceV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset string      Offset (default "0") --offset string Offset (default "0")
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 117 - adminCreateClientV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminCreateClientV3 [flags] sample-apps Iam adminCreateClientV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminCreateClientV3 -h, --help help for adminCreateClientV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 118 - adminGetClientsbyNamespacebyIDV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetClientsbyNamespacebyIDV3 [flags] sample-apps Iam adminGetClientsbyNamespacebyIDV3 [flags]
     
    Flags: Flags:
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminGetClientsbyNamespacebyIDV3 -h, --help help for adminGetClientsbyNamespacebyIDV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 119 - adminDeleteClientV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteClientV3 [flags] sample-apps Iam adminDeleteClientV3 [flags]
     
    Flags: Flags:
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminDeleteClientV3 -h, --help help for adminDeleteClientV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 120 - adminUpdateClientV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateClientV3 [flags] sample-apps Iam adminUpdateClientV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminUpdateClientV3 -h, --help help for adminUpdateClientV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 121 - adminUpdateClientPermissionV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateClientPermissionV3 [flags] sample-apps Iam adminUpdateClientPermissionV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminUpdateClientPermissionV3 -h, --help help for adminUpdateClientPermissionV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 122 - adminAddClientPermissionsV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddClientPermissionsV3 [flags] sample-apps Iam adminAddClientPermissionsV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminAddClientPermissionsV3 -h, --help help for adminAddClientPermissionsV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 123 - adminDeleteClientPermissionV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteClientPermissionV3 [flags] sample-apps Iam adminDeleteClientPermissionV3 [flags]
     
    Flags: Flags:
    --action int         Action (default -1) --action int Action (default -1)
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminDeleteClientPermissionV3 -h, --help help for adminDeleteClientPermissionV3
    --namespace string   Namespace --namespace string Namespace
    --resource string    Resource --resource string Resource
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 124 - retrieveAllThirdPartyLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response []" time="2022-02-09T08:15:53+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 [flags] sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    -h, --help               help for retrieveAllThirdPartyLoginPlatformCredentialV3 -h, --help help for retrieveAllThirdPartyLoginPlatformCredentialV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 125 - retrieveAllActiveThirdPartyLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response []" time="2022-02-09T08:15:53+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 [flags] sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    -h, --help               help for retrieveAllActiveThirdPartyLoginPlatformCredentialV3 -h, --help help for retrieveAllActiveThirdPartyLoginPlatformCredentialV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 126 - retrieveAllSSOLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response []" time="2022-02-09T08:15:53+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 [flags] sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    -h, --help               help for retrieveAllSSOLoginPlatformCredentialV3 -h, --help help for retrieveAllSSOLoginPlatformCredentialV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset string      Offset (default "0") --offset string Offset (default "0")
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 127 - retrieveThirdPartyLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 [flags] sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    -h, --help                help for retrieveThirdPartyLoginPlatformCredentialV3 -h, --help help for retrieveThirdPartyLoginPlatformCredentialV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 128 - addThirdPartyLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addThirdPartyLoginPlatformCredentialV3 [flags] sample-apps Iam addThirdPartyLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for addThirdPartyLoginPlatformCredentialV3 -h, --help help for addThirdPartyLoginPlatformCredentialV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 129 - deleteThirdPartyLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 [flags] sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    -h, --help                help for deleteThirdPartyLoginPlatformCredentialV3 -h, --help help for deleteThirdPartyLoginPlatformCredentialV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 130 - updateThirdPartyLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 [flags] sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for updateThirdPartyLoginPlatformCredentialV3 -h, --help help for updateThirdPartyLoginPlatformCredentialV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 131 - updateThirdPartyLoginPlatformDomainV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateThirdPartyLoginPlatformDomainV3 [flags] sample-apps Iam updateThirdPartyLoginPlatformDomainV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for updateThirdPartyLoginPlatformDomainV3 -h, --help help for updateThirdPartyLoginPlatformDomainV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 132 - deleteThirdPartyLoginPlatformDomainV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 [flags] sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for deleteThirdPartyLoginPlatformDomainV3 -h, --help help for deleteThirdPartyLoginPlatformDomainV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 133 - retrieveSSOLoginPlatformCredential
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveSSOLoginPlatformCredential [flags] sample-apps Iam retrieveSSOLoginPlatformCredential [flags]
     
    Flags: Flags:
    -h, --help                help for retrieveSSOLoginPlatformCredential -h, --help help for retrieveSSOLoginPlatformCredential
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 134 - addSSOLoginPlatformCredential
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam addSSOLoginPlatformCredential [flags] sample-apps Iam addSSOLoginPlatformCredential [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for addSSOLoginPlatformCredential -h, --help help for addSSOLoginPlatformCredential
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 135 - deleteSSOLoginPlatformCredentialV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam deleteSSOLoginPlatformCredentialV3 [flags] sample-apps Iam deleteSSOLoginPlatformCredentialV3 [flags]
     
    Flags: Flags:
    -h, --help                help for deleteSSOLoginPlatformCredentialV3 -h, --help help for deleteSSOLoginPlatformCredentialV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 136 - updateSSOPlatformCredential
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateSSOPlatformCredential [flags] sample-apps Iam updateSSOPlatformCredential [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for updateSSOPlatformCredential -h, --help help for updateSSOPlatformCredential
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 137 - adminGetUserByPlatformUserIDV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserByPlatformUserIDV3 [flags] sample-apps Iam adminGetUserByPlatformUserIDV3 [flags]
     
    Flags: Flags:
    -h, --help                    help for adminGetUserByPlatformUserIDV3 -h, --help help for adminGetUserByPlatformUserIDV3
    --namespace string        Namespace --namespace string Namespace
    --platformId string       Platform id --platformId string Platform id
    --platformUserId string   Platform user id --platformUserId string Platform user id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 138 - getAdminUsersByRoleIdV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getAdminUsersByRoleIdV3 [flags] sample-apps Iam getAdminUsersByRoleIdV3 [flags]
     
    Flags: Flags:
    --after int          After --after int After
    --before int         Before --before int Before
    -h, --help               help for getAdminUsersByRoleIdV3 -h, --help help for getAdminUsersByRoleIdV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --roleId string      Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 139 - adminGetUserByEmailAddressV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserByEmailAddressV3 [flags] sample-apps Iam adminGetUserByEmailAddressV3 [flags]
     
    Flags: Flags:
    --emailAddress string   Email address --emailAddress string Email address
    -h, --help                  help for adminGetUserByEmailAddressV3 -h, --help help for adminGetUserByEmailAddressV3
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 140 - adminListUserIDByUserIDsV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminListUserIDByUserIDsV3 [flags] sample-apps Iam adminListUserIDByUserIDsV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminListUserIDByUserIDsV3 -h, --help help for adminListUserIDByUserIDsV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 141 - adminInviteUserV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminInviteUserV3 [flags] sample-apps Iam adminInviteUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminInviteUserV3 -h, --help help for adminInviteUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 142 - adminListUsersV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminListUsersV3 [flags] sample-apps Iam adminListUsersV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminListUsersV3 -h, --help help for adminListUsersV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 143 - adminSearchUserV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminSearchUserV3 [flags] sample-apps Iam adminSearchUserV3 [flags]
     
    Flags: Flags:
    --by string           By --by string By
    --endDate string      End date --endDate string End date
    -h, --help                help for adminSearchUserV3 -h, --help help for adminSearchUserV3
    --limit int           Limit (default 20) --limit int Limit (default 20)
    --namespace string    Namespace --namespace string Namespace
    --offset string       Offset (default "0") --offset string Offset (default "0")
    --platformBy string   Platform by --platformBy string Platform by
    --platformId string   Platform id --platformId string Platform id
    --query string        Query --query string Query
    --startDate string    Start date --startDate string Start date
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 144 - adminGetBulkUserByEmailAddressV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetBulkUserByEmailAddressV3 [flags] sample-apps Iam adminGetBulkUserByEmailAddressV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminGetBulkUserByEmailAddressV3 -h, --help help for adminGetBulkUserByEmailAddressV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 145 - adminGetUserByUserIdV3
  ---
  error: |-
    time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:53+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:53+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:53+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserByUserIdV3 [flags] sample-apps Iam adminGetUserByUserIdV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserByUserIdV3 -h, --help help for adminGetUserByUserIdV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 146 - adminUpdateUserV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserV3 [flags] sample-apps Iam adminUpdateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserV3 -h, --help help for adminUpdateUserV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 147 - adminGetUserBanV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserBanV3 [flags] sample-apps Iam adminGetUserBanV3 [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    --after string       After (default "0") --after string After (default "0")
    --before string      Before (default "0") --before string Before (default "0")
    -h, --help               help for adminGetUserBanV3 -h, --help help for adminGetUserBanV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 148 - adminBanUserV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminBanUserV3 [flags] sample-apps Iam adminBanUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminBanUserV3 -h, --help help for adminBanUserV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 149 - adminUpdateUserBanV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserBanV3 [flags] sample-apps Iam adminUpdateUserBanV3 [flags]
     
    Flags: Flags:
    --banId string       Ban id --banId string Ban id
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserBanV3 -h, --help help for adminUpdateUserBanV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 150 - adminSendVerificationCodeV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminSendVerificationCodeV3 [flags] sample-apps Iam adminSendVerificationCodeV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminSendVerificationCodeV3 -h, --help help for adminSendVerificationCodeV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 151 - adminVerifyAccountV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminVerifyAccountV3 [flags] sample-apps Iam adminVerifyAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminVerifyAccountV3 -h, --help help for adminVerifyAccountV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 152 - getUserVerificationCode
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getUserVerificationCode [flags] sample-apps Iam getUserVerificationCode [flags]
     
    Flags: Flags:
    -h, --help               help for getUserVerificationCode -h, --help help for getUserVerificationCode
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 153 - adminGetUserDeletionStatusV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserDeletionStatusV3 [flags] sample-apps Iam adminGetUserDeletionStatusV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserDeletionStatusV3 -h, --help help for adminGetUserDeletionStatusV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 154 - adminUpdateUserDeletionStatusV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserDeletionStatusV3 [flags] sample-apps Iam adminUpdateUserDeletionStatusV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserDeletionStatusV3 -h, --help help for adminUpdateUserDeletionStatusV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 155 - adminUpgradeHeadlessAccountV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpgradeHeadlessAccountV3 [flags] sample-apps Iam adminUpgradeHeadlessAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpgradeHeadlessAccountV3 -h, --help help for adminUpgradeHeadlessAccountV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 156 - adminDeleteUserInformationV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteUserInformationV3 [flags] sample-apps Iam adminDeleteUserInformationV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminDeleteUserInformationV3 -h, --help help for adminDeleteUserInformationV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 157 - adminGetUserLoginHistoriesV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserLoginHistoriesV3 [flags] sample-apps Iam adminGetUserLoginHistoriesV3 [flags]
     
    Flags: Flags:
    --after float        After --after float After
    --before float       Before --before float Before
    -h, --help               help for adminGetUserLoginHistoriesV3 -h, --help help for adminGetUserLoginHistoriesV3
    --limit float        Limit (default 20) --limit float Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 158 - adminUpdateUserPermissionV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserPermissionV3 [flags] sample-apps Iam adminUpdateUserPermissionV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserPermissionV3 -h, --help help for adminUpdateUserPermissionV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 159 - adminAddUserPermissionsV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddUserPermissionsV3 [flags] sample-apps Iam adminAddUserPermissionsV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminAddUserPermissionsV3 -h, --help help for adminAddUserPermissionsV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 160 - adminDeleteUserPermissionBulkV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteUserPermissionBulkV3 [flags] sample-apps Iam adminDeleteUserPermissionBulkV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminDeleteUserPermissionBulkV3 -h, --help help for adminDeleteUserPermissionBulkV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 161 - adminDeleteUserPermissionV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteUserPermissionV3 [flags] sample-apps Iam adminDeleteUserPermissionV3 [flags]
     
    Flags: Flags:
    --action int         Action (default -1) --action int Action (default -1)
    -h, --help               help for adminDeleteUserPermissionV3 -h, --help help for adminDeleteUserPermissionV3
    --namespace string   Namespace --namespace string Namespace
    --resource string    Resource --resource string Resource
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 162 - adminGetUserPlatformAccountsV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetUserPlatformAccountsV3 [flags] sample-apps Iam adminGetUserPlatformAccountsV3 [flags]
     
    Flags: Flags:
    --after string       After (default "0") --after string After (default "0")
    --before string      Before (default "0") --before string Before (default "0")
    -h, --help               help for adminGetUserPlatformAccountsV3 -h, --help help for adminGetUserPlatformAccountsV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 163 - adminGetListJusticePlatformAccounts
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response []" time="2022-02-09T08:15:54+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetListJusticePlatformAccounts [flags] sample-apps Iam adminGetListJusticePlatformAccounts [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetListJusticePlatformAccounts -h, --help help for adminGetListJusticePlatformAccounts
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 164 - adminCreateJusticeUser
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminCreateJusticeUser [flags] sample-apps Iam adminCreateJusticeUser [flags]
     
    Flags: Flags:
    -h, --help                     help for adminCreateJusticeUser -h, --help help for adminCreateJusticeUser
    --namespace string         Namespace --namespace string Namespace
    --targetNamespace string   Target namespace --targetNamespace string Target namespace
    --userId string            User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 165 - adminLinkPlatformAccount
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminLinkPlatformAccount [flags] sample-apps Iam adminLinkPlatformAccount [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminLinkPlatformAccount -h, --help help for adminLinkPlatformAccount
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 166 - adminPlatformUnlinkV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminPlatformUnlinkV3 [flags] sample-apps Iam adminPlatformUnlinkV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for adminPlatformUnlinkV3 -h, --help help for adminPlatformUnlinkV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 167 - adminPlatformLinkV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminPlatformLinkV3 [flags] sample-apps Iam adminPlatformLinkV3 [flags]
     
    Flags: Flags:
    -h, --help                help for adminPlatformLinkV3 -h, --help help for adminPlatformLinkV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --ticket string       Ticket --ticket string Ticket
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 168 - adminDeleteUserRolesV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteUserRolesV3 [flags] sample-apps Iam adminDeleteUserRolesV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminDeleteUserRolesV3 -h, --help help for adminDeleteUserRolesV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 169 - adminSaveUserRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminSaveUserRoleV3 [flags] sample-apps Iam adminSaveUserRoleV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminSaveUserRoleV3 -h, --help help for adminSaveUserRoleV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 170 - adminAddUserRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddUserRoleV3 [flags] sample-apps Iam adminAddUserRoleV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminAddUserRoleV3 -h, --help help for adminAddUserRoleV3
    --namespace string   Namespace --namespace string Namespace
    --roleId string      Role id --roleId string Role id
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 171 - adminDeleteUserRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteUserRoleV3 [flags] sample-apps Iam adminDeleteUserRoleV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminDeleteUserRoleV3 -h, --help help for adminDeleteUserRoleV3
    --namespace string   Namespace --namespace string Namespace
    --roleId string      Role id --roleId string Role id
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 172 - adminUpdateUserStatusV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserStatusV3 [flags] sample-apps Iam adminUpdateUserStatusV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserStatusV3 -h, --help help for adminUpdateUserStatusV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 173 - adminVerifyUserWithoutVerificationCodeV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 [flags] sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminVerifyUserWithoutVerificationCodeV3 -h, --help help for adminVerifyUserWithoutVerificationCodeV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 174 - adminGetRolesV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRolesV3 [flags] sample-apps Iam adminGetRolesV3 [flags]
     
    Flags: Flags:
    --after string    After (default "0") --after string After (default "0")
    --before string   Before (default "0") --before string Before (default "0")
    -h, --help            help for adminGetRolesV3 -h, --help help for adminGetRolesV3
    --isWildcard      Is wildcard --isWildcard Is wildcard
    --limit int       Limit (default 20) --limit int Limit (default 20)
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 175 - adminCreateRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminCreateRoleV3 [flags] sample-apps Iam adminCreateRoleV3 [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminCreateRoleV3 -h, --help help for adminCreateRoleV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 176 - adminGetRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRoleV3 [flags] sample-apps Iam adminGetRoleV3 [flags]
     
    Flags: Flags:
    -h, --help            help for adminGetRoleV3 -h, --help help for adminGetRoleV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 177 - adminDeleteRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteRoleV3 [flags] sample-apps Iam adminDeleteRoleV3 [flags]
     
    Flags: Flags:
    -h, --help            help for adminDeleteRoleV3 -h, --help help for adminDeleteRoleV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 178 - adminUpdateRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateRoleV3 [flags] sample-apps Iam adminUpdateRoleV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminUpdateRoleV3 -h, --help help for adminUpdateRoleV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 179 - adminGetRoleAdminStatusV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:54+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRoleAdminStatusV3 [flags] sample-apps Iam adminGetRoleAdminStatusV3 [flags]
     
    Flags: Flags:
    -h, --help            help for adminGetRoleAdminStatusV3 -h, --help help for adminGetRoleAdminStatusV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 180 - adminUpdateAdminRoleStatusV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateAdminRoleStatusV3 [flags] sample-apps Iam adminUpdateAdminRoleStatusV3 [flags]
     
    Flags: Flags:
    -h, --help            help for adminUpdateAdminRoleStatusV3 -h, --help help for adminUpdateAdminRoleStatusV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 181 - adminRemoveRoleAdminV3
  ---
  error: |-
    time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:54+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:54+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminRemoveRoleAdminV3 [flags] sample-apps Iam adminRemoveRoleAdminV3 [flags]
     
    Flags: Flags:
    -h, --help            help for adminRemoveRoleAdminV3 -h, --help help for adminRemoveRoleAdminV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 182 - adminGetRoleManagersV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRoleManagersV3 [flags] sample-apps Iam adminGetRoleManagersV3 [flags]
     
    Flags: Flags:
    --after string    After (default "0") --after string After (default "0")
    --before string   Before (default "0") --before string Before (default "0")
    -h, --help            help for adminGetRoleManagersV3 -h, --help help for adminGetRoleManagersV3
    --limit int       Limit (default 20) --limit int Limit (default 20)
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 183 - adminAddRoleManagersV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddRoleManagersV3 [flags] sample-apps Iam adminAddRoleManagersV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminAddRoleManagersV3 -h, --help help for adminAddRoleManagersV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 184 - adminRemoveRoleManagersV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminRemoveRoleManagersV3 [flags] sample-apps Iam adminRemoveRoleManagersV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminRemoveRoleManagersV3 -h, --help help for adminRemoveRoleManagersV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 185 - adminGetRoleMembersV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRoleMembersV3 [flags] sample-apps Iam adminGetRoleMembersV3 [flags]
     
    Flags: Flags:
    --after string    After (default "0") --after string After (default "0")
    --before string   Before (default "0") --before string Before (default "0")
    -h, --help            help for adminGetRoleMembersV3 -h, --help help for adminGetRoleMembersV3
    --limit int       Limit (default 20) --limit int Limit (default 20)
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 186 - adminAddRoleMembersV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddRoleMembersV3 [flags] sample-apps Iam adminAddRoleMembersV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminAddRoleMembersV3 -h, --help help for adminAddRoleMembersV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 187 - adminRemoveRoleMembersV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminRemoveRoleMembersV3 [flags] sample-apps Iam adminRemoveRoleMembersV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminRemoveRoleMembersV3 -h, --help help for adminRemoveRoleMembersV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 188 - adminUpdateRolePermissionsV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateRolePermissionsV3 [flags] sample-apps Iam adminUpdateRolePermissionsV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminUpdateRolePermissionsV3 -h, --help help for adminUpdateRolePermissionsV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 189 - adminAddRolePermissionsV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddRolePermissionsV3 [flags] sample-apps Iam adminAddRolePermissionsV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminAddRolePermissionsV3 -h, --help help for adminAddRolePermissionsV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 190 - adminDeleteRolePermissionsV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteRolePermissionsV3 [flags] sample-apps Iam adminDeleteRolePermissionsV3 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminDeleteRolePermissionsV3 -h, --help help for adminDeleteRolePermissionsV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 191 - adminDeleteRolePermissionV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteRolePermissionV3 [flags] sample-apps Iam adminDeleteRolePermissionV3 [flags]
     
    Flags: Flags:
    --action int        Action (default -1) --action int Action (default -1)
    -h, --help              help for adminDeleteRolePermissionV3 -h, --help help for adminDeleteRolePermissionV3
    --resource string   Resource --resource string Resource
    --roleId string     Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 192 - adminGetMyUserV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetMyUserV3 [flags] sample-apps Iam adminGetMyUserV3 [flags]
     
    Flags: Flags:
    -h, --help   help for adminGetMyUserV3 -h, --help help for adminGetMyUserV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 193 - userAuthenticationV3
  ---
  error: |-
    Error: unknown flag: --clientId Error: unknown flag: --clientId
    Usage: Usage:
    sample-apps Iam userAuthenticationV3 [flags] sample-apps Iam userAuthenticationV3 [flags]
     
    Flags: Flags:
    --client_id string      Client id --client_id string Client id
    --extend_exp            Extend exp --extend_exp Extend exp
    -h, --help                  help for userAuthenticationV3 -h, --help help for userAuthenticationV3
    --password string       Password --password string Password
    --redirect_uri string   Redirect uri --redirect_uri string Redirect uri
    --request_id string     Request id --request_id string Request id
    --user_name string      User name --user_name string User name
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --clientId Error: unknown flag: --clientId
not ok 194 - getCountryLocationV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getCountryLocationV3 [flags] sample-apps Iam getCountryLocationV3 [flags]
     
    Flags: Flags:
    -h, --help   help for getCountryLocationV3 -h, --help help for getCountryLocationV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 195 - logout
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T08:15:55+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
    Usage: Usage:
    sample-apps Iam logout [flags] sample-apps Iam logout [flags]
     
    Flags: Flags:
    -h, --help   help for logout -h, --help help for logout
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
not ok 196 - adminRetrieveUserThirdPartyPlatformTokenV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 [flags] sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 [flags]
     
    Flags: Flags:
    -h, --help                help for adminRetrieveUserThirdPartyPlatformTokenV3 -h, --help help for adminRetrieveUserThirdPartyPlatformTokenV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 197 - revokeUserV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam revokeUserV3 [flags] sample-apps Iam revokeUserV3 [flags]
     
    Flags: Flags:
    -h, --help               help for revokeUserV3 -h, --help help for revokeUserV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 198 - authorizeV3
  ---
  error: |-
    Error: unknown flag: --codeChallenge Error: unknown flag: --codeChallenge
    Usage: Usage:
    sample-apps Iam authorizeV3 [flags] sample-apps Iam authorizeV3 [flags]
     
    Flags: Flags:
    --client_id string               Client id --client_id string Client id
    --code_challenge string          Code challenge --code_challenge string Code challenge
    --code_challenge_method string   Code challenge method --code_challenge_method string Code challenge method
    -h, --help                           help for authorizeV3 -h, --help help for authorizeV3
    --redirect_uri string            Redirect uri --redirect_uri string Redirect uri
    --response_type string           Response type --response_type string Response type
    --scope string                   Scope --scope string Scope
    --state string                   State --state string State
    --target_auth_page string        Target auth page --target_auth_page string Target auth page
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --codeChallenge Error: unknown flag: --codeChallenge
not ok 199 - tokenIntrospectionV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam tokenIntrospectionV3 [flags] sample-apps Iam tokenIntrospectionV3 [flags]
     
    Flags: Flags:
    -h, --help           help for tokenIntrospectionV3 -h, --help help for tokenIntrospectionV3
    --token string   Token --token string Token
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 200 - getJWKSV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getJWKSV3 [flags] sample-apps Iam getJWKSV3 [flags]
     
    Flags: Flags:
    -h, --help   help for getJWKSV3 -h, --help help for getJWKSV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 201 - retrieveUserThirdPartyPlatformTokenV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 [flags] sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 [flags]
     
    Flags: Flags:
    -h, --help                help for retrieveUserThirdPartyPlatformTokenV3 -h, --help help for retrieveUserThirdPartyPlatformTokenV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 202 - authCodeRequestV3
  ---
  error: |-
    Error: unknown flag: --clientId Error: unknown flag: --clientId
    Usage: Usage:
    sample-apps Iam authCodeRequestV3 [flags] sample-apps Iam authCodeRequestV3 [flags]
     
    Flags: Flags:
    --client_id string      Client id --client_id string Client id
    -h, --help                  help for authCodeRequestV3 -h, --help help for authCodeRequestV3
    --platformId string     Platform id --platformId string Platform id
    --redirect_uri string   Redirect uri --redirect_uri string Redirect uri
    --request_id string     Request id --request_id string Request id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --clientId Error: unknown flag: --clientId
not ok 203 - platformTokenGrantV3
  ---
  error: |-
    Error: unknown flag: --clientId Error: unknown flag: --clientId
    Usage: Usage:
    sample-apps Iam platformTokenGrantV3 [flags] sample-apps Iam platformTokenGrantV3 [flags]
     
    Flags: Flags:
    --client_id string        Client id --client_id string Client id
    --device_id string        Device id --device_id string Device id
    -h, --help                    help for platformTokenGrantV3 -h, --help help for platformTokenGrantV3
    --platformId string       Platform id --platformId string Platform id
    --platform_token string   Platform token --platform_token string Platform token
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --clientId Error: unknown flag: --clientId
not ok 204 - getRevocationListV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getRevocationListV3 [flags] sample-apps Iam getRevocationListV3 [flags]
     
    Flags: Flags:
    -h, --help   help for getRevocationListV3 -h, --help help for getRevocationListV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 205 - tokenRevocationV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam tokenRevocationV3 [flags] sample-apps Iam tokenRevocationV3 [flags]
     
    Flags: Flags:
    -h, --help           help for tokenRevocationV3 -h, --help help for tokenRevocationV3
    --token string   Token --token string Token
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 206 - tokenGrantV3
  ---
  error: |-
    Error: unknown flag: --deviceId Error: unknown flag: --deviceId
    Usage: Usage:
    sample-apps Iam tokenGrantV3 [flags] sample-apps Iam tokenGrantV3 [flags]
     
    Flags: Flags:
    --client_id string       Client id --client_id string Client id
    --code string            Code --code string Code
    --code_verifier string   Code verifier --code_verifier string Code verifier
    --device_id string       Device id --device_id string Device id
    --grant_type string      Grant type --grant_type string Grant type
    -h, --help                   help for tokenGrantV3 -h, --help help for tokenGrantV3
    --redirect_uri string    Redirect uri --redirect_uri string Redirect uri
    --refresh_token string   Refresh token --refresh_token string Refresh token
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --deviceId Error: unknown flag: --deviceId
not ok 207 - platformAuthenticationV3
  ---
  error: |-
    Error: unknown flag: --openidAssocHandle Error: unknown flag: --openidAssocHandle
    Usage: Usage:
    sample-apps Iam platformAuthenticationV3 [flags] sample-apps Iam platformAuthenticationV3 [flags]
     
    Flags: Flags:
    --code string                    Code --code string Code
    --error string                   Error --error string Error
    -h, --help                           help for platformAuthenticationV3 -h, --help help for platformAuthenticationV3
    --openid.assoc_handle string     Openid assoc handle --openid.assoc_handle string Openid assoc handle
    --openid.claimed_id string       Openid claimed id --openid.claimed_id string Openid claimed id
    --openid.identity string         Openid identity --openid.identity string Openid identity
    --openid.mode string             Openid mode --openid.mode string Openid mode
    --openid.ns string               Openid ns --openid.ns string Openid ns
    --openid.op_endpoint string      Openid op endpoint --openid.op_endpoint string Openid op endpoint
    --openid.response_nonce string   Openid response nonce --openid.response_nonce string Openid response nonce
    --openid.return_to string        Openid return to --openid.return_to string Openid return to
    --openid.sig string              Openid sig --openid.sig string Openid sig
    --openid.signed string           Openid signed --openid.signed string Openid signed
    --platformId string              Platform id --platformId string Platform id
    --state string                   State --state string State
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --openidAssocHandle Error: unknown flag: --openidAssocHandle
not ok 208 - publicGetInputValidations
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetInputValidations [flags] sample-apps Iam publicGetInputValidations [flags]
     
    Flags: Flags:
    --defaultOnEmpty        Default on empty --defaultOnEmpty Default on empty
    -h, --help                  help for publicGetInputValidations -h, --help help for publicGetInputValidations
    --languageCode string   Language code --languageCode string Language code
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 209 - retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response []" time="2022-02-09T08:15:55+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 [flags] sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 [flags]
     
    Flags: Flags:
    -h, --help               help for retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 -h, --help help for retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 210 - publicListUserIDByPlatformUserIDsV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicListUserIDByPlatformUserIDsV3 [flags] sample-apps Iam publicListUserIDByPlatformUserIDsV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for publicListUserIDByPlatformUserIDsV3 -h, --help help for publicListUserIDByPlatformUserIDsV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 211 - publicGetUserByPlatformUserIDV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserByPlatformUserIDV3 [flags] sample-apps Iam publicGetUserByPlatformUserIDV3 [flags]
     
    Flags: Flags:
    -h, --help                    help for publicGetUserByPlatformUserIDV3 -h, --help help for publicGetUserByPlatformUserIDV3
    --namespace string        Namespace --namespace string Namespace
    --platformId string       Platform id --platformId string Platform id
    --platformUserId string   Platform user id --platformUserId string Platform user id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 212 - publicGetAsyncStatus
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetAsyncStatus [flags] sample-apps Iam publicGetAsyncStatus [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetAsyncStatus -h, --help help for publicGetAsyncStatus
    --namespace string   Namespace --namespace string Namespace
    --requestId string   Request id --requestId string Request id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 213 - publicSearchUserV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicSearchUserV3 [flags] sample-apps Iam publicSearchUserV3 [flags]
     
    Flags: Flags:
    --by string          By --by string By
    -h, --help               help for publicSearchUserV3 -h, --help help for publicSearchUserV3
    --namespace string   Namespace --namespace string Namespace
    --query string       Query --query string Query
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 214 - publicCreateUserV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicCreateUserV3 [flags] sample-apps Iam publicCreateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserV3 -h, --help help for publicCreateUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 215 - checkUserAvailability
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam checkUserAvailability [flags] sample-apps Iam checkUserAvailability [flags]
     
    Flags: Flags:
    --field string       Field --field string Field
    -h, --help               help for checkUserAvailability -h, --help help for checkUserAvailability
    --namespace string   Namespace --namespace string Namespace
    --query string       Query --query string Query
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 216 - publicBulkGetUsers
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicBulkGetUsers [flags] sample-apps Iam publicBulkGetUsers [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicBulkGetUsers -h, --help help for publicBulkGetUsers
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 217 - publicForgotPasswordV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicForgotPasswordV3 [flags] sample-apps Iam publicForgotPasswordV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicForgotPasswordV3 -h, --help help for publicForgotPasswordV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 218 - getAdminInvitationV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam getAdminInvitationV3 [flags] sample-apps Iam getAdminInvitationV3 [flags]
     
    Flags: Flags:
    -h, --help                  help for getAdminInvitationV3 -h, --help help for getAdminInvitationV3
    --invitationId string   Invitation id --invitationId string Invitation id
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 219 - createUserFromInvitationV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:55+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam createUserFromInvitationV3 [flags] sample-apps Iam createUserFromInvitationV3 [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    -h, --help                  help for createUserFromInvitationV3 -h, --help help for createUserFromInvitationV3
    --invitationId string   Invitation id --invitationId string Invitation id
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 220 - updateUserV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response []" time="2022-02-09T08:15:55+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam updateUserV3 [flags] sample-apps Iam updateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateUserV3 -h, --help help for updateUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 221 - publicUpdateUserV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=info msg="Response []" time="2022-02-09T08:15:55+07:00" level=info msg="Response []"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpdateUserV3 [flags] sample-apps Iam publicUpdateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserV3 -h, --help help for publicUpdateUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 222 - publicSendVerificationCodeV3
  ---
  error: |-
    time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:55+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:55+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicSendVerificationCodeV3 [flags] sample-apps Iam publicSendVerificationCodeV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicSendVerificationCodeV3 -h, --help help for publicSendVerificationCodeV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 223 - publicUserVerificationV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUserVerificationV3 [flags] sample-apps Iam publicUserVerificationV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUserVerificationV3 -h, --help help for publicUserVerificationV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 224 - publicUpgradeHeadlessAccountV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpgradeHeadlessAccountV3 [flags] sample-apps Iam publicUpgradeHeadlessAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpgradeHeadlessAccountV3 -h, --help help for publicUpgradeHeadlessAccountV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 225 - publicVerifyHeadlessAccountV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicVerifyHeadlessAccountV3 [flags] sample-apps Iam publicVerifyHeadlessAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicVerifyHeadlessAccountV3 -h, --help help for publicVerifyHeadlessAccountV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 226 - publicUpdatePasswordV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpdatePasswordV3 [flags] sample-apps Iam publicUpdatePasswordV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdatePasswordV3 -h, --help help for publicUpdatePasswordV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 227 - publicCreateJusticeUser
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicCreateJusticeUser [flags] sample-apps Iam publicCreateJusticeUser [flags]
     
    Flags: Flags:
    -h, --help                     help for publicCreateJusticeUser -h, --help help for publicCreateJusticeUser
    --namespace string         Namespace --namespace string Namespace
    --targetNamespace string   Target namespace --targetNamespace string Target namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 228 - publicPlatformLinkV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicPlatformLinkV3 [flags] sample-apps Iam publicPlatformLinkV3 [flags]
     
    Flags: Flags:
    -h, --help                 help for publicPlatformLinkV3 -h, --help help for publicPlatformLinkV3
    --namespace string     Namespace --namespace string Namespace
    --platformId string    Platform id --platformId string Platform id
    --redirectUri string   Redirect uri --redirectUri string Redirect uri
    --ticket string        Ticket --ticket string Ticket
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 229 - publicPlatformUnlinkV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicPlatformUnlinkV3 [flags] sample-apps Iam publicPlatformUnlinkV3 [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for publicPlatformUnlinkV3 -h, --help help for publicPlatformUnlinkV3
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 230 - publicWebLinkPlatform
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicWebLinkPlatform [flags] sample-apps Iam publicWebLinkPlatform [flags]
     
    Flags: Flags:
    --clientId string      Client id --clientId string Client id
    -h, --help                 help for publicWebLinkPlatform -h, --help help for publicWebLinkPlatform
    --namespace string     Namespace --namespace string Namespace
    --platformId string    Platform id --platformId string Platform id
    --redirectUri string   Redirect uri --redirectUri string Redirect uri
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 231 - publicWebLinkPlatformEstablish
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicWebLinkPlatformEstablish [flags] sample-apps Iam publicWebLinkPlatformEstablish [flags]
     
    Flags: Flags:
    -h, --help                help for publicWebLinkPlatformEstablish -h, --help help for publicWebLinkPlatformEstablish
    --namespace string    Namespace --namespace string Namespace
    --platformId string   Platform id --platformId string Platform id
    --state string        State --state string State
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 232 - resetPasswordV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam resetPasswordV3 [flags] sample-apps Iam resetPasswordV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for resetPasswordV3 -h, --help help for resetPasswordV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 233 - publicGetUserByUserIdV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserByUserIdV3 [flags] sample-apps Iam publicGetUserByUserIdV3 [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserByUserIdV3 -h, --help help for publicGetUserByUserIdV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 234 - publicGetUserBanHistoryV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserBanHistoryV3 [flags] sample-apps Iam publicGetUserBanHistoryV3 [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    --after string       After (default "0") --after string After (default "0")
    --before string      Before (default "0") --before string Before (default "0")
    -h, --help               help for publicGetUserBanHistoryV3 -h, --help help for publicGetUserBanHistoryV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 235 - publicGetUserLoginHistoriesV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserLoginHistoriesV3 [flags] sample-apps Iam publicGetUserLoginHistoriesV3 [flags]
     
    Flags: Flags:
    --after float        After --after float After
    --before float       Before --before float Before
    -h, --help               help for publicGetUserLoginHistoriesV3 -h, --help help for publicGetUserLoginHistoriesV3
    --limit float        Limit (default 20) --limit float Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 236 - publicGetUserPlatformAccountsV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetUserPlatformAccountsV3 [flags] sample-apps Iam publicGetUserPlatformAccountsV3 [flags]
     
    Flags: Flags:
    --after string       After (default "0") --after string After (default "0")
    --before string      Before (default "0") --before string Before (default "0")
    -h, --help               help for publicGetUserPlatformAccountsV3 -h, --help help for publicGetUserPlatformAccountsV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 237 - publicLinkPlatformAccount
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicLinkPlatformAccount [flags] sample-apps Iam publicLinkPlatformAccount [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicLinkPlatformAccount -h, --help help for publicLinkPlatformAccount
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 238 - publicValidateUserByUserIDAndPasswordV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicValidateUserByUserIDAndPasswordV3 [flags] sample-apps Iam publicValidateUserByUserIDAndPasswordV3 [flags]
     
    Flags: Flags:
    -h, --help               help for publicValidateUserByUserIDAndPasswordV3 -h, --help help for publicValidateUserByUserIDAndPasswordV3
    --namespace string   Namespace --namespace string Namespace
    --password string    Password --password string Password
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 239 - publicGetRolesV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetRolesV3 [flags] sample-apps Iam publicGetRolesV3 [flags]
     
    Flags: Flags:
    --after string    After (default "0") --after string After (default "0")
    --before string   Before (default "0") --before string Before (default "0")
    -h, --help            help for publicGetRolesV3 -h, --help help for publicGetRolesV3
    --isWildcard      Is wildcard --isWildcard Is wildcard
    --limit int       Limit (default 20) --limit int Limit (default 20)
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 240 - publicGetRoleV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetRoleV3 [flags] sample-apps Iam publicGetRoleV3 [flags]
     
    Flags: Flags:
    -h, --help            help for publicGetRoleV3 -h, --help help for publicGetRoleV3
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 241 - publicGetMyUserV3
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicGetMyUserV3 [flags] sample-apps Iam publicGetMyUserV3 [flags]
     
    Flags: Flags:
    -h, --help   help for publicGetMyUserV3 -h, --help help for publicGetMyUserV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 242 - platformAuthenticateSAMLV3Handler
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam platformAuthenticateSAMLV3Handler [flags] sample-apps Iam platformAuthenticateSAMLV3Handler [flags]
     
    Flags: Flags:
    --code string         Code --code string Code
    --error string        Error --error string Error
    -h, --help                help for platformAuthenticateSAMLV3Handler -h, --help help for platformAuthenticateSAMLV3Handler
    --platformId string   Platform id --platformId string Platform id
    --state string        State --state string State
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 243 - loginSSOClient
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam loginSSOClient [flags] sample-apps Iam loginSSOClient [flags]
     
    Flags: Flags:
    -h, --help                help for loginSSOClient -h, --help help for loginSSOClient
    --payload string      Payload --payload string Payload
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 244 - logoutSSOClient
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam logoutSSOClient [flags] sample-apps Iam logoutSSOClient [flags]
     
    Flags: Flags:
    -h, --help                help for logoutSSOClient -h, --help help for logoutSSOClient
    --platformId string   Platform id --platformId string Platform id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 245 - adminUpdateUserV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserV4 [flags] sample-apps Iam adminUpdateUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserV4 -h, --help help for adminUpdateUserV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 246 - adminUpdateUserEmailAddressV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserEmailAddressV4 [flags] sample-apps Iam adminUpdateUserEmailAddressV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserEmailAddressV4 -h, --help help for adminUpdateUserEmailAddressV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 247 - adminListUserRolesV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminListUserRolesV4 [flags] sample-apps Iam adminListUserRolesV4 [flags]
     
    Flags: Flags:
    -h, --help               help for adminListUserRolesV4 -h, --help help for adminListUserRolesV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 248 - adminUpdateUserRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateUserRoleV4 [flags] sample-apps Iam adminUpdateUserRoleV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserRoleV4 -h, --help help for adminUpdateUserRoleV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 249 - adminAddUserRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddUserRoleV4 [flags] sample-apps Iam adminAddUserRoleV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminAddUserRoleV4 -h, --help help for adminAddUserRoleV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 250 - adminRemoveUserRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminRemoveUserRoleV4 [flags] sample-apps Iam adminRemoveUserRoleV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminRemoveUserRoleV4 -h, --help help for adminRemoveUserRoleV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 251 - adminGetRolesV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRolesV4 [flags] sample-apps Iam adminGetRolesV4 [flags]
     
    Flags: Flags:
    --adminRole    Admin role --adminRole Admin role
    -h, --help         help for adminGetRolesV4 -h, --help help for adminGetRolesV4
    --isWildcard   Is wildcard --isWildcard Is wildcard
    --limit int    Limit (default 20) --limit int Limit (default 20)
    --offset int   Offset --offset int Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 252 - adminCreateRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminCreateRoleV4 [flags] sample-apps Iam adminCreateRoleV4 [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminCreateRoleV4 -h, --help help for adminCreateRoleV4
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 253 - adminGetRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminGetRoleV4 [flags] sample-apps Iam adminGetRoleV4 [flags]
     
    Flags: Flags:
    -h, --help            help for adminGetRoleV4 -h, --help help for adminGetRoleV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 254 - adminDeleteRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteRoleV4 [flags] sample-apps Iam adminDeleteRoleV4 [flags]
     
    Flags: Flags:
    -h, --help            help for adminDeleteRoleV4 -h, --help help for adminDeleteRoleV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 255 - adminUpdateRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateRoleV4 [flags] sample-apps Iam adminUpdateRoleV4 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminUpdateRoleV4 -h, --help help for adminUpdateRoleV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 256 - adminUpdateRolePermissionsV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateRolePermissionsV4 [flags] sample-apps Iam adminUpdateRolePermissionsV4 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminUpdateRolePermissionsV4 -h, --help help for adminUpdateRolePermissionsV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 257 - adminAddRolePermissionsV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAddRolePermissionsV4 [flags] sample-apps Iam adminAddRolePermissionsV4 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminAddRolePermissionsV4 -h, --help help for adminAddRolePermissionsV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 258 - adminDeleteRolePermissionsV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminDeleteRolePermissionsV4 [flags] sample-apps Iam adminDeleteRolePermissionsV4 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminDeleteRolePermissionsV4 -h, --help help for adminDeleteRolePermissionsV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 259 - adminListAssignedUsersV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminListAssignedUsersV4 [flags] sample-apps Iam adminListAssignedUsersV4 [flags]
     
    Flags: Flags:
    --after string    After (default "0") --after string After (default "0")
    --before string   Before (default "0") --before string Before (default "0")
    -h, --help            help for adminListAssignedUsersV4 -h, --help help for adminListAssignedUsersV4
    --limit int       Limit (default 20) --limit int Limit (default 20)
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 260 - adminAssignUserToRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:56+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminAssignUserToRoleV4 [flags] sample-apps Iam adminAssignUserToRoleV4 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminAssignUserToRoleV4 -h, --help help for adminAssignUserToRoleV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 261 - adminRevokeUserFromRoleV4
  ---
  error: |-
    time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:56+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:56+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminRevokeUserFromRoleV4 [flags] sample-apps Iam adminRevokeUserFromRoleV4 [flags]
     
    Flags: Flags:
    --body string     Body --body string Body
    -h, --help            help for adminRevokeUserFromRoleV4 -h, --help help for adminRevokeUserFromRoleV4
    --roleId string   Role id --roleId string Role id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 262 - adminUpdateMyUserV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminUpdateMyUserV4 [flags] sample-apps Iam adminUpdateMyUserV4 [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminUpdateMyUserV4 -h, --help help for adminUpdateMyUserV4
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 263 - adminInviteUserV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam adminInviteUserV4 [flags] sample-apps Iam adminInviteUserV4 [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminInviteUserV4 -h, --help help for adminInviteUserV4
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 264 - publicCreateTestUserV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicCreateTestUserV4 [flags] sample-apps Iam publicCreateTestUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateTestUserV4 -h, --help help for publicCreateTestUserV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 265 - publicCreateUserV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicCreateUserV4 [flags] sample-apps Iam publicCreateUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserV4 -h, --help help for publicCreateUserV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 266 - createUserFromInvitationV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam createUserFromInvitationV4 [flags] sample-apps Iam createUserFromInvitationV4 [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    -h, --help                  help for createUserFromInvitationV4 -h, --help help for createUserFromInvitationV4
    --invitationId string   Invitation id --invitationId string Invitation id
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 267 - publicUpdateUserV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpdateUserV4 [flags] sample-apps Iam publicUpdateUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserV4 -h, --help help for publicUpdateUserV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 268 - publicUpdateUserEmailAddressV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpdateUserEmailAddressV4 [flags] sample-apps Iam publicUpdateUserEmailAddressV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserEmailAddressV4 -h, --help help for publicUpdateUserEmailAddressV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 269 - publicUpgradeHeadlessAccountWithVerificationCodeV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 [flags] sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpgradeHeadlessAccountWithVerificationCodeV4 -h, --help help for publicUpgradeHeadlessAccountWithVerificationCodeV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
not ok 270 - publicUpgradeHeadlessAccountV4
  ---
  error: |-
    time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T08:15:57+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>" time="2022-02-09T08:15:57+07:00" level=info msg="Response <nil>"
    time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T08:15:57+07:00" level=error msg="no consumer: "application/problem+json""
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
    Usage: Usage:
    sample-apps Iam publicUpgradeHeadlessAccountV4 [flags] sample-apps Iam publicUpgradeHeadlessAccountV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpgradeHeadlessAccountV4 -h, --help help for publicUpgradeHeadlessAccountV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/problem+json" Error: no consumer: "application/problem+json"
```

