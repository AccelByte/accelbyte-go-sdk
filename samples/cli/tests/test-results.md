# Test Results

```tap
sh/run-go-cli-dsmc-unit-test.sh

go install github.com/AccelByte/sample-apps
1..63
ok 1 listConfig
ok 2 saveConfig (skipped deprecated)
ok 3 updateImage
ok 4 createImage
not ok 5 - importImages
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x12a45cf] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x12a45cf]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/dsmc/imageConfig.glob..func7(0x2c15840, {0x19e45e1, 0x2, 0x2}) github.com/AccelByte/sample-apps/cmd/dsmc/imageConfig.glob..func7(0x2c15840, {0x19e45e1, 0x2, 0x2})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/dsmc/imageConfig/importImages.go:27 +0x8f /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/dsmc/imageConfig/importImages.go:27 +0x8f
    github.com/spf13/cobra.(*Command).execute(0x2c15840, {0xc00014a880, 0x2, 0x2}) github.com/spf13/cobra.(*Command).execute(0x2c15840, {0xc00014a880, 0x2, 0x2})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 6 getConfig
ok 7 createConfig
ok 8 deleteConfig
ok 9 updateConfig
ok 10 clearCache
ok 11 getAllDeployment
ok 12 getDeployment
ok 13 createDeployment
ok 14 deleteDeployment
ok 15 updateDeployment
ok 16 createRootRegionOverride
ok 17 deleteRootRegionOverride
ok 18 updateRootRegionOverride
ok 19 createDeploymentOverride
ok 20 deleteDeploymentOverride
ok 21 updateDeploymentOverride
ok 22 createOverrideRegionOverride
ok 23 deleteOverrideRegionOverride
ok 24 updateOverrideRegionOverride
ok 25 getAllPodConfig
ok 26 getPodConfig
ok 27 createPodConfig
ok 28 deletePodConfig
ok 29 updatePodConfig
ok 30 addPort
ok 31 deletePort
ok 32 updatePort
ok 33 listImages
ok 34 deleteImage
ok 35 exportImages
ok 36 getImageLimit
ok 37 getImageDetail
ok 38 listServer
ok 39 countServer
ok 40 countServerDetailed
ok 41 listLocalServer
ok 42 deleteLocalServer
ok 43 getServer
ok 44 deleteServer
ok 45 getServerLogs
ok 46 listSession
ok 47 countSession
ok 48 deleteSession
ok 49 exportConfigV1
not ok 50 - importConfigV1
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x129e156] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x129e156]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/dsmc/config.glob..func8(0x2c11ec0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/dsmc/config.glob..func8(0x2c11ec0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/dsmc/config/importConfigV1.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/dsmc/config/importConfigV1.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c11ec0, {0xc000691680, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c11ec0, {0xc000691680, 0x4, 0x4})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 51 imageDetailClient
ok 52 deregisterLocalServer
ok 53 registerLocalServer
ok 54 registerServer
ok 55 shutdownServer
ok 56 getServerSession
ok 57 createSession
ok 58 claimServer
ok 59 getSession
ok 60 getDefaultProvider
ok 61 listProviders
ok 62 listProvidersByRegion
ok 63 publicGetMessages
```

```tap
sh/run-go-cli-achievement-unit-test.sh

go install github.com/AccelByte/sample-apps
1..14
ok 1 adminListAchievements
ok 2 adminCreateNewAchievement
ok 3 exportAchievements
not ok 4 - importAchievements
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1279256] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1279256]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/achievement/achievements.glob..func10(0x2c00940, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/achievement/achievements.glob..func10(0x2c00940, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/achievement/achievements/importAchievements.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/achievement/achievements/importAchievements.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c00940, {0xc0000883c0, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c00940, {0xc0000883c0, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 5 adminGetAchievement
ok 6 adminUpdateAchievement
ok 7 adminDeleteAchievement
ok 8 adminUpdateAchievementListOrder
ok 9 adminListUserAchievements
ok 10 adminUnlockAchievement
ok 11 publicListAchievements
ok 12 publicGetAchievement
ok 13 publicListUserAchievements
ok 14 publicUnlockAchievement
```

```tap
sh/run-go-cli-iam-unit-test.sh

go install github.com/AccelByte/sample-apps
1..270
ok 1 getBansType
ok 2 getListBanReason
ok 3 getClients (skipped deprecated)
ok 4 createClient (skipped deprecated)
ok 5 getClient
ok 6 updateClient
ok 7 deleteClient (skipped deprecated)
ok 8 updateClientPermission
not ok 9 - addClientPermission
  ---
  error: |-
    time="2022-02-09T21:00:06+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:06+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:06+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T21:00:06+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
ok 10 deleteClientPermission
ok 11 updateClientSecret
ok 12 getClientsbyNamespace
ok 13 createClientByNamespace
ok 14 deleteClientByNamespace
ok 15 createUser
ok 16 getAdminUsersByRoleID
ok 17 getUserByLoginID
ok 18 getUserByPlatformUserID
ok 19 forgotPassword
ok 20 getUsersByLoginIds
ok 21 resetPassword
ok 22 searchUser (skipped deprecated)
ok 23 getUserByUserID
ok 24 updateUser
ok 25 deleteUser
ok 26 banUser
ok 27 getUserBanHistory
not ok 28 - disableUserBan
  ---
  error: |-
    time="2022-02-09T21:00:06+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:06+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:06+07:00" level=info msg="Response <nil>" time="2022-02-09T21:00:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T21:00:06+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T21:00:06+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
    time="2022-02-09T21:00:06+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:06+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:06+07:00" level=info msg="Response <nil>" time="2022-02-09T21:00:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T21:00:06+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T21:00:06+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
ok 33 getUserInformation
ok 34 deleteUserInformation
ok 35 getUserLoginHistories
ok 36 updatePassword (skipped deprecated)
ok 37 saveUserPermission
ok 38 addUserPermission
ok 39 deleteUserPermission
ok 40 getUserPlatformAccounts
ok 41 getUserMapping
ok 42 getUserJusticePlatformAccount (skipped deprecated)
ok 43 platformLink
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
ok 45 getPublisherUser
ok 46 saveUserRoles
ok 47 addUserRole
ok 48 deleteUserRole
ok 49 upgradeHeadlessAccount
ok 50 upgradeHeadlessAccountWithVerificationCode
ok 51 userVerification
ok 52 sendVerificationCode
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
ok 54 getJWKS
ok 55 platformTokenRequestHandler (skipped deprecated)
ok 56 revokeUser
ok 57 getRevocationList
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
ok 61 verifyToken
ok 62 getRoles
ok 63 createRole
ok 64 getRole
ok 65 updateRole
ok 66 deleteRole
ok 67 getRoleAdminStatus
ok 68 setRoleAsAdmin
ok 69 removeRoleAdmin
ok 70 getRoleManagers
ok 71 addRoleManagers
ok 72 removeRoleManagers
ok 73 getRoleMembers
ok 74 addRoleMembers
ok 75 removeRoleMembers
ok 76 updateRolePermissions
ok 77 addRolePermission
ok 78 deleteRolePermission
ok 79 adminGetAgeRestrictionStatusV2
ok 80 adminUpdateAgeRestrictionConfigV2
ok 81 getListCountryAgeRestriction
ok 82 updateCountryAgeRestriction
ok 83 adminSearchUsersV2
ok 84 adminGetUserByUserIdV2
ok 85 adminUpdateUserV2
ok 86 adminBanUserV2
ok 87 adminGetUserBanV2
ok 88 adminDisableUserV2
not ok 89 - adminEnableUserV2
  ---
  error: |-
    time="2022-02-09T21:00:07+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:07+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:07+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T21:00:07+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
ok 90 adminResetPasswordV2
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
ok 92 adminPutUserRolesV2
ok 93 adminCreateUserRolesV2
ok 94 publicCreateUserV2
ok 95 publicForgotPasswordV2
ok 96 publicResetPasswordV2
ok 97 publicGetUserByUserIDV2
ok 98 publicUpdateUserV2
ok 99 publicGetUserBan
ok 100 publicUpdatePasswordV2
ok 101 getListJusticePlatformAccounts
ok 102 publicPlatformLinkV2
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
ok 104 adminGetBansTypeV3
ok 105 adminGetListBanReasonV3
ok 106 adminGetInputValidations
ok 107 adminUpdateInputValidations
ok 108 adminResetInputValidations
ok 109 listAdminsV3
ok 110 adminGetAgeRestrictionStatusV3
ok 111 adminUpdateAgeRestrictionConfigV3
ok 112 adminGetListCountryAgeRestrictionV3
ok 113 adminUpdateCountryAgeRestrictionV3
ok 114 adminGetBannedUsersV3
ok 115 adminGetBansTypeWithNamespaceV3
ok 116 adminGetClientsByNamespaceV3
ok 117 adminCreateClientV3
ok 118 adminGetClientsbyNamespacebyIDV3
ok 119 adminDeleteClientV3
ok 120 adminUpdateClientV3
ok 121 adminUpdateClientPermissionV3
ok 122 adminAddClientPermissionsV3
ok 123 adminDeleteClientPermissionV3
ok 124 retrieveAllThirdPartyLoginPlatformCredentialV3
ok 125 retrieveAllActiveThirdPartyLoginPlatformCredentialV3
ok 126 retrieveAllSSOLoginPlatformCredentialV3
ok 127 retrieveThirdPartyLoginPlatformCredentialV3
ok 128 addThirdPartyLoginPlatformCredentialV3
ok 129 deleteThirdPartyLoginPlatformCredentialV3
ok 130 updateThirdPartyLoginPlatformCredentialV3
ok 131 updateThirdPartyLoginPlatformDomainV3
ok 132 deleteThirdPartyLoginPlatformDomainV3
ok 133 retrieveSSOLoginPlatformCredential
ok 134 addSSOLoginPlatformCredential
ok 135 deleteSSOLoginPlatformCredentialV3
ok 136 updateSSOPlatformCredential
ok 137 adminGetUserByPlatformUserIDV3
ok 138 getAdminUsersByRoleIdV3
ok 139 adminGetUserByEmailAddressV3
ok 140 adminListUserIDByUserIDsV3
ok 141 adminInviteUserV3
ok 142 adminListUsersV3
ok 143 adminSearchUserV3
ok 144 adminGetBulkUserByEmailAddressV3
ok 145 adminGetUserByUserIdV3
ok 146 adminUpdateUserV3
ok 147 adminGetUserBanV3
ok 148 adminBanUserV3
ok 149 adminUpdateUserBanV3
ok 150 adminSendVerificationCodeV3
ok 151 adminVerifyAccountV3
ok 152 getUserVerificationCode
ok 153 adminGetUserDeletionStatusV3
ok 154 adminUpdateUserDeletionStatusV3
ok 155 adminUpgradeHeadlessAccountV3
ok 156 adminDeleteUserInformationV3
ok 157 adminGetUserLoginHistoriesV3
ok 158 adminUpdateUserPermissionV3
ok 159 adminAddUserPermissionsV3
ok 160 adminDeleteUserPermissionBulkV3
ok 161 adminDeleteUserPermissionV3
ok 162 adminGetUserPlatformAccountsV3
ok 163 adminGetListJusticePlatformAccounts
ok 164 adminCreateJusticeUser
ok 165 adminLinkPlatformAccount
ok 166 adminPlatformUnlinkV3
ok 167 adminPlatformLinkV3
ok 168 adminDeleteUserRolesV3
ok 169 adminSaveUserRoleV3
ok 170 adminAddUserRoleV3
ok 171 adminDeleteUserRoleV3
ok 172 adminUpdateUserStatusV3
ok 173 adminVerifyUserWithoutVerificationCodeV3
ok 174 adminGetRolesV3
ok 175 adminCreateRoleV3
ok 176 adminGetRoleV3
ok 177 adminDeleteRoleV3
ok 178 adminUpdateRoleV3
ok 179 adminGetRoleAdminStatusV3
ok 180 adminUpdateAdminRoleStatusV3
ok 181 adminRemoveRoleAdminV3
ok 182 adminGetRoleManagersV3
ok 183 adminAddRoleManagersV3
ok 184 adminRemoveRoleManagersV3
ok 185 adminGetRoleMembersV3
ok 186 adminAddRoleMembersV3
ok 187 adminRemoveRoleMembersV3
ok 188 adminUpdateRolePermissionsV3
ok 189 adminAddRolePermissionsV3
ok 190 adminDeleteRolePermissionsV3
ok 191 adminDeleteRolePermissionV3
ok 192 adminGetMyUserV3
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
ok 194 getCountryLocationV3
not ok 195 - logout
  ---
  error: |-
    time="2022-02-09T21:00:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T21:00:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
    Usage: Usage:
    sample-apps Iam logout [flags] sample-apps Iam logout [flags]
     
    Flags: Flags:
    -h, --help   help for logout -h, --help help for logout
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */* Error: none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try sh/run-go-cli-achievement-unit-test.sh sh/run-go-cli-all-unit-test.sh sh/run-go-cli-basic-unit-test.sh sh/run-go-cli-cloudsave-unit-test.sh sh/run-go-cli-dslogmanager-unit-test.sh sh/run-go-cli-dsmc-unit-test.sh sh/run-go-cli-eventlog-unit-test.sh sh/run-go-cli-gametelemetry-unit-test.sh sh/run-go-cli-gdpr-unit-test.sh sh/run-go-cli-group-unit-test.sh sh/run-go-cli-iam-unit-test.sh sh/run-go-cli-leaderboard-unit-test.sh sh/run-go-cli-legal-unit-test.sh sh/run-go-cli-lobby-unit-test.sh sh/run-go-cli-matchmaking-unit-test.sh sh/run-go-cli-platform-unit-test.sh sh/run-go-cli-qosm-unit-test.sh sh/run-go-cli-seasonpass-unit-test.sh sh/run-go-cli-sessionbrowser-unit-test.sh sh/run-go-cli-social-unit-test.sh sh/run-go-cli-ugc-unit-test.sh
ok 196 adminRetrieveUserThirdPartyPlatformTokenV3
ok 197 revokeUserV3
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
ok 199 tokenIntrospectionV3
ok 200 getJWKSV3
ok 201 retrieveUserThirdPartyPlatformTokenV3
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
ok 204 getRevocationListV3
ok 205 tokenRevocationV3
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
ok 208 publicGetInputValidations
ok 209 retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
ok 210 publicListUserIDByPlatformUserIDsV3
ok 211 publicGetUserByPlatformUserIDV3
ok 212 publicGetAsyncStatus
ok 213 publicSearchUserV3
ok 214 publicCreateUserV3
ok 215 checkUserAvailability
ok 216 publicBulkGetUsers
ok 217 publicForgotPasswordV3
ok 218 getAdminInvitationV3
ok 219 createUserFromInvitationV3
ok 220 updateUserV3
ok 221 publicUpdateUserV3
ok 222 publicSendVerificationCodeV3
ok 223 publicUserVerificationV3
ok 224 publicUpgradeHeadlessAccountV3
ok 225 publicVerifyHeadlessAccountV3
ok 226 publicUpdatePasswordV3
ok 227 publicCreateJusticeUser
ok 228 publicPlatformLinkV3
ok 229 publicPlatformUnlinkV3
ok 230 publicWebLinkPlatform
not ok 231 - publicWebLinkPlatformEstablish
  ---
  error: |-
    time="2022-02-09T21:00:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:09+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T21:00:09+07:00" level=error msg="no consumer: "application/problem+json""
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
ok 232 resetPasswordV3
ok 233 publicGetUserByUserIdV3
ok 234 publicGetUserBanHistoryV3
ok 235 publicGetUserLoginHistoriesV3
ok 236 publicGetUserPlatformAccountsV3
ok 237 publicLinkPlatformAccount
ok 238 publicValidateUserByUserIDAndPasswordV3
ok 239 publicGetRolesV3
ok 240 publicGetRoleV3
ok 241 publicGetMyUserV3
not ok 242 - platformAuthenticateSAMLV3Handler
  ---
  error: |-
    time="2022-02-09T21:00:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T21:00:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T21:00:09+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T21:00:09+07:00" level=error msg="no consumer: "application/problem+json""
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
ok 243 loginSSOClient
ok 244 logoutSSOClient
ok 245 adminUpdateUserV4
ok 246 adminUpdateUserEmailAddressV4
ok 247 adminListUserRolesV4
ok 248 adminUpdateUserRoleV4
ok 249 adminAddUserRoleV4
ok 250 adminRemoveUserRoleV4
ok 251 adminGetRolesV4
ok 252 adminCreateRoleV4
ok 253 adminGetRoleV4
ok 254 adminDeleteRoleV4
ok 255 adminUpdateRoleV4
ok 256 adminUpdateRolePermissionsV4
ok 257 adminAddRolePermissionsV4
ok 258 adminDeleteRolePermissionsV4
ok 259 adminListAssignedUsersV4
ok 260 adminAssignUserToRoleV4
ok 261 adminRevokeUserFromRoleV4
ok 262 adminUpdateMyUserV4
ok 263 adminInviteUserV4
ok 264 publicCreateTestUserV4
ok 265 publicCreateUserV4
ok 266 createUserFromInvitationV4
ok 267 publicUpdateUserV4
ok 268 publicUpdateUserEmailAddressV4
ok 269 publicUpgradeHeadlessAccountWithVerificationCodeV4
ok 270 publicUpgradeHeadlessAccountV4
```

```tap
sh/run-go-cli-seasonpass-unit-test.sh

go install github.com/AccelByte/sample-apps
1..38
ok 1 getPass
ok 2 deletePass
ok 3 updatePass
ok 4 queryPasses
ok 5 createPass
ok 6 getReward
ok 7 deleteReward
ok 8 updateReward
ok 9 queryRewards
ok 10 createReward
ok 11 unpublishSeason
ok 12 getSeason
ok 13 deleteSeason
ok 14 updateSeason
ok 15 cloneSeason
ok 16 querySeasons
ok 17 createSeason
ok 18 retireSeason
ok 19 publishSeason
ok 20 getCurrentSeason
ok 21 updateTier
ok 22 deleteTier
ok 23 queryTiers
ok 24 createTier
ok 25 existsAnyPassByPassCodes
ok 26 grantUserTier
ok 27 getUserSeason
ok 28 checkSeasonPurchasable
ok 29 getCurrentUserSeasonProgression
ok 30 resetUserSeason
ok 31 grantUserPass
ok 32 getUserParticipatedSeasons
ok 33 grantUserExp
ok 34 publicGetCurrentSeason
ok 35 publicClaimUserReward
ok 36 publicGetCurrentUserSeason
ok 37 publicBulkClaimUserRewards
ok 38 publicGetUserSeason
```

```tap
sh/run-go-cli-lobby-unit-test.sh

go install github.com/AccelByte/sample-apps
1..89
ok 1 getUserFriendsUpdated
ok 2 getUserIncomingFriends
ok 3 getUserOutgoingFriends
ok 4 userRequestFriend
ok 5 userAcceptFriendRequest
ok 6 userCancelFriendRequest
ok 7 userRejectFriendRequest
ok 8 userGetFriendshipStatus
ok 9 userUnfriendRequest
ok 10 addFriendsWithoutConfirmation
ok 11 personalChatHistory
ok 12 adminChatHistory
ok 13 adminGetAllConfigV1
ok 14 adminGetConfigV1
ok 15 adminUpdateConfigV1
ok 16 exportConfig
ok 17 importConfig
ok 18 getListOfFriends
ok 19 sendMultipleUsersFreeformNotificationV1Admin
ok 20 sendUsersFreeformNotificationV1Admin
ok 21 sendPartyFreeformNotificationV1Admin
ok 22 sendPartyTemplatedNotificationV1Admin
ok 23 getAllNotificationTemplatesV1Admin
ok 24 createNotificationTemplateV1Admin
ok 25 sendUsersTemplatedNotificationV1Admin
ok 26 getTemplateSlugLocalizationsTemplateV1Admin
ok 27 deleteNotificationTemplateSlugV1Admin
ok 28 getSingleTemplateLocalizationV1Admin
ok 29 updateTemplateLocalizationV1Admin
ok 30 deleteTemplateLocalizationV1Admin
ok 31 publishTemplateLocalizationV1Admin
ok 32 getAllNotificationTopicsV1Admin
ok 33 createNotificationTopicV1Admin
ok 34 getNotificationTopicV1Admin
ok 35 updateNotificationTopicV1Admin
ok 36 deleteNotificationTopicV1Admin
ok 37 sendSpecificUserFreeformNotificationV1Admin
ok 38 sendSpecificUserTemplatedNotificationV1Admin
ok 39 adminGetPartyDataV1
not ok 40 - adminUpdatePartyAttributesV1
  ---
  error: |-
    Error: unknown flag: --body Error: unknown flag: --body
    Usage: Usage:
    sample-apps Lobby [command] sample-apps Lobby [command]
     
    Available Commands: Available Commands:
    addFriendsWithoutConfirmation                Add friends without confirmation addFriendsWithoutConfirmation Add friends without confirmation
    adminAddProfanityFilterIntoList              Admin add profanity filter into list adminAddProfanityFilterIntoList Admin add profanity filter into list
    adminAddProfanityFilters                     Admin add profanity filters adminAddProfanityFilters Admin add profanity filters
    adminBulkBlockPlayersV1                      Admin bulk block players V1 adminBulkBlockPlayersV1 Admin bulk block players V1
    adminChatHistory                             Admin chat history adminChatHistory Admin chat history
    adminCreateProfanityList                     Admin create profanity list adminCreateProfanityList Admin create profanity list
    adminCreateThirdPartyConfig                  Admin create third party config adminCreateThirdPartyConfig Admin create third party config
    adminDebugProfanityFilters                   Admin debug profanity filters adminDebugProfanityFilters Admin debug profanity filters
    adminDeleteProfanityFilter                   Admin delete profanity filter adminDeleteProfanityFilter Admin delete profanity filter
    adminDeleteProfanityList                     Admin delete profanity list adminDeleteProfanityList Admin delete profanity list
    adminDeleteThirdPartyConfig                  Admin delete third party config adminDeleteThirdPartyConfig Admin delete third party config
    adminGetAllConfigV1                          Admin get all config V1 adminGetAllConfigV1 Admin get all config V1
    adminGetAllPlayerSessionAttribute            Admin get all player session attribute adminGetAllPlayerSessionAttribute Admin get all player session attribute
    adminGetConfigV1                             Admin get config V1 adminGetConfigV1 Admin get config V1
    adminGetLobbyCCU                             Admin get lobby CCU adminGetLobbyCCU Admin get lobby CCU
    adminGetPartyDataV1                          Admin get party data V1 adminGetPartyDataV1 Admin get party data V1
    adminGetPlayerBlockedByPlayersV1             Admin get player blocked by players V1 adminGetPlayerBlockedByPlayersV1 Admin get player blocked by players V1
    adminGetPlayerBlockedPlayersV1               Admin get player blocked players V1 adminGetPlayerBlockedPlayersV1 Admin get player blocked players V1
    adminGetPlayerSessionAttribute               Admin get player session attribute adminGetPlayerSessionAttribute Admin get player session attribute
    adminGetProfanityListFiltersV1               Admin get profanity list filters V1 adminGetProfanityListFiltersV1 Admin get profanity list filters V1
    adminGetProfanityLists                       Admin get profanity lists adminGetProfanityLists Admin get profanity lists
    adminGetProfanityRule                        Admin get profanity rule adminGetProfanityRule Admin get profanity rule
    adminGetThirdPartyConfig                     Admin get third party config adminGetThirdPartyConfig Admin get third party config
    adminGetUserPartyV1                          Admin get user party V1 adminGetUserPartyV1 Admin get user party V1
    adminImportProfanityFiltersFromFile          Admin import profanity filters from file adminImportProfanityFiltersFromFile Admin import profanity filters from file
    adminSetPlayerSessionAttribute               Admin set player session attribute adminSetPlayerSessionAttribute Admin set player session attribute
    adminSetProfanityRuleForNamespace            Admin set profanity rule for namespace adminSetProfanityRuleForNamespace Admin set profanity rule for namespace
    adminUpdateConfigV1                          Admin update config V1 adminUpdateConfigV1 Admin update config V1
    adminUpdateProfanityList                     Admin update profanity list adminUpdateProfanityList Admin update profanity list
    adminUpdateThirdPartyConfig                  Admin update third party config adminUpdateThirdPartyConfig Admin update third party config
    adminVerifyMessageProfanityResponse          Admin verify message profanity response adminVerifyMessageProfanityResponse Admin verify message profanity response
    createNotificationTemplateV1Admin            Create notification template V1 admin createNotificationTemplateV1Admin Create notification template V1 admin
    createNotificationTopicV1Admin               Create notification topic V1 admin createNotificationTopicV1Admin Create notification topic V1 admin
    createTemplate                               Create template createTemplate Create template
    createTopic                                  Create topic createTopic Create topic
    deleteNotificationTemplateSlugV1Admin        Delete notification template slug V1 admin deleteNotificationTemplateSlugV1Admin Delete notification template slug V1 admin
    deleteNotificationTopicV1Admin               Delete notification topic V1 admin deleteNotificationTopicV1Admin Delete notification topic V1 admin
    deleteTemplateLocalization                   Delete template localization deleteTemplateLocalization Delete template localization
    deleteTemplateLocalizationV1Admin            Delete template localization V1 admin deleteTemplateLocalizationV1Admin Delete template localization V1 admin
    deleteTemplateSlug                           Delete template slug deleteTemplateSlug Delete template slug
    deleteTopicByTopicName                       Delete topic by topic name deleteTopicByTopicName Delete topic by topic name
    exportConfig                                 Export config exportConfig Export config
    freeFormNotification                         Free form notification freeFormNotification Free form notification
    freeFormNotificationByUserID                 Free form notification by user ID freeFormNotificationByUserID Free form notification by user ID
    getAllNotificationTemplatesV1Admin           Get all notification templates V1 admin getAllNotificationTemplatesV1Admin Get all notification templates V1 admin
    getAllNotificationTopicsV1Admin              Get all notification topics V1 admin getAllNotificationTopicsV1Admin Get all notification topics V1 admin
    getGameTemplate                              Get game template getGameTemplate Get game template
    getListOfFriends                             Get list of friends getListOfFriends Get list of friends
    getLocalizationTemplate                      Get localization template getLocalizationTemplate Get localization template
    getNotificationTopicV1Admin                  Get notification topic V1 admin getNotificationTopicV1Admin Get notification topic V1 admin
    getPersonalChatHistoryV1Public               Get personal chat history V1 public getPersonalChatHistoryV1Public Get personal chat history V1 public
    getSingleTemplateLocalizationV1Admin         Get single template localization V1 admin getSingleTemplateLocalizationV1Admin Get single template localization V1 admin
    getSlugTemplate                              Get slug template getSlugTemplate Get slug template
    getTemplateSlugLocalizationsTemplateV1Admin  Get template slug localizations template V1 admin getTemplateSlugLocalizationsTemplateV1Admin Get template slug localizations template V1 admin
    getTopicByNamespace                          Get topic by namespace getTopicByNamespace Get topic by namespace
    getTopicByTopicName                          Get topic by topic name getTopicByTopicName Get topic by topic name
    getUserFriendsUpdated                        Get user friends updated getUserFriendsUpdated Get user friends updated
    getUserIncomingFriends                       Get user incoming friends getUserIncomingFriends Get user incoming friends
    getUserOutgoingFriends                       Get user outgoing friends getUserOutgoingFriends Get user outgoing friends
    importConfig                                 Import config importConfig Import config
    notificationWithTemplate                     Notification with template notificationWithTemplate Notification with template
    notificationWithTemplateByUserID             Notification with template by user ID notificationWithTemplateByUserID Notification with template by user ID
    personalChatHistory                          Personal chat history personalChatHistory Personal chat history
    publicGetPartyDataV1                         Public get party data V1 publicGetPartyDataV1 Public get party data V1
    publicGetPlayerBlockedByPlayersV1            Public get player blocked by players V1 publicGetPlayerBlockedByPlayersV1 Public get player blocked by players V1
    publicGetPlayerBlockedPlayersV1              Public get player blocked players V1 publicGetPlayerBlockedPlayersV1 Public get player blocked players V1
    publicUpdatePartyAttributesV1                Public update party attributes V1 publicUpdatePartyAttributesV1 Public update party attributes V1
    publishTemplate                              Publish template publishTemplate Publish template
    publishTemplateLocalizationV1Admin           Publish template localization V1 admin publishTemplateLocalizationV1Admin Publish template localization V1 admin
    sendMultipleUsersFreeformNotificationV1Admin Send multiple users freeform notification V1 admin sendMultipleUsersFreeformNotificationV1Admin Send multiple users freeform notification V1 admin
    sendPartyFreeformNotificationV1Admin         Send party freeform notification V1 admin sendPartyFreeformNotificationV1Admin Send party freeform notification V1 admin
    sendPartyTemplatedNotificationV1Admin        Send party templated notification V1 admin sendPartyTemplatedNotificationV1Admin Send party templated notification V1 admin
    sendSpecificUserFreeformNotificationV1Admin  Send specific user freeform notification V1 admin sendSpecificUserFreeformNotificationV1Admin Send specific user freeform notification V1 admin
    sendSpecificUserTemplatedNotificationV1Admin Send specific user templated notification V1 admin sendSpecificUserTemplatedNotificationV1Admin Send specific user templated notification V1 admin
    sendUsersFreeformNotificationV1Admin         Send users freeform notification V1 admin sendUsersFreeformNotificationV1Admin Send users freeform notification V1 admin
    sendUsersTemplatedNotificationV1Admin        Send users templated notification V1 admin sendUsersTemplatedNotificationV1Admin Send users templated notification V1 admin
    updateLocalizationTemplate                   Update localization template updateLocalizationTemplate Update localization template
    updateNotificationTopicV1Admin               Update notification topic V1 admin updateNotificationTopicV1Admin Update notification topic V1 admin
    updateTemplateLocalizationV1Admin            Update template localization V1 admin updateTemplateLocalizationV1Admin Update template localization V1 admin
    updateTopicByTopicName                       Update topic by topic name updateTopicByTopicName Update topic by topic name
    userAcceptFriendRequest                      User accept friend request userAcceptFriendRequest User accept friend request
    userCancelFriendRequest                      User cancel friend request userCancelFriendRequest User cancel friend request
    userGetFriendshipStatus                      User get friendship status userGetFriendshipStatus User get friendship status
    userRejectFriendRequest                      User reject friend request userRejectFriendRequest User reject friend request
    userRequestFriend                            User request friend userRequestFriend User request friend
    userUnfriendRequest                          User unfriend request userUnfriendRequest User unfriend request
    usersPresenceHandlerV1                       Users presence handler V1 usersPresenceHandlerV1 Users presence handler V1
     
    Flags: Flags:
    -h, --help   help for Lobby -h, --help help for Lobby
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Use "sample-apps Lobby [command] --help" for more information about a command. Use "sample-apps Lobby [command] --help" for more information about a command.
     
    Error: unknown flag: --body Error: unknown flag: --body
ok 41 adminGetUserPartyV1
ok 42 adminGetLobbyCCU
ok 43 adminGetAllPlayerSessionAttribute
ok 44 adminSetPlayerSessionAttribute
ok 45 adminGetPlayerSessionAttribute
ok 46 adminGetPlayerBlockedPlayersV1
ok 47 adminGetPlayerBlockedByPlayersV1
ok 48 adminBulkBlockPlayersV1
ok 49 adminDebugProfanityFilters
ok 50 adminGetProfanityListFiltersV1
ok 51 adminAddProfanityFilterIntoList
ok 52 adminAddProfanityFilters
ok 53 adminImportProfanityFiltersFromFile
ok 54 adminDeleteProfanityFilter
ok 55 adminGetProfanityLists
ok 56 adminCreateProfanityList
ok 57 adminUpdateProfanityList
ok 58 adminDeleteProfanityList
ok 59 adminGetProfanityRule
ok 60 adminSetProfanityRuleForNamespace
ok 61 adminVerifyMessageProfanityResponse
ok 62 adminGetThirdPartyConfig
ok 63 adminUpdateThirdPartyConfig
ok 64 adminCreateThirdPartyConfig
ok 65 adminDeleteThirdPartyConfig
ok 66 publicGetMessages
ok 67 getPersonalChatHistoryV1Public
ok 68 publicGetPartyDataV1
ok 69 publicUpdatePartyAttributesV1
ok 70 publicGetPlayerBlockedPlayersV1
ok 71 publicGetPlayerBlockedByPlayersV1
ok 72 usersPresenceHandlerV1
ok 73 freeFormNotification
ok 74 notificationWithTemplate
ok 75 getGameTemplate
ok 76 createTemplate
ok 77 getSlugTemplate
ok 78 deleteTemplateSlug
ok 79 getLocalizationTemplate
ok 80 updateLocalizationTemplate
ok 81 deleteTemplateLocalization
ok 82 publishTemplate
ok 83 getTopicByNamespace
ok 84 createTopic
ok 85 getTopicByTopicName
ok 86 updateTopicByTopicName
ok 87 deleteTopicByTopicName
ok 88 freeFormNotificationByUserID
ok 89 notificationWithTemplateByUserID
```

```tap
sh/run-go-cli-gdpr-unit-test.sh

go install github.com/AccelByte/sample-apps
1..20
ok 1 adminGetListDeletionDataRequest
ok 2 getAdminEmailConfiguration
ok 3 updateAdminEmailConfiguration
ok 4 saveAdminEmailConfiguration
ok 5 deleteAdminEmailConfiguration
ok 6 adminGetListPersonalDataRequest
ok 7 adminGetUserAccountDeletionRequest
ok 8 adminSubmitUserAccountDeletionRequest
ok 9 adminCancelUserAccountDeletionRequest
ok 10 adminGetUserPersonalDataRequests
ok 11 adminRequestDataRetrieval
ok 12 adminCancelUserPersonalDataRequest
ok 13 adminGeneratePersonalDataURL
ok 14 publicSubmitUserAccountDeletionRequest
ok 15 publicCancelUserAccountDeletionRequest
ok 16 publicGetUserAccountDeletionStatus
ok 17 publicGetUserPersonalDataRequests
ok 18 publicRequestDataRetrieval
ok 19 publicCancelUserPersonalDataRequest
ok 20 publicGeneratePersonalDataURL
```

```tap
sh/run-go-cli-social-unit-test.sh

go install github.com/AccelByte/sample-apps
1..68
ok 1 getNamespaceSlotConfig
ok 2 updateNamespaceSlotConfig
ok 3 deleteNamespaceSlotConfig
ok 4 getUserSlotConfig
ok 5 updateUserSlotConfig
ok 6 deleteUserSlotConfig
ok 7 getUserProfiles
ok 8 getProfile
ok 9 getUserNamespaceSlots
not ok 10 - getSlotData
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cdb51] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cdb51]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func1(0x2cacec0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func1(0x2cacec0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/getSlotData.go:32 +0x111 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/getSlotData.go:32 +0x111
    github.com/spf13/cobra.(*Command).execute(0x2cacec0, {0xc000716360, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2cacec0, {0xc000716360, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 11 publicGetUserGameProfiles
ok 12 publicGetUserProfiles
ok 13 publicCreateProfile
ok 14 publicGetProfile
ok 15 publicUpdateProfile
ok 16 publicDeleteProfile
ok 17 publicGetProfileAttribute
ok 18 publicUpdateAttribute
ok 19 publicGetUserNamespaceSlots
not ok 20 - publicCreateUserNamespaceSlot
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce20f] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce20f]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func3(0x2cad3c0, {0x19e45e1, 0xe, 0xe}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func3(0x2cad3c0, {0x19e45e1, 0xe, 0xe})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicCreateUserNamespaceSlot.go:32 +0x18f /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicCreateUserNamespaceSlot.go:32 +0x18f
    github.com/spf13/cobra.(*Command).execute(0x2cad3c0, {0xc0001920e0, 0xe, 0xe}) github.com/spf13/cobra.(*Command).execute(0x2cad3c0, {0xc0001920e0, 0xe, 0xe})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 21 - publicGetSlotData
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce8f1] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce8f1]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func5(0x2cad8c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func5(0x2cad8c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicGetSlotData.go:32 +0x111 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicGetSlotData.go:32 +0x111
    github.com/spf13/cobra.(*Command).execute(0x2cad8c0, {0xc00036e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2cad8c0, {0xc00036e420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 22 - publicUpdateUserNamespaceSlot
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cefe5] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cefe5]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func7(0x2caddc0, {0x19e45e1, 0x10, 0x10}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func7(0x2caddc0, {0x19e45e1, 0x10, 0x10})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicUpdateUserNamespaceSlot.go:33 +0x1c5 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicUpdateUserNamespaceSlot.go:33 +0x1c5
    github.com/spf13/cobra.(*Command).execute(0x2caddc0, {0xc0002a0b00, 0x10, 0x10}) github.com/spf13/cobra.(*Command).execute(0x2caddc0, {0xc0002a0b00, 0x10, 0x10})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 23 publicDeleteUserNamespaceSlot
ok 24 publicUpdateUserNamespaceSlotMetadata
ok 25 getGlobalStatItems
ok 26 bulkFetchStatItems
ok 27 bulkIncUserStatItem
ok 28 bulkIncUserStatItemValue
ok 29 bulkResetUserStatItem
ok 30 getStats
ok 31 createStat
ok 32 exportStats
not ok 33 - importStats
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13d2316] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13d2316]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/statConfiguration.glob..func7(0x2cb00c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/social/statConfiguration.glob..func7(0x2cb00c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/statConfiguration/importStats.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/statConfiguration/importStats.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2cb00c0, {0xc0000883c0, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2cb00c0, {0xc0000883c0, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 34 queryStats
ok 35 getStat
ok 36 deleteStat
ok 37 updateStat
ok 38 getUserStatItems
ok 39 bulkCreateUserStatItems
ok 40 bulkIncUserStatItem1
ok 41 bulkIncUserStatItemValue1
ok 42 bulkResetUserStatItem1
ok 43 createUserStatItem
ok 44 deleteUserStatItems
ok 45 incUserStatItemValue
ok 46 resetUserStatItemValue
ok 47 bulkFetchStatItems1
ok 48 publicBulkIncUserStatItem
ok 49 publicBulkIncUserStatItemValue
ok 50 bulkResetUserStatItem2
ok 51 createStat1
ok 52 publicQueryUserStatItems
ok 53 publicBulkCreateUserStatItems
ok 54 publicBulkIncUserStatItem1
ok 55 bulkIncUserStatItemValue2
ok 56 bulkResetUserStatItem3
ok 57 publicCreateUserStatItem
ok 58 deleteUserStatItems1
ok 59 publicIncUserStatItem
ok 60 publicIncUserStatItemValue
ok 61 resetUserStatItemValue1
ok 62 bulkUpdateUserStatItemV2
ok 63 bulkUpdateUserStatItem
ok 64 deleteUserStatItems2
ok 65 updateUserStatItemValue
ok 66 bulkUpdateUserStatItem1
ok 67 bulkUpdateUserStatItem2
ok 68 updateUserStatItemValue1
```

```tap
sh/run-go-cli-platform-unit-test.sh

go install github.com/AccelByte/sample-apps
1..316
ok 1 listFulfillmentScripts
ok 2 testFulfillmentScriptEval
ok 3 getFulfillmentScript
ok 4 createFulfillmentScript
ok 5 deleteFulfillmentScript
ok 6 updateFulfillmentScript
ok 7 queryCampaigns
ok 8 createCampaign
ok 9 getCampaign
ok 10 updateCampaign
ok 11 getCampaignDynamic
ok 12 getRootCategories
ok 13 createCategory
ok 14 listCategoriesBasic
ok 15 getCategory
ok 16 updateCategory
ok 17 deleteCategory
ok 18 getChildCategories
ok 19 getDescendantCategories
ok 20 queryCodes
ok 21 createCodes
ok 22 download
ok 23 bulkDisableCodes
ok 24 bulkEnableCodes
ok 25 queryRedeemHistory
ok 26 getCode
ok 27 disableCode
ok 28 enableCode
ok 29 listCurrencies
ok 30 createCurrency
ok 31 updateCurrency
ok 32 deleteCurrency
ok 33 getCurrencyConfig
ok 34 getCurrencySummary
ok 35 getDLCItemConfig
ok 36 updateDLCItemConfig
ok 37 deleteDLCItemConfig
ok 38 getPlatformDLCConfig
ok 39 updatePlatformDLCConfig
ok 40 deletePlatformDLCConfig
ok 41 queryEntitlements
ok 42 getEntitlement
ok 43 queryFulfillmentHistories
ok 44 getAppleIAPConfig
ok 45 updateAppleIAPConfig
ok 46 deleteAppleIAPConfig
ok 47 getEpicGamesIAPConfig
ok 48 updateEpicGamesIAPConfig
ok 49 deleteEpicGamesIAPConfig
ok 50 getGoogleIAPConfig
ok 51 updateGoogleIAPConfig
ok 52 deleteGoogleIAPConfig
not ok 53 - updateGoogleP12File
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137bd36] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137bd36]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func30(0x2c835c0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func30(0x2c835c0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateGoogleP12File.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateGoogleP12File.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c835c0, {0xc0001321c0, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c835c0, {0xc0001321c0, 0x4, 0x4})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 54 getIAPItemConfig
ok 55 updateIAPItemConfig
ok 56 deleteIAPItemConfig
ok 57 getPlayStationIAPConfig
ok 58 updatePlaystationIAPConfig
ok 59 deletePlaystationIAPConfig
ok 60 getStadiaIAPConfig
ok 61 deleteStadiaIAPConfig
not ok 62 - updateStadiaJsonConfigFile
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137c556] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137c556]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func33(0x2c83fc0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func33(0x2c83fc0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateStadiaJsonConfigFile.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateStadiaJsonConfigFile.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c83fc0, {0xc00061e4c0, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c83fc0, {0xc00061e4c0, 0x4, 0x4})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 63 getSteamIAPConfig
ok 64 updateSteamIAPConfig
ok 65 deleteSteamIAPConfig
ok 66 getXblIAPConfig
ok 67 updateXblIAPConfig
ok 68 deleteXblAPConfig
not ok 69 - updateXblBPCertFile
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137cad6] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137cad6]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func35(0x2c844c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func35(0x2c844c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateXblBPCertFile.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateXblBPCertFile.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c844c0, {0xc0002ee420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c844c0, {0xc0002ee420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 70 syncInGameItem
ok 71 createItem
ok 72 getItemByAppId
ok 73 queryItems
ok 74 listBasicItemsByFeatures
ok 75 getItemBySku
ok 76 getLocaleItemBySku
ok 77 getItemIdBySku
ok 78 bulkGetLocaleItems
ok 79 searchItems
ok 80 queryUncategorizedItems
ok 81 getItem
ok 82 updateItem
ok 83 deleteItem
ok 84 acquireItem
ok 85 getApp
ok 86 updateApp
ok 87 disableItem
ok 88 getItemDynamicData
ok 89 enableItem
ok 90 featureItem
ok 91 defeatureItem
ok 92 getLocaleItem
ok 93 returnItem
ok 94 queryKeyGroups
ok 95 createKeyGroup
ok 96 getKeyGroup
ok 97 updateKeyGroup
ok 98 getKeyGroupDynamic
ok 99 listKeys
not ok 100 - uploadKeys
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1389ec9] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1389ec9]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/keyGroup.glob..func7(0x2c8b7c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/keyGroup.glob..func7(0x2c8b7c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/keyGroup/uploadKeys.go:29 +0xe9 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/keyGroup/uploadKeys.go:29 +0xe9
    github.com/spf13/cobra.(*Command).execute(0x2c8b7c0, {0xc00035e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c8b7c0, {0xc00035e420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 101 queryOrders
ok 102 getOrderStatistics
ok 103 getOrder
ok 104 refundOrder
ok 105 getPaymentCallbackConfig
ok 106 updatePaymentCallbackConfig
ok 107 queryPaymentNotifications
ok 108 queryPaymentOrders
ok 109 createPaymentOrderByDedicated
ok 110 listExtOrderNoByExtTxId
ok 111 getPaymentOrder
ok 112 chargePaymentOrder
ok 113 refundPaymentOrderByDedicated
ok 114 simulatePaymentOrderNotification
ok 115 getPaymentOrderChargeStatus
ok 116 createReward
ok 117 queryRewards
ok 118 exportRewards
not ok 119 - importRewards
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a0635] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a0635]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/reward.glob..func8(0x2c99640, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/reward.glob..func8(0x2c99640, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/reward/importRewards.go:29 +0xd5 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/reward/importRewards.go:29 +0xd5
    github.com/spf13/cobra.(*Command).execute(0x2c99640, {0xc000616360, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c99640, {0xc000616360, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 120 getReward
ok 121 updateReward
ok 122 deleteReward
ok 123 checkEventCondition
ok 124 listStores
ok 125 createStore
not ok 126 - importStore
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a3036] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a3036]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/store.glob..func9(0x2c9b940, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/store.glob..func9(0x2c9b940, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/store/importStore.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/store/importStore.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c9b940, {0xc00036e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c9b940, {0xc00036e420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 127 getPublishedStore
ok 128 deletePublishedStore
ok 129 getPublishedStoreBackup
ok 130 rollbackPublishedStore
ok 131 getStore
ok 132 updateStore
ok 133 deleteStore
ok 134 cloneStore
not ok 135 - exportStore
  ---
  error: |-
    time="2022-02-09T21:00:16+07:00" level=error msg="no consumer: "application/zip"" time="2022-02-09T21:00:16+07:00" level=error msg="no consumer: "application/zip""
    Error: no consumer: "application/zip" Error: no consumer: "application/zip"
    Usage: Usage:
    sample-apps Platform exportStore [flags] sample-apps Platform exportStore [flags]
     
    Flags: Flags:
    -h, --help               help for exportStore -h, --help help for exportStore
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/zip" Error: no consumer: "application/zip"
ok 136 querySubscriptions
ok 137 recurringChargeSubscription
ok 138 getTicketDynamic
ok 139 decreaseTicketSale
ok 140 getTicketBoothID
ok 141 increaseTicketSale
ok 142 anonymizeCampaign
ok 143 anonymizeEntitlement
ok 144 anonymizeFulfillment
ok 145 anonymizeIntegration
ok 146 anonymizeOrder
ok 147 anonymizePayment
ok 148 anonymizeSubscription
ok 149 anonymizeWallet
ok 150 queryUserEntitlements
ok 151 grantUserEntitlement
ok 152 getUserAppEntitlementByAppId
ok 153 queryUserEntitlementsByAppType
ok 154 getUserEntitlementByItemId
ok 155 getUserEntitlementBySku
ok 156 existsAnyUserActiveEntitlement
ok 157 existsAnyUserActiveEntitlementByItemIds
ok 158 getUserAppEntitlementOwnershipByAppId
ok 159 getUserEntitlementOwnershipByItemId
ok 160 getUserEntitlementOwnershipBySku
ok 161 revokeUserEntitlements
ok 162 getUserEntitlement
ok 163 updateUserEntitlement
ok 164 consumeUserEntitlement
ok 165 disableUserEntitlement
ok 166 enableUserEntitlement
ok 167 getUserEntitlementHistories
ok 168 revokeUserEntitlement
ok 169 fulfillItem
ok 170 redeemCode
ok 171 fulfillRewards
ok 172 queryUserIAPOrders
ok 173 queryAllUserIAPOrders
ok 174 mockFulfillIAPItem
ok 175 queryUserOrders
ok 176 countOfPurchasedItem
ok 177 getUserOrder
ok 178 updateUserOrderStatus
ok 179 fulfillUserOrder
ok 180 getUserOrderGrant
ok 181 getUserOrderHistories
ok 182 processUserOrderNotification
not ok 183 - downloadUserOrderReceipt
  ---
  error: |-
    time="2022-02-09T21:00:17+07:00" level=error msg="no consumer: "application/pdf"" time="2022-02-09T21:00:17+07:00" level=error msg="no consumer: "application/pdf""
    Error: no consumer: "application/pdf" Error: no consumer: "application/pdf"
    Usage: Usage:
    sample-apps Platform downloadUserOrderReceipt [flags] sample-apps Platform downloadUserOrderReceipt [flags]
     
    Flags: Flags:
    -h, --help               help for downloadUserOrderReceipt -h, --help help for downloadUserOrderReceipt
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/pdf" Error: no consumer: "application/pdf"
ok 184 createUserPaymentOrder
ok 185 refundUserPaymentOrder
ok 186 applyUserRedemption
ok 187 queryUserSubscriptions
ok 188 getUserSubscriptionActivities
ok 189 platformSubscribeSubscription
ok 190 checkUserSubscriptionSubscribableByItemId
ok 191 getUserSubscription
ok 192 deleteUserSubscription
ok 193 cancelSubscription
ok 194 grantDaysToSubscription
ok 195 getUserSubscriptionBillingHistories
ok 196 processUserSubscriptionNotification
ok 197 acquireUserTicket
ok 198 checkWallet
ok 199 creditUserWallet
ok 200 payWithUserWallet
ok 201 getUserWallet
ok 202 debitUserWallet
ok 203 disableUserWallet
ok 204 enableUserWallet
ok 205 listUserWalletTransactions
ok 206 queryWallets
ok 207 getWallet
ok 208 syncOrders
ok 209 testAdyenConfig
ok 210 testAliPayConfig
ok 211 testCheckoutConfig
ok 212 debugMatchedPaymentMerchantConfig
ok 213 testPayPalConfig
ok 214 testStripeConfig
ok 215 testWxPayConfig
ok 216 testXsollaConfig
ok 217 getPaymentMerchantConfig
ok 218 updateAdyenConfig
ok 219 testAdyenConfigById
ok 220 updateAliPayConfig
ok 221 testAliPayConfigById
ok 222 updateCheckoutConfig
ok 223 testCheckoutConfigById
ok 224 updatePayPalConfig
ok 225 testPayPalConfigById
ok 226 updateStripeConfig
ok 227 testStripeConfigById
ok 228 updateWxPayConfig
not ok 229 - updateWxPayConfigCert
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1399f96] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1399f96]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/paymentConfig.glob..func32(0x2c94b40, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/paymentConfig.glob..func32(0x2c94b40, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentConfig/updateWxPayConfigCert.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentConfig/updateWxPayConfigCert.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c94b40, {0xc000720440, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c94b40, {0xc000720440, 0x4, 0x4})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 230 testWxPayConfigById
ok 231 updateXsollaConfig
ok 232 testXsollaConfigById
ok 233 updateXsollaUIConfig
ok 234 queryPaymentProviderConfig
ok 235 createPaymentProviderConfig
ok 236 getAggregatePaymentProviders
ok 237 debugMatchedPaymentProviderConfig
ok 238 getSpecialPaymentProviders
ok 239 updatePaymentProviderConfig
ok 240 deletePaymentProviderConfig
ok 241 getPaymentTaxConfig
ok 242 updatePaymentTaxConfig
ok 243 syncPaymentOrders
ok 244 publicGetRootCategories
ok 245 downloadCategories
ok 246 publicGetCategory
ok 247 publicGetChildCategories
ok 248 publicGetDescendantCategories
ok 249 publicListCurrencies
ok 250 publicGetItemByAppId
ok 251 publicQueryItems
ok 252 publicGetItemBySku
ok 253 publicBulkGetItems
ok 254 publicSearchItems
ok 255 publicGetApp
ok 256 publicGetItemDynamicData
ok 257 publicGetItem
ok 258 getPaymentCustomization
ok 259 publicGetPaymentUrl
ok 260 publicGetPaymentMethods
ok 261 publicGetUnpaidPaymentOrder
ok 262 pay
ok 263 publicCheckPaymentOrderPaidStatus
ok 264 getPaymentPublicConfig
not ok 265 - publicGetQRCode
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x139db28] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x139db28]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/paymentStation.glob..func8(0x2c97ac0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/paymentStation.glob..func8(0x2c97ac0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentStation/publicGetQRCode.go:31 +0xe8 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentStation/publicGetQRCode.go:31 +0xe8
    github.com/spf13/cobra.(*Command).execute(0x2c97ac0, {0xc000621680, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c97ac0, {0xc000621680, 0x4, 0x4})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 266 - publicNormalizePaymentReturnUrl
  ---
  error: |-
    Error: unknown flag: --payerID Error: unknown flag: --payerID
    Usage: Usage:
    sample-apps Platform publicNormalizePaymentReturnUrl [flags] sample-apps Platform publicNormalizePaymentReturnUrl [flags]
     
    Flags: Flags:
    --PayerID string           Payer ID --PayerID string Payer ID
    --foreinginvoice string    Foreinginvoice --foreinginvoice string Foreinginvoice
    -h, --help                     help for publicNormalizePaymentReturnUrl -h, --help help for publicNormalizePaymentReturnUrl
    --invoice_id string        Invoice id --invoice_id string Invoice id
    --namespace string         Namespace --namespace string Namespace
    --orderNo string           Order no --orderNo string Order no
    --payload string           Payload --payload string Payload
    --paymentOrderNo string    Payment order no --paymentOrderNo string Payment order no
    --paymentProvider string   Payment provider --paymentProvider string Payment provider
    --resultCode string        Result code --resultCode string Result code
    --returnUrl string         Return url --returnUrl string Return url
    --status string            Status --status string Status
    --token string             Token --token string Token
    --type string              Type --type string Type
    --user_id string           User id --user_id string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --payerID Error: unknown flag: --payerID
ok 267 getPaymentTaxValue
ok 268 getRewardByCode
ok 269 queryRewards1
ok 270 getReward1
ok 271 publicListStores
ok 272 publicExistsAnyMyActiveEntitlement
ok 273 publicGetMyAppEntitlementOwnershipByAppId
ok 274 publicGetMyEntitlementOwnershipByItemId
ok 275 publicGetMyEntitlementOwnershipBySku
ok 276 publicGetEntitlementOwnershipToken
ok 277 publicGetMyWallet
ok 278 publicSyncPsnDlcInventory
ok 279 syncSteamDLC
ok 280 syncXboxDLC
ok 281 publicQueryUserEntitlements
ok 282 publicGetUserAppEntitlementByAppId
ok 283 publicQueryUserEntitlementsByAppType
ok 284 publicGetUserEntitlementByItemId
ok 285 publicGetUserEntitlementBySku
ok 286 publicExistsAnyUserActiveEntitlement
ok 287 publicGetUserAppEntitlementOwnershipByAppId
ok 288 publicGetUserEntitlementOwnershipByItemId
ok 289 publicGetUserEntitlementOwnershipBySku
ok 290 publicGetUserEntitlement
ok 291 publicConsumeUserEntitlement
ok 292 publicRedeemCode
ok 293 publicFulfillAppleIAPItem
ok 294 syncEpicGamesInventory
ok 295 publicFulfillGoogleIAPItem
ok 296 publicReconcilePlayStationStore
ok 297 syncStadiaEntitlement
ok 298 syncSteamInventory
ok 299 syncXboxInventory
ok 300 publicQueryUserOrders
ok 301 publicCreateUserOrder
ok 302 publicGetUserOrder
ok 303 publicCancelUserOrder
ok 304 publicGetUserOrderHistories
not ok 305 - publicDownloadUserOrderReceipt
  ---
  error: |-
    time="2022-02-09T21:00:19+07:00" level=error msg="no consumer: "application/pdf"" time="2022-02-09T21:00:19+07:00" level=error msg="no consumer: "application/pdf""
    Error: no consumer: "application/pdf" Error: no consumer: "application/pdf"
    Usage: Usage:
    sample-apps Platform publicDownloadUserOrderReceipt [flags] sample-apps Platform publicDownloadUserOrderReceipt [flags]
     
    Flags: Flags:
    -h, --help               help for publicDownloadUserOrderReceipt -h, --help help for publicDownloadUserOrderReceipt
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: no consumer: "application/pdf" Error: no consumer: "application/pdf"
ok 306 publicGetPaymentAccounts
ok 307 publicDeletePaymentAccount
ok 308 publicQueryUserSubscriptions
ok 309 publicSubscribeSubscription
ok 310 publicCheckUserSubscriptionSubscribableByItemId
ok 311 publicGetUserSubscription
ok 312 publicChangeSubscriptionBillingAccount
ok 313 publicCancelSubscription
ok 314 publicGetUserSubscriptionBillingHistories
ok 315 publicGetWallet
ok 316 publicListUserWalletTransactions
```

```tap
sh/run-go-cli-sessionbrowser-unit-test.sh

go install github.com/AccelByte/sample-apps
1..15
not ok 1 - getTotalActiveSession
  ---
  error: |-
    Error: unknown flag: --sessionType Error: unknown flag: --sessionType
    Usage: Usage:
    sample-apps Sessionbrowser getTotalActiveSession [flags] sample-apps Sessionbrowser getTotalActiveSession [flags]
     
    Flags: Flags:
    -h, --help                  help for getTotalActiveSession -h, --help help for getTotalActiveSession
    --namespace string      Namespace --namespace string Namespace
    --session_type string   Session type --session_type string Session type
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --sessionType Error: unknown flag: --sessionType
not ok 2 - getActiveCustomGameSessions
  ---
  error: |-
    Error: unknown flag: --serverRegion Error: unknown flag: --serverRegion
    Usage: Usage:
    sample-apps Sessionbrowser getActiveCustomGameSessions [flags] sample-apps Sessionbrowser getActiveCustomGameSessions [flags]
     
    Flags: Flags:
    -h, --help                   help for getActiveCustomGameSessions -h, --help help for getActiveCustomGameSessions
    --namespace string       Namespace --namespace string Namespace
    --server_region string   Server region --server_region string Server region
    --session_id string      Session id --session_id string Session id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --serverRegion Error: unknown flag: --serverRegion
not ok 3 - getActiveMatchmakingGameSessions
  ---
  error: |-
    Error: unknown flag: --matchId Error: unknown flag: --matchId
    Usage: Usage:
    sample-apps Sessionbrowser getActiveMatchmakingGameSessions [flags] sample-apps Sessionbrowser getActiveMatchmakingGameSessions [flags]
     
    Flags: Flags:
    -h, --help                   help for getActiveMatchmakingGameSessions -h, --help help for getActiveMatchmakingGameSessions
    --match_id string        Match id --match_id string Match id
    --namespace string       Namespace --namespace string Namespace
    --server_region string   Server region --server_region string Server region
    --session_id string      Session id --session_id string Session id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --matchId Error: unknown flag: --matchId
ok 4 adminGetSession
not ok 5 - querySession
  ---
  error: |-
    Error: unknown flag: --gameMode Error: unknown flag: --gameMode
    Usage: Usage:
    sample-apps Sessionbrowser querySession [flags] sample-apps Sessionbrowser querySession [flags]
     
    Flags: Flags:
    --game_mode string       Game mode --game_mode string Game mode
    --game_version string    Game version --game_version string Game version
    -h, --help                   help for querySession -h, --help help for querySession
    --joinable string        Joinable --joinable string Joinable
    --limit string           Limit (default "20") --limit string Limit (default "20")
    --match_exist string     Match exist --match_exist string Match exist
    --match_id string        Match id --match_id string Match id
    --namespace string       Namespace --namespace string Namespace
    --offset string          Offset (default "0") --offset string Offset (default "0")
    --server_status string   Server status --server_status string Server status
    --session_type string    Session type --session_type string Session type
    --user_id string         User id --user_id string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --gameMode Error: unknown flag: --gameMode
ok 6 createSession
not ok 7 - getSessionByUserIDs
  ---
  error: |-
    Error: unknown flag: --userIds Error: unknown flag: --userIds
    Usage: Usage:
    sample-apps Sessionbrowser getSessionByUserIDs [flags] sample-apps Sessionbrowser getSessionByUserIDs [flags]
     
    Flags: Flags:
    -h, --help               help for getSessionByUserIDs -h, --help help for getSessionByUserIDs
    --namespace string   Namespace --namespace string Namespace
    --user_ids string    User ids --user_ids string User ids
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --userIds Error: unknown flag: --userIds
ok 8 getSession
ok 9 updateSession
ok 10 deleteSession
ok 11 joinSession
ok 12 deleteSessionLocalDS
ok 13 addPlayerToSession
ok 14 removePlayerFromSession
ok 15 getRecentPlayer
```

```tap
sh/run-go-cli-leaderboard-unit-test.sh

go install github.com/AccelByte/sample-apps
1..34
ok 1 getLeaderboardConfigurationsAdminV1
ok 2 createLeaderboardConfigurationAdminV1
ok 3 adminGetArchivedLeaderboardRankingDataV1Handler
ok 4 createArchivedLeaderboardRankingDataV1Handler
ok 5 deleteBulkLeaderboardConfigurationAdminV1
ok 6 getLeaderboardConfigurationAdminV1
ok 7 updateLeaderboardConfigurationAdminV1
ok 8 deleteLeaderboardConfigurationAdminV1
ok 9 getAllTimeLeaderboardRankingAdminV1
ok 10 getCurrentMonthLeaderboardRankingAdminV1
ok 11 getCurrentSeasonLeaderboardRankingAdminV1
ok 12 getTodayLeaderboardRankingAdminV1
ok 13 getUserRankingAdminV1
ok 14 updateUserPointAdminV1
ok 15 deleteUserRankingAdminV1
ok 16 getCurrentWeekLeaderboardRankingAdminV1
ok 17 deleteUserRankingsAdminV1
ok 18 getUserLeaderboardRankingsAdminV1
ok 19 getLeaderboardConfigurationsPublicV1
ok 20 createLeaderboardConfigurationPublicV1
ok 21 getAllTimeLeaderboardRankingPublicV1
ok 22 getArchivedLeaderboardRankingDataV1Handler
ok 23 getCurrentMonthLeaderboardRankingPublicV1
ok 24 getCurrentSeasonLeaderboardRankingPublicV1
ok 25 getTodayLeaderboardRankingPublicV1
ok 26 getUserRankingPublicV1
ok 27 deleteUserRankingPublicV1
ok 28 getCurrentWeekLeaderboardRankingPublicV1
ok 29 getHiddenUsersV2
ok 30 getUserVisibilityStatusV2
ok 31 setUserLeaderboardVisibilityStatusV2
ok 32 setUserVisibilityStatusV2
ok 33 getLeaderboardConfigurationsPublicV2
ok 34 getAllTimeLeaderboardRankingPublicV2
```

```tap
sh/run-go-cli-eventlog-unit-test.sh

go install github.com/AccelByte/sample-apps
1..32
ok 1 agentTypeDescriptionHandler (skipped deprecated)
ok 2 specificAgentTypeDescriptionHandler (skipped deprecated)
ok 3 eventIDDescriptionHandler (skipped deprecated)
ok 4 specificEventIDDescriptionHandler (skipped deprecated)
ok 5 eventLevelDescriptionHandler (skipped deprecated)
ok 6 specificEventLevelDescriptionHandler (skipped deprecated)
ok 7 eventTypeDescriptionHandler (skipped deprecated)
ok 8 specificEventTypeDescriptionHandler (skipped deprecated)
ok 9 uxNameDescriptionHandler (skipped deprecated)
ok 10 specificUXDescriptionHandler (skipped deprecated)
ok 11 getEventByNamespaceHandler (skipped deprecated)
ok 12 postEventHandler (skipped deprecated)
ok 13 getEventByEventIDHandler (skipped deprecated)
ok 14 getEventByEventTypeHandler (skipped deprecated)
ok 15 getEventByEventTypeAndEventIDHandler (skipped deprecated)
ok 16 getEventByUserIDHandler (skipped deprecated)
ok 17 getUserActivitiesHandler (skipped deprecated)
ok 18 deleteUserActivitiesHandler (skipped deprecated)
ok 19 getEventByUserIDAndEventIDHandler (skipped deprecated)
ok 20 getEventByUserIDAndEventTypeHandler (skipped deprecated)
ok 21 getEventByUserEventIDAndEventTypeHandler (skipped deprecated)
ok 22 lastUserActivityTimeHandler (skipped deprecated)
ok 23 getRegisteredEventsHandler (skipped deprecated)
ok 24 registerEventHandler (skipped deprecated)
ok 25 getRegisteredEventIDHandler (skipped deprecated)
ok 26 updateEventRegistryHandler (skipped deprecated)
ok 27 unregisterEventIDHandler (skipped deprecated)
ok 28 getRegisteredEventsByEventTypeHandler (skipped deprecated)
ok 29 queryEventStreamHandler
ok 30 getEventSpecificUserV2Handler
ok 31 getPublicEditHistory
ok 32 getUserEventsV2Public
```

```tap
sh/run-go-cli-ugc-unit-test.sh

go install github.com/AccelByte/sample-apps
1..84
ok 1 singleAdminGetChannel
ok 2 adminCreateChannel
ok 3 singleAdminUpdateChannel
ok 4 singleAdminDeleteChannel
ok 5 adminUploadContentDirect (skipped deprecated)
ok 6 adminUploadContentS3
ok 7 singleAdminUpdateContentS3
ok 8 adminSearchChannelSpecificContent
ok 9 singleAdminUpdateContentDirect (skipped deprecated)
ok 10 singleAdminDeleteContent
ok 11 singleAdminGetContent
ok 12 adminSearchContent
ok 13 adminGetSpecificContent
ok 14 adminDownloadContentPreview
ok 15 adminUpdateScreenshots
ok 16 adminUploadContentScreenshot
ok 17 adminDeleteContentScreenshot
ok 18 singleAdminGetAllGroups
ok 19 adminCreateGroup
ok 20 singleAdminGetGroup
ok 21 singleAdminUpdateGroup
ok 22 singleAdminDeleteGroup
ok 23 singleAdminGetGroupContents
ok 24 adminGetTag
ok 25 adminCreateTag
ok 26 adminUpdateTag
ok 27 adminDeleteTag
ok 28 adminGetType
ok 29 adminCreateType
ok 30 adminUpdateType
ok 31 adminDeleteType
ok 32 adminGetChannel
ok 33 adminDeleteAllUserChannels
ok 34 adminUpdateChannel
ok 35 adminDeleteChannel
ok 36 adminUpdateContentS3
ok 37 adminUpdateContentDirect (skipped deprecated)
ok 38 adminDeleteContent
ok 39 adminGetContent
ok 40 adminDeleteAllUserContents
ok 41 adminHideUserContent
ok 42 adminGetAllGroups
ok 43 adminDeleteAllUserGroup
ok 44 adminGetGroup
ok 45 adminUpdateGroup
ok 46 adminDeleteGroup
ok 47 adminGetGroupContents
ok 48 adminDeleteAllUserStates
ok 49 searchChannelSpecificContent
ok 50 publicSearchContent
ok 51 getFollowedContent
ok 52 getLikedContent
ok 53 downloadContentByShareCode
ok 54 publicDownloadContentByContentID
ok 55 addDownloadCount
ok 56 updateContentLikeStatus
ok 57 publicDownloadContentPreview
ok 58 getTag
ok 59 getType
ok 60 getFollowedUsers
ok 61 getChannels
ok 62 createChannel
ok 63 deleteAllUserChannel
ok 64 updateChannel
ok 65 deleteChannel
ok 66 createContentDirect (skipped deprecated)
ok 67 createContentS3
ok 68 updateContentS3
ok 69 updateContentDirect (skipped deprecated)
ok 70 deleteContent
ok 71 publicGetUserContent
ok 72 deleteAllUserContents
ok 73 updateScreenshots
ok 74 uploadContentScreenshot
ok 75 deleteContentScreenshot
ok 76 updateUserFollowStatus
ok 77 getGroups
ok 78 createGroup
ok 79 deleteAllUserGroup
ok 80 getGroup
ok 81 updateGroup
ok 82 deleteGroup
ok 83 getGroupContent
ok 84 deleteAllUserStates
```

```tap
sh/run-go-cli-group-unit-test.sh

go install github.com/AccelByte/sample-apps
1..44
ok 1 listGroupConfigurationAdminV1
ok 2 createGroupConfigurationAdminV1
ok 3 initiateGroupConfigurationAdminV1
ok 4 getGroupConfigurationAdminV1
ok 5 deleteGroupConfigurationV1
ok 6 updateGroupConfigurationAdminV1
ok 7 updateGroupConfigurationGlobalRuleAdminV1
ok 8 deleteGroupConfigurationGlobalRuleAdminV1
ok 9 getGroupListAdminV1
ok 10 getSingleGroupAdminV1
ok 11 deleteGroupAdminV1
ok 12 getGroupMembersListAdminV1
ok 13 getMemberRolesListAdminV1
ok 14 createMemberRoleAdminV1
ok 15 getSingleMemberRoleAdminV1
ok 16 deleteMemberRoleAdminV1
ok 17 updateMemberRoleAdminV1
ok 18 updateMemberRolePermissionAdminV1
ok 19 getGroupListPublicV1
ok 20 createNewGroupPublicV1
ok 21 getSingleGroupPublicV1
ok 22 updateSingleGroupV1
ok 23 deleteGroupPublicV1
ok 24 updatePatchSingleGroupPublicV1
ok 25 updateGroupCustomAttributesPublicV1
ok 26 acceptGroupInvitationPublicV1
ok 27 rejectGroupInvitationPublicV1
ok 28 joinGroupV1
ok 29 cancelGroupJoinRequestV1
ok 30 getGroupJoinRequestPublicV1
ok 31 getGroupMembersListPublicV1
ok 32 updateGroupCustomRulePublicV1
ok 33 updateGroupPredefinedRulePublicV1
ok 34 deleteGroupPredefinedRulePublicV1
ok 35 leaveGroupPublicV1
ok 36 getMemberRolesListPublicV1
ok 37 updateMemberRolePublicV1
ok 38 deleteMemberRolePublicV1
ok 39 getGroupInvitationRequestPublicV1
ok 40 getUserGroupInformationPublicV1
ok 41 inviteGroupPublicV1
ok 42 acceptGroupJoinRequestPublicV1
ok 43 rejectGroupJoinRequestPublicV1
ok 44 kickGroupMemberPublicV1
```

```tap
sh/run-go-cli-qosm-unit-test.sh

go install github.com/AccelByte/sample-apps
1..4
ok 1 deleteServer
ok 2 setServerAlias
ok 3 listServer
ok 4 heartbeat
```

```tap
sh/run-go-cli-legal-unit-test.sh

go install github.com/AccelByte/sample-apps
1..41
ok 1 retrieveAcceptedAgreements
ok 2 retrieveAllUsersByPolicyVersion
ok 3 retrieveAllLegalPolicies
ok 4 createPolicy
ok 5 retrieveSinglePolicy
ok 6 partialUpdatePolicy
ok 7 retrievePolicyCountry
ok 8 retrieveLocalizedPolicyVersions
ok 9 createLocalizedPolicyVersion
ok 10 retrieveSingleLocalizedPolicyVersion
ok 11 updateLocalizedPolicyVersion
ok 12 requestPresignedURL
ok 13 setDefaultPolicy
ok 14 indirectBulkAcceptVersionedPolicy
ok 15 adminRetrieveEligibilities
ok 16 retrievePolicies
ok 17 updatePolicyVersion
ok 18 publishPolicyVersion
ok 19 updatePolicy
ok 20 setDefaultPolicy1
ok 21 retrieveSinglePolicyVersion
ok 22 createPolicyVersion
ok 23 retrieveAllPolicyTypes
ok 24 getUserInfoStatus
ok 25 syncUserInfo
ok 26 invalidateUserInfoCache
ok 27 anonymizeUserAgreement
ok 28 changePreferenceConsent
ok 29 acceptVersionedPolicy
ok 30 retrieveAgreementsPublic
ok 31 bulkAcceptVersionedPolicy
ok 32 indirectBulkAcceptVersionedPolicyV2
ok 33 indirectBulkAcceptVersionedPolicy1
ok 34 retrieveEligibilitiesPublic
ok 35 retrieveEligibilitiesPublicIndirect
ok 36 retrieveSingleLocalizedPolicyVersion1
ok 37 retrievePolicyVersions
ok 38 retrieveLatestPolicies
ok 39 retrieveLatestPoliciesPublic
ok 40 retrieveLatestPoliciesByNamespaceAndCountryPublic
ok 41 checkReadiness
```

```tap
sh/run-go-cli-matchmaking-unit-test.sh

go install github.com/AccelByte/sample-apps
1..28
ok 1 getHealthcheckInfo
ok 2 handlerV3Healthz
ok 3 getAllChannelsHandler
ok 4 createChannelHandler
ok 5 deleteChannelHandler
ok 6 storeMatchResults
ok 7 queueSessionHandler
ok 8 dequeueSessionHandler
ok 9 querySessionHandler
ok 10 updatePlayTimeWeight
ok 11 getAllPartyInAllChannel
ok 12 bulkGetSessions
ok 13 exportChannels
not ok 14 - importChannels
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1346196] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1346196]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/matchmaking/matchmaking.glob..func15(0x2c6d540, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/matchmaking/matchmaking.glob..func15(0x2c6d540, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/matchmaking/matchmaking/importChannels.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/matchmaking/matchmaking/importChannels.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c6d540, {0xc00036e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c6d540, {0xc00036e420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
ok 15 getSingleMatchmakingChannel
ok 16 updateMatchmakingChannel
ok 17 getAllPartyInChannel
ok 18 getAllSessionsInChannel
ok 19 addUserIntoSessionInChannel
ok 20 deleteSessionInChannel
ok 21 deleteUserFromSessionInChannel
ok 22 searchSessions
ok 23 getSessionHistoryDetailed
ok 24 publicGetMessages
ok 25 publicGetAllMatchmakingChannel
ok 26 publicGetSingleMatchmakingChannel
ok 27 searchSessionsV2
ok 28 versionCheckHandler
```

```tap
sh/run-go-cli-cloudsave-unit-test.sh

go install github.com/AccelByte/sample-apps
1..30
ok 1 listGameRecordsHandlerV1
ok 2 adminGetGameRecordHandlerV1
ok 3 adminPutGameRecordHandlerV1
ok 4 adminPostGameRecordHandlerV1
ok 5 adminDeleteGameRecordHandlerV1
ok 6 listPlayerRecordHandlerV1 (skipped deprecated)
ok 7 adminRetrievePlayerRecords
ok 8 adminGetPlayerRecordHandlerV1
ok 9 adminPutPlayerRecordHandlerV1
ok 10 adminPostPlayerRecordHandlerV1
ok 11 adminDeletePlayerRecordHandlerV1
ok 12 adminGetPlayerPublicRecordHandlerV1
ok 13 adminPutPlayerPublicRecordHandlerV1
ok 14 adminPostPlayerPublicRecordHandlerV1
ok 15 adminDeletePlayerPublicRecordHandlerV1
ok 16 putGameRecordConcurrentHandlerV1
ok 17 getGameRecordHandlerV1
ok 18 putGameRecordHandlerV1
ok 19 postGameRecordHandlerV1
ok 20 deleteGameRecordHandlerV1
ok 21 bulkGetPlayerPublicRecordHandlerV1
ok 22 publicDeletePlayerPublicRecordHandlerV1
ok 23 putPlayerPublicRecordConcurrentHandlerV1
ok 24 getPlayerRecordHandlerV1
ok 25 putPlayerRecordHandlerV1
ok 26 postPlayerRecordHandlerV1
ok 27 deletePlayerRecordHandlerV1
ok 28 getPlayerPublicRecordHandlerV1
ok 29 putPlayerPublicRecordHandlerV1
ok 30 postPlayerPublicRecordHandlerV1
```

```tap
sh/run-go-cli-dslogmanager-unit-test.sh

go install github.com/AccelByte/sample-apps
1..6
not ok 1 - listTerminatedServers
  ---
  error: |-
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
    Run 'sample-apps --help' for usage. Run 'sample-apps --help' for usage.
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
not ok 2 - downloadServerLogs
  ---
  error: |-
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
    Run 'sample-apps --help' for usage. Run 'sample-apps --help' for usage.
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
not ok 3 - checkServerLogs
  ---
  error: |-
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
    Run 'sample-apps --help' for usage. Run 'sample-apps --help' for usage.
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
not ok 4 - batchDownloadServerLogs
  ---
  error: |-
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
    Run 'sample-apps --help' for usage. Run 'sample-apps --help' for usage.
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
not ok 5 - listAllTerminatedServers
  ---
  error: |-
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
    Run 'sample-apps --help' for usage. Run 'sample-apps --help' for usage.
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
not ok 6 - publicGetMessages
  ---
  error: |-
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
    Run 'sample-apps --help' for usage. Run 'sample-apps --help' for usage.
    Error: unknown command "Dslogmanager" for "sample-apps" Error: unknown command "Dslogmanager" for "sample-apps"
```

```tap
sh/run-go-cli-basic-unit-test.sh

go install github.com/AccelByte/sample-apps
1..57
ok 1 getNamespaces
ok 2 createNamespace
ok 3 getNamespace
ok 4 deleteNamespace
ok 5 getActions
not ok 6 - banUsers
  ---
  error: |-
    time="2022-02-09T21:00:26+07:00" level=info msg="Response <nil>" time="2022-02-09T21:00:26+07:00" level=info msg="Response <nil>"
    time="2022-02-09T21:00:26+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204: " time="2022-02-09T21:00:26+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204: "
    Error: Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204: Error: Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204:
    Usage: Usage:
    sample-apps Basic banUsers [flags] sample-apps Basic banUsers [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for banUsers -h, --help help for banUsers
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204: Error: Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204:
ok 7 getBannedUsers
not ok 8 - reportUser
  ---
  error: |-
    time="2022-02-09T21:00:26+07:00" level=info msg="Response <nil>" time="2022-02-09T21:00:26+07:00" level=info msg="Response <nil>"
    time="2022-02-09T21:00:26+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204: " time="2022-02-09T21:00:26+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204: "
    Error: Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204: Error: Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204:
    Usage: Usage:
    sample-apps Basic reportUser [flags] sample-apps Basic reportUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for reportUser -h, --help help for reportUser
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204: Error: Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204:
ok 9 getUserStatus
not ok 10 - unBanUsers
  ---
  error: |-
    time="2022-02-09T21:00:26+07:00" level=info msg="Response <nil>" time="2022-02-09T21:00:26+07:00" level=info msg="Response <nil>"
    time="2022-02-09T21:00:26+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204: " time="2022-02-09T21:00:26+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204: "
    Error: Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204: Error: Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204:
    Usage: Usage:
    sample-apps Basic unBanUsers [flags] sample-apps Basic unBanUsers [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for unBanUsers -h, --help help for unBanUsers
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204: Error: Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204:
ok 11 updateNamespace
ok 12 getConfig
ok 13 deleteConfig
ok 14 updateConfig
ok 15 generatedUploadUrl
ok 16 getCountries
ok 17 getCountryGroups
ok 18 addCountryGroup
ok 19 updateCountryGroup
ok 20 deleteCountryGroup
ok 21 getLanguages
ok 22 getTimeZones
ok 23 adminGetUserProfilePublicInfoByIds
ok 24 getNamespacePublisher
ok 25 changeNamespaceStatus
ok 26 anonymizeUserProfile
ok 27 generatedUserUploadContentUrl
ok 28 getUserProfileInfo
ok 29 updateUserProfile
ok 30 deleteUserProfile
ok 31 getCustomAttributesInfo
ok 32 updateCustomAttributesPartially
ok 33 getPrivateCustomAttributesInfo
ok 34 updatePrivateCustomAttributesPartially
ok 35 updateUserProfileStatus
ok 36 publicGetTime
ok 37 publicGetNamespaces
ok 38 publicGeneratedUploadUrl
ok 39 publicGetCountries
ok 40 publicGetLanguages
ok 41 publicGetTimeZones
ok 42 publicGetUserProfilePublicInfoByIds
ok 43 publicGetNamespacePublisher
ok 44 getMyProfileInfo
ok 45 updateMyProfile
ok 46 createMyProfile
ok 47 getMyZipCode
ok 48 updateMyZipCode
not ok 49 - publicReportUser
  ---
  error: |-
    time="2022-02-09T21:00:27+07:00" level=info msg="Response <nil>" time="2022-02-09T21:00:27+07:00" level=info msg="Response <nil>"
    time="2022-02-09T21:00:27+07:00" level=error msg="Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204: " time="2022-02-09T21:00:27+07:00" level=error msg="Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204: "
    Error: Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204: Error: Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204:
    Usage: Usage:
    sample-apps Basic publicReportUser [flags] sample-apps Basic publicReportUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicReportUser -h, --help help for publicReportUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204: Error: Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204:
ok 50 publicGeneratedUserUploadContentUrl
ok 51 publicGetUserProfileInfo
ok 52 publicUpdateUserProfile
ok 53 publicCreateUserProfile
ok 54 publicGetCustomAttributesInfo
ok 55 publicUpdateCustomAttributesPartially
ok 56 publicGetUserProfilePublicInfo
ok 57 publicUpdateUserProfileStatus
```

```tap
sh/run-go-cli-gametelemetry-unit-test.sh

go install github.com/AccelByte/sample-apps
1..3
not ok 1 - protectedSaveEventsGameTelemetryV1ProtectedEventsPost
  ---
  error: |-
    Error: unknown flag: --body Error: unknown flag: --body
    Usage: Usage:
     
    Flags: Flags:
    -h, --help   help for Gametelemetry -h, --help help for Gametelemetry
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --body Error: unknown flag: --body
not ok 2 - protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
  ---
  error: |-
    Error: unknown flag: --steamId Error: unknown flag: --steamId
    Usage: Usage:
     
    Flags: Flags:
    -h, --help   help for Gametelemetry -h, --help help for Gametelemetry
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --steamId Error: unknown flag: --steamId
not ok 3 - protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
  ---
  error: |-
    Error: unknown flag: --playtime Error: unknown flag: --playtime
    Usage: Usage:
     
    Flags: Flags:
    -h, --help   help for Gametelemetry -h, --help help for Gametelemetry
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: unknown flag: --playtime Error: unknown flag: --playtime
```

