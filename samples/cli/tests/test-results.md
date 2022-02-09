# Test Results

```tap
sh/run-go-cli-dsmc-unit-test.sh

go install github.com/AccelByte/sample-apps
1..63
not ok 1 - listConfig
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc listConfig [flags] sample-apps Dsmc listConfig [flags]
     
    Flags: Flags:
    -h, --help   help for listConfig -h, --help help for listConfig
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    github.com/spf13/cobra.(*Command).execute(0x2c15840, {0xc0000cc7c0, 0x2, 0x2}) github.com/spf13/cobra.(*Command).execute(0x2c15840, {0xc0000cc7c0, 0x2, 0x2})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 6 - getConfig
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getConfig [flags] sample-apps Dsmc getConfig [flags]
     
    Flags: Flags:
    -h, --help               help for getConfig -h, --help help for getConfig
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 7 - createConfig
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createConfig [flags] sample-apps Dsmc createConfig [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createConfig -h, --help help for createConfig
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 8 deleteConfig
not ok 9 - updateConfig
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updateConfig [flags] sample-apps Dsmc updateConfig [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateConfig -h, --help help for updateConfig
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 10 clearCache
not ok 11 - getAllDeployment
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getAllDeployment [flags] sample-apps Dsmc getAllDeployment [flags]
     
    Flags: Flags:
    --count int          Count (default 1) --count int Count (default 1)
    -h, --help               help for getAllDeployment -h, --help help for getAllDeployment
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 12 - getDeployment
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getDeployment [flags] sample-apps Dsmc getDeployment [flags]
     
    Flags: Flags:
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for getDeployment -h, --help help for getDeployment
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 13 - createDeployment
  ---
  error: |-
    time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:05+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:05+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createDeployment [flags] sample-apps Dsmc createDeployment [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for createDeployment -h, --help help for createDeployment
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 14 deleteDeployment
not ok 15 - updateDeployment
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updateDeployment [flags] sample-apps Dsmc updateDeployment [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for updateDeployment -h, --help help for updateDeployment
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 16 - createRootRegionOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createRootRegionOverride [flags] sample-apps Dsmc createRootRegionOverride [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for createRootRegionOverride -h, --help help for createRootRegionOverride
    --namespace string    Namespace --namespace string Namespace
    --region string       Region --region string Region
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 17 - deleteRootRegionOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc deleteRootRegionOverride [flags] sample-apps Dsmc deleteRootRegionOverride [flags]
     
    Flags: Flags:
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for deleteRootRegionOverride -h, --help help for deleteRootRegionOverride
    --namespace string    Namespace --namespace string Namespace
    --region string       Region --region string Region
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 18 - updateRootRegionOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updateRootRegionOverride [flags] sample-apps Dsmc updateRootRegionOverride [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for updateRootRegionOverride -h, --help help for updateRootRegionOverride
    --namespace string    Namespace --namespace string Namespace
    --region string       Region --region string Region
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 19 - createDeploymentOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createDeploymentOverride [flags] sample-apps Dsmc createDeploymentOverride [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for createDeploymentOverride -h, --help help for createDeploymentOverride
    --namespace string    Namespace --namespace string Namespace
    --version string      Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 20 - deleteDeploymentOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc deleteDeploymentOverride [flags] sample-apps Dsmc deleteDeploymentOverride [flags]
     
    Flags: Flags:
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for deleteDeploymentOverride -h, --help help for deleteDeploymentOverride
    --namespace string    Namespace --namespace string Namespace
    --version string      Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 21 - updateDeploymentOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updateDeploymentOverride [flags] sample-apps Dsmc updateDeploymentOverride [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for updateDeploymentOverride -h, --help help for updateDeploymentOverride
    --namespace string    Namespace --namespace string Namespace
    --version string      Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 22 - createOverrideRegionOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createOverrideRegionOverride [flags] sample-apps Dsmc createOverrideRegionOverride [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for createOverrideRegionOverride -h, --help help for createOverrideRegionOverride
    --namespace string    Namespace --namespace string Namespace
    --region string       Region --region string Region
    --version string      Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 23 - deleteOverrideRegionOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc deleteOverrideRegionOverride [flags] sample-apps Dsmc deleteOverrideRegionOverride [flags]
     
    Flags: Flags:
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for deleteOverrideRegionOverride -h, --help help for deleteOverrideRegionOverride
    --namespace string    Namespace --namespace string Namespace
    --region string       Region --region string Region
    --version string      Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 24 - updateOverrideRegionOverride
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updateOverrideRegionOverride [flags] sample-apps Dsmc updateOverrideRegionOverride [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --deployment string   Deployment --deployment string Deployment
    -h, --help                help for updateOverrideRegionOverride -h, --help help for updateOverrideRegionOverride
    --namespace string    Namespace --namespace string Namespace
    --region string       Region --region string Region
    --version string      Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 25 - getAllPodConfig
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getAllPodConfig [flags] sample-apps Dsmc getAllPodConfig [flags]
     
    Flags: Flags:
    --count int          Count (default 1) --count int Count (default 1)
    -h, --help               help for getAllPodConfig -h, --help help for getAllPodConfig
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 26 - getPodConfig
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getPodConfig [flags] sample-apps Dsmc getPodConfig [flags]
     
    Flags: Flags:
    -h, --help               help for getPodConfig -h, --help help for getPodConfig
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 27 - createPodConfig
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createPodConfig [flags] sample-apps Dsmc createPodConfig [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createPodConfig -h, --help help for createPodConfig
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 28 deletePodConfig
not ok 29 - updatePodConfig
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updatePodConfig [flags] sample-apps Dsmc updatePodConfig [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updatePodConfig -h, --help help for updatePodConfig
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 30 - addPort
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc addPort [flags] sample-apps Dsmc addPort [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for addPort -h, --help help for addPort
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 31 - deletePort
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc deletePort [flags] sample-apps Dsmc deletePort [flags]
     
    Flags: Flags:
    -h, --help               help for deletePort -h, --help help for deletePort
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 32 - updatePort
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc updatePort [flags] sample-apps Dsmc updatePort [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updatePort -h, --help help for updatePort
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 33 - listImages
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc listImages [flags] sample-apps Dsmc listImages [flags]
     
    Flags: Flags:
    --count int              Count (default 1) --count int Count (default 1)
    -h, --help                   help for listImages -h, --help help for listImages
    --namespace string       Namespace --namespace string Namespace
    --offset int             Offset --offset int Offset
    --q string               Q --q string Q
    --sortBy string          Sort by --sortBy string Sort by
    --sortDirection string   Sort direction --sortDirection string Sort direction
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 34 deleteImage
not ok 35 - exportImages
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response []" time="2022-02-09T16:05:06+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc exportImages [flags] sample-apps Dsmc exportImages [flags]
     
    Flags: Flags:
    -h, --help               help for exportImages -h, --help help for exportImages
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 36 getImageLimit
not ok 37 - getImageDetail
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getImageDetail [flags] sample-apps Dsmc getImageDetail [flags]
     
    Flags: Flags:
    -h, --help               help for getImageDetail -h, --help help for getImageDetail
    --namespace string   Namespace --namespace string Namespace
    --version string     Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 38 - listServer
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc listServer [flags] sample-apps Dsmc listServer [flags]
     
    Flags: Flags:
    --count int          Count (default 1) --count int Count (default 1)
    -h, --help               help for listServer -h, --help help for listServer
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --region string      Region --region string Region
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 39 countServer
ok 40 countServerDetailed
not ok 41 - listLocalServer
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc listLocalServer [flags] sample-apps Dsmc listLocalServer [flags]
     
    Flags: Flags:
    -h, --help               help for listLocalServer -h, --help help for listLocalServer
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 42 deleteLocalServer
not ok 43 - getServer
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getServer [flags] sample-apps Dsmc getServer [flags]
     
    Flags: Flags:
    -h, --help               help for getServer -h, --help help for getServer
    --namespace string   Namespace --namespace string Namespace
    --podName string     Pod name --podName string Pod name
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 44 deleteServer
ok 45 getServerLogs
not ok 46 - listSession
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc listSession [flags] sample-apps Dsmc listSession [flags]
     
    Flags: Flags:
    --count int          Count (default 1) --count int Count (default 1)
    -h, --help               help for listSession -h, --help help for listSession
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --region string      Region --region string Region
    --withServer         With server --withServer With server
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 47 countSession
ok 48 deleteSession
not ok 49 - exportConfigV1
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc exportConfigV1 [flags] sample-apps Dsmc exportConfigV1 [flags]
     
    Flags: Flags:
    -h, --help               help for exportConfigV1 -h, --help help for exportConfigV1
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 50 - importConfigV1
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x129e156] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x129e156]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/dsmc/config.glob..func8(0x2c11ec0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/dsmc/config.glob..func8(0x2c11ec0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/dsmc/config/importConfigV1.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/dsmc/config/importConfigV1.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c11ec0, {0xc0005aa580, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c11ec0, {0xc0005aa580, 0x4, 0x4})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 51 - imageDetailClient
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc imageDetailClient [flags] sample-apps Dsmc imageDetailClient [flags]
     
    Flags: Flags:
    -h, --help               help for imageDetailClient -h, --help help for imageDetailClient
    --namespace string   Namespace --namespace string Namespace
    --version string     Version --version string Version
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 52 deregisterLocalServer
not ok 53 - registerLocalServer
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc registerLocalServer [flags] sample-apps Dsmc registerLocalServer [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for registerLocalServer -h, --help help for registerLocalServer
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 54 - registerServer
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc registerServer [flags] sample-apps Dsmc registerServer [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for registerServer -h, --help help for registerServer
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 55 shutdownServer
ok 56 getServerSession
not ok 57 - createSession
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc createSession [flags] sample-apps Dsmc createSession [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createSession -h, --help help for createSession
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 58 claimServer
not ok 59 - getSession
  ---
  error: |-
    time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:06+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:06+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Dsmc getSession [flags] sample-apps Dsmc getSession [flags]
     
    Flags: Flags:
    -h, --help               help for getSession -h, --help help for getSession
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 60 getDefaultProvider
ok 61 listProviders
ok 62 listProvidersByRegion
ok 63 publicGetMessages
```

```tap
sh/run-go-cli-achievement-unit-test.sh

go install github.com/AccelByte/sample-apps
1..14
not ok 1 - adminListAchievements
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement adminListAchievements [flags] sample-apps Achievement adminListAchievements [flags]
     
    Flags: Flags:
    -h, --help               help for adminListAchievements -h, --help help for adminListAchievements
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --sortBy string      Sort by --sortBy string Sort by
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 2 - adminCreateNewAchievement
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement adminCreateNewAchievement [flags] sample-apps Achievement adminCreateNewAchievement [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminCreateNewAchievement -h, --help help for adminCreateNewAchievement
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 3 - exportAchievements
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response []" time="2022-02-09T16:05:07+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement exportAchievements [flags] sample-apps Achievement exportAchievements [flags]
     
    Flags: Flags:
    -h, --help               help for exportAchievements -h, --help help for exportAchievements
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 5 - adminGetAchievement
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement adminGetAchievement [flags] sample-apps Achievement adminGetAchievement [flags]
     
    Flags: Flags:
    --achievementCode string   Achievement code --achievementCode string Achievement code
    -h, --help                     help for adminGetAchievement -h, --help help for adminGetAchievement
    --namespace string         Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 6 - adminUpdateAchievement
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement adminUpdateAchievement [flags] sample-apps Achievement adminUpdateAchievement [flags]
     
    Flags: Flags:
    --achievementCode string   Achievement code --achievementCode string Achievement code
    --body string              Body --body string Body
    -h, --help                     help for adminUpdateAchievement -h, --help help for adminUpdateAchievement
    --namespace string         Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 7 adminDeleteAchievement
ok 8 adminUpdateAchievementListOrder
not ok 9 - adminListUserAchievements
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement adminListUserAchievements [flags] sample-apps Achievement adminListUserAchievements [flags]
     
    Flags: Flags:
    -h, --help               help for adminListUserAchievements -h, --help help for adminListUserAchievements
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --preferUnlocked     Prefer unlocked --preferUnlocked Prefer unlocked
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 10 adminUnlockAchievement
not ok 11 - publicListAchievements
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement publicListAchievements [flags] sample-apps Achievement publicListAchievements [flags]
     
    Flags: Flags:
    -h, --help               help for publicListAchievements -h, --help help for publicListAchievements
    --language string    Language --language string Language
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --sortBy string      Sort by --sortBy string Sort by
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 12 - publicGetAchievement
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement publicGetAchievement [flags] sample-apps Achievement publicGetAchievement [flags]
     
    Flags: Flags:
    --achievementCode string   Achievement code --achievementCode string Achievement code
    -h, --help                     help for publicGetAchievement -h, --help help for publicGetAchievement
    --language string          Language --language string Language
    --namespace string         Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 13 - publicListUserAchievements
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Achievement publicListUserAchievements [flags] sample-apps Achievement publicListUserAchievements [flags]
     
    Flags: Flags:
    -h, --help               help for publicListUserAchievements -h, --help help for publicListUserAchievements
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --preferUnlocked     Prefer unlocked --preferUnlocked Prefer unlocked
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 5 - getClient
  ---
  error: |-
    time="2022-02-09T16:05:07+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:07+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:07+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:07+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getClient [flags] sample-apps Iam getClient [flags]
     
    Flags: Flags:
    --clientId string   Client id --clientId string Client id
    -h, --help              help for getClient -h, --help help for getClient
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 6 - updateClient
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam updateClient [flags] sample-apps Iam updateClient [flags]
     
    Flags: Flags:
    --body string       Body --body string Body
    --clientId string   Client id --clientId string Client id
    -h, --help              help for updateClient -h, --help help for updateClient
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 7 deleteClient (skipped deprecated)
ok 8 updateClientPermission
not ok 9 - addClientPermission
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T16:05:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
not ok 12 - getClientsbyNamespace
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response []" time="2022-02-09T16:05:08+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getClientsbyNamespace [flags] sample-apps Iam getClientsbyNamespace [flags]
     
    Flags: Flags:
    -h, --help               help for getClientsbyNamespace -h, --help help for getClientsbyNamespace
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 13 createClientByNamespace
ok 14 deleteClientByNamespace
not ok 15 - createUser
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam createUser [flags] sample-apps Iam createUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createUser -h, --help help for createUser
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 16 - getAdminUsersByRoleID
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 17 - getUserByLoginID
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getUserByLoginID [flags] sample-apps Iam getUserByLoginID [flags]
     
    Flags: Flags:
    -h, --help               help for getUserByLoginID -h, --help help for getUserByLoginID
    --loginId string     Login id --loginId string Login id
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 18 - getUserByPlatformUserID
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getUserByPlatformUserID [flags] sample-apps Iam getUserByPlatformUserID [flags]
     
    Flags: Flags:
    -h, --help                    help for getUserByPlatformUserID -h, --help help for getUserByPlatformUserID
    --namespace string        Namespace --namespace string Namespace
    --platformID string       Platform ID --platformID string Platform ID
    --platformUserID string   Platform user ID --platformUserID string Platform user ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 19 forgotPassword
ok 20 getUsersByLoginIds
ok 21 resetPassword
ok 22 searchUser (skipped deprecated)
not ok 23 - getUserByUserID
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getUserByUserID [flags] sample-apps Iam getUserByUserID [flags]
     
    Flags: Flags:
    -h, --help               help for getUserByUserID -h, --help help for getUserByUserID
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 24 - updateUser
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam updateUser [flags] sample-apps Iam updateUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateUser -h, --help help for updateUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 25 deleteUser
not ok 26 - banUser
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam banUser [flags] sample-apps Iam banUser [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for banUser -h, --help help for banUser
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 27 - getUserBanHistory
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response []" time="2022-02-09T16:05:08+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getUserBanHistory [flags] sample-apps Iam getUserBanHistory [flags]
     
    Flags: Flags:
    -h, --help               help for getUserBanHistory -h, --help help for getUserBanHistory
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 28 - disableUserBan
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T16:05:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T16:05:08+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getUserInformation [flags] sample-apps Iam getUserInformation [flags]
     
    Flags: Flags:
    -h, --help               help for getUserInformation -h, --help help for getUserInformation
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 49 - upgradeHeadlessAccount
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam upgradeHeadlessAccount [flags] sample-apps Iam upgradeHeadlessAccount [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for upgradeHeadlessAccount -h, --help help for upgradeHeadlessAccount
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 50 - upgradeHeadlessAccountWithVerificationCode
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam upgradeHeadlessAccountWithVerificationCode [flags] sample-apps Iam upgradeHeadlessAccountWithVerificationCode [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for upgradeHeadlessAccountWithVerificationCode -h, --help help for upgradeHeadlessAccountWithVerificationCode
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 57 - getRevocationList
  ---
  error: |-
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getRevocationList [flags] sample-apps Iam getRevocationList [flags]
     
    Flags: Flags:
    -h, --help   help for getRevocationList -h, --help help for getRevocationList
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:08+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:08+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:08+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam verifyToken [flags] sample-apps Iam verifyToken [flags]
     
    Flags: Flags:
    -h, --help           help for verifyToken -h, --help help for verifyToken
    --token string   Token --token string Token
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 84 - adminGetUserByUserIdV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetUserByUserIdV2 [flags] sample-apps Iam adminGetUserByUserIdV2 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserByUserIdV2 -h, --help help for adminGetUserByUserIdV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 85 - adminUpdateUserV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminUpdateUserV2 [flags] sample-apps Iam adminUpdateUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserV2 -h, --help help for adminUpdateUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 86 - adminBanUserV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminBanUserV2 [flags] sample-apps Iam adminBanUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminBanUserV2 -h, --help help for adminBanUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 87 - adminGetUserBanV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response []" time="2022-02-09T16:05:09+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetUserBanV2 [flags] sample-apps Iam adminGetUserBanV2 [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for adminGetUserBanV2 -h, --help help for adminGetUserBanV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 88 adminDisableUserV2
not ok 89 - adminEnableUserV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T16:05:09+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
not ok 94 - publicCreateUserV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicCreateUserV2 [flags] sample-apps Iam publicCreateUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserV2 -h, --help help for publicCreateUserV2
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 95 publicForgotPasswordV2
ok 96 publicResetPasswordV2
not ok 97 - publicGetUserByUserIDV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicGetUserByUserIDV2 [flags] sample-apps Iam publicGetUserByUserIDV2 [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserByUserIDV2 -h, --help help for publicGetUserByUserIDV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 98 - publicUpdateUserV2
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response []" time="2022-02-09T16:05:09+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicUpdateUserV2 [flags] sample-apps Iam publicUpdateUserV2 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserV2 -h, --help help for publicUpdateUserV2
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 99 - publicGetUserBan
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response []" time="2022-02-09T16:05:09+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicGetUserBan [flags] sample-apps Iam publicGetUserBan [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for publicGetUserBan -h, --help help for publicGetUserBan
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 109 - listAdminsV3
  ---
  error: |-
    time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:09+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:09+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:09+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 110 adminGetAgeRestrictionStatusV3
ok 111 adminUpdateAgeRestrictionConfigV3
ok 112 adminGetListCountryAgeRestrictionV3
ok 113 adminUpdateCountryAgeRestrictionV3
not ok 114 - adminGetBannedUsersV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 115 adminGetBansTypeWithNamespaceV3
not ok 116 - adminGetClientsByNamespaceV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetClientsByNamespaceV3 [flags] sample-apps Iam adminGetClientsByNamespaceV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetClientsByNamespaceV3 -h, --help help for adminGetClientsByNamespaceV3
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset string      Offset (default "0") --offset string Offset (default "0")
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 117 - adminCreateClientV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminCreateClientV3 [flags] sample-apps Iam adminCreateClientV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminCreateClientV3 -h, --help help for adminCreateClientV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 118 - adminGetClientsbyNamespacebyIDV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetClientsbyNamespacebyIDV3 [flags] sample-apps Iam adminGetClientsbyNamespacebyIDV3 [flags]
     
    Flags: Flags:
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminGetClientsbyNamespacebyIDV3 -h, --help help for adminGetClientsbyNamespacebyIDV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 119 adminDeleteClientV3
not ok 120 - adminUpdateClientV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminUpdateClientV3 [flags] sample-apps Iam adminUpdateClientV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    --clientId string    Client id --clientId string Client id
    -h, --help               help for adminUpdateClientV3 -h, --help help for adminUpdateClientV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 137 - adminGetUserByPlatformUserIDV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetUserByPlatformUserIDV3 [flags] sample-apps Iam adminGetUserByPlatformUserIDV3 [flags]
     
    Flags: Flags:
    -h, --help                    help for adminGetUserByPlatformUserIDV3 -h, --help help for adminGetUserByPlatformUserIDV3
    --namespace string        Namespace --namespace string Namespace
    --platformId string       Platform id --platformId string Platform id
    --platformUserId string   Platform user id --platformUserId string Platform user id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 138 - getAdminUsersByRoleIdV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 139 - adminGetUserByEmailAddressV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetUserByEmailAddressV3 [flags] sample-apps Iam adminGetUserByEmailAddressV3 [flags]
     
    Flags: Flags:
    --emailAddress string   Email address --emailAddress string Email address
    -h, --help                  help for adminGetUserByEmailAddressV3 -h, --help help for adminGetUserByEmailAddressV3
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 140 adminListUserIDByUserIDsV3
not ok 141 - adminInviteUserV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminInviteUserV3 [flags] sample-apps Iam adminInviteUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminInviteUserV3 -h, --help help for adminInviteUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 142 adminListUsersV3
not ok 143 - adminSearchUserV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 144 - adminGetBulkUserByEmailAddressV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetBulkUserByEmailAddressV3 [flags] sample-apps Iam adminGetBulkUserByEmailAddressV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminGetBulkUserByEmailAddressV3 -h, --help help for adminGetBulkUserByEmailAddressV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 145 - adminGetUserByUserIdV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetUserByUserIdV3 [flags] sample-apps Iam adminGetUserByUserIdV3 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserByUserIdV3 -h, --help help for adminGetUserByUserIdV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 146 - adminUpdateUserV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminUpdateUserV3 [flags] sample-apps Iam adminUpdateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserV3 -h, --help help for adminUpdateUserV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 147 - adminGetUserBanV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 148 - adminBanUserV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminBanUserV3 [flags] sample-apps Iam adminBanUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminBanUserV3 -h, --help help for adminBanUserV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 149 - adminUpdateUserBanV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 150 adminSendVerificationCodeV3
ok 151 adminVerifyAccountV3
ok 152 getUserVerificationCode
ok 153 adminGetUserDeletionStatusV3
ok 154 adminUpdateUserDeletionStatusV3
not ok 155 - adminUpgradeHeadlessAccountV3
  ---
  error: |-
    time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:10+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:10+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:10+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminUpgradeHeadlessAccountV3 [flags] sample-apps Iam adminUpgradeHeadlessAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpgradeHeadlessAccountV3 -h, --help help for adminUpgradeHeadlessAccountV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 192 - adminGetMyUserV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminGetMyUserV3 [flags] sample-apps Iam adminGetMyUserV3 [flags]
     
    Flags: Flags:
    -h, --help   help for adminGetMyUserV3 -h, --help help for adminGetMyUserV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*" time="2022-02-09T16:05:11+07:00" level=error msg="none of producers: map[application/json:0x7b1b20 application/octet-stream:0x7b03e0 application/x-yaml:0x862ac0 application/xml:0x7b2580 text/csv:0x7b15e0 text/html:0x7b2060 text/plain:0x7b2060] registered. try */*"
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
not ok 204 - getRevocationListV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getRevocationListV3 [flags] sample-apps Iam getRevocationListV3 [flags]
     
    Flags: Flags:
    -h, --help   help for getRevocationListV3 -h, --help help for getRevocationListV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 211 - publicGetUserByPlatformUserIDV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicGetUserByPlatformUserIDV3 [flags] sample-apps Iam publicGetUserByPlatformUserIDV3 [flags]
     
    Flags: Flags:
    -h, --help                    help for publicGetUserByPlatformUserIDV3 -h, --help help for publicGetUserByPlatformUserIDV3
    --namespace string        Namespace --namespace string Namespace
    --platformId string       Platform id --platformId string Platform id
    --platformUserId string   Platform user id --platformUserId string Platform user id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 212 publicGetAsyncStatus
not ok 213 - publicSearchUserV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicSearchUserV3 [flags] sample-apps Iam publicSearchUserV3 [flags]
     
    Flags: Flags:
    --by string          By --by string By
    -h, --help               help for publicSearchUserV3 -h, --help help for publicSearchUserV3
    --namespace string   Namespace --namespace string Namespace
    --query string       Query --query string Query
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 214 - publicCreateUserV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicCreateUserV3 [flags] sample-apps Iam publicCreateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserV3 -h, --help help for publicCreateUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 215 checkUserAvailability
ok 216 publicBulkGetUsers
ok 217 publicForgotPasswordV3
not ok 218 - getAdminInvitationV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam getAdminInvitationV3 [flags] sample-apps Iam getAdminInvitationV3 [flags]
     
    Flags: Flags:
    -h, --help                  help for getAdminInvitationV3 -h, --help help for getAdminInvitationV3
    --invitationId string   Invitation id --invitationId string Invitation id
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 219 - createUserFromInvitationV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam createUserFromInvitationV3 [flags] sample-apps Iam createUserFromInvitationV3 [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    -h, --help                  help for createUserFromInvitationV3 -h, --help help for createUserFromInvitationV3
    --invitationId string   Invitation id --invitationId string Invitation id
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 220 - updateUserV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response []" time="2022-02-09T16:05:11+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam updateUserV3 [flags] sample-apps Iam updateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateUserV3 -h, --help help for updateUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 221 - publicUpdateUserV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response []" time="2022-02-09T16:05:11+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicUpdateUserV3 [flags] sample-apps Iam publicUpdateUserV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserV3 -h, --help help for publicUpdateUserV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 222 publicSendVerificationCodeV3
ok 223 publicUserVerificationV3
not ok 224 - publicUpgradeHeadlessAccountV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicUpgradeHeadlessAccountV3 [flags] sample-apps Iam publicUpgradeHeadlessAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpgradeHeadlessAccountV3 -h, --help help for publicUpgradeHeadlessAccountV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 225 - publicVerifyHeadlessAccountV3
  ---
  error: |-
    time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:11+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:11+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:11+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicVerifyHeadlessAccountV3 [flags] sample-apps Iam publicVerifyHeadlessAccountV3 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicVerifyHeadlessAccountV3 -h, --help help for publicVerifyHeadlessAccountV3
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 226 publicUpdatePasswordV3
ok 227 publicCreateJusticeUser
ok 228 publicPlatformLinkV3
ok 229 publicPlatformUnlinkV3
ok 230 publicWebLinkPlatform
not ok 231 - publicWebLinkPlatformEstablish
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T16:05:12+07:00" level=error msg="no consumer: "application/problem+json""
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
not ok 233 - publicGetUserByUserIdV3
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicGetUserByUserIdV3 [flags] sample-apps Iam publicGetUserByUserIdV3 [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserByUserIdV3 -h, --help help for publicGetUserByUserIdV3
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 234 - publicGetUserBanHistoryV3
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 235 publicGetUserLoginHistoriesV3
ok 236 publicGetUserPlatformAccountsV3
ok 237 publicLinkPlatformAccount
ok 238 publicValidateUserByUserIDAndPasswordV3
ok 239 publicGetRolesV3
ok 240 publicGetRoleV3
not ok 241 - publicGetMyUserV3
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicGetMyUserV3 [flags] sample-apps Iam publicGetMyUserV3 [flags]
     
    Flags: Flags:
    -h, --help   help for publicGetMyUserV3 -h, --help help for publicGetMyUserV3
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 242 - platformAuthenticateSAMLV3Handler
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=error msg="no consumer: "application/problem+json"" time="2022-02-09T16:05:12+07:00" level=error msg="no consumer: "application/problem+json""
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
not ok 245 - adminUpdateUserV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminUpdateUserV4 [flags] sample-apps Iam adminUpdateUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for adminUpdateUserV4 -h, --help help for adminUpdateUserV4
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 262 - adminUpdateMyUserV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminUpdateMyUserV4 [flags] sample-apps Iam adminUpdateMyUserV4 [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminUpdateMyUserV4 -h, --help help for adminUpdateMyUserV4
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 263 - adminInviteUserV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam adminInviteUserV4 [flags] sample-apps Iam adminInviteUserV4 [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for adminInviteUserV4 -h, --help help for adminInviteUserV4
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 264 - publicCreateTestUserV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicCreateTestUserV4 [flags] sample-apps Iam publicCreateTestUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateTestUserV4 -h, --help help for publicCreateTestUserV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 265 - publicCreateUserV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicCreateUserV4 [flags] sample-apps Iam publicCreateUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserV4 -h, --help help for publicCreateUserV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 266 - createUserFromInvitationV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam createUserFromInvitationV4 [flags] sample-apps Iam createUserFromInvitationV4 [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    -h, --help                  help for createUserFromInvitationV4 -h, --help help for createUserFromInvitationV4
    --invitationId string   Invitation id --invitationId string Invitation id
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 267 - publicUpdateUserV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicUpdateUserV4 [flags] sample-apps Iam publicUpdateUserV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpdateUserV4 -h, --help help for publicUpdateUserV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 268 publicUpdateUserEmailAddressV4
not ok 269 - publicUpgradeHeadlessAccountWithVerificationCodeV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 [flags] sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpgradeHeadlessAccountWithVerificationCodeV4 -h, --help help for publicUpgradeHeadlessAccountWithVerificationCodeV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 270 - publicUpgradeHeadlessAccountV4
  ---
  error: |-
    time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080" time="2022-02-09T16:05:12+07:00" level=info msg="Base URL : http://0.0.0.0:8080"
    time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:12+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:12+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Iam publicUpgradeHeadlessAccountV4 [flags] sample-apps Iam publicUpgradeHeadlessAccountV4 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicUpgradeHeadlessAccountV4 -h, --help help for publicUpgradeHeadlessAccountV4
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
```

```tap
sh/run-go-cli-seasonpass-unit-test.sh

go install github.com/AccelByte/sample-apps
1..38
not ok 1 - getPass
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass getPass [flags] sample-apps Seasonpass getPass [flags]
     
    Flags: Flags:
    --code string        Code --code string Code
    -h, --help               help for getPass -h, --help help for getPass
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 2 deletePass
not ok 3 - updatePass
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass updatePass [flags] sample-apps Seasonpass updatePass [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    --code string        Code --code string Code
    -h, --help               help for updatePass -h, --help help for updatePass
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 4 - queryPasses
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response []" time="2022-02-09T16:05:13+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass queryPasses [flags] sample-apps Seasonpass queryPasses [flags]
     
    Flags: Flags:
    -h, --help               help for queryPasses -h, --help help for queryPasses
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 5 - createPass
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass createPass [flags] sample-apps Seasonpass createPass [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createPass -h, --help help for createPass
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 6 getReward
ok 7 deleteReward
ok 8 updateReward
ok 9 queryRewards
ok 10 createReward
not ok 11 - unpublishSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass unpublishSeason [flags] sample-apps Seasonpass unpublishSeason [flags]
     
    Flags: Flags:
    --force              Force --force Force
    -h, --help               help for unpublishSeason -h, --help help for unpublishSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 12 - getSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass getSeason [flags] sample-apps Seasonpass getSeason [flags]
     
    Flags: Flags:
    -h, --help               help for getSeason -h, --help help for getSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 13 deleteSeason
not ok 14 - updateSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass updateSeason [flags] sample-apps Seasonpass updateSeason [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateSeason -h, --help help for updateSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 15 - cloneSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass cloneSeason [flags] sample-apps Seasonpass cloneSeason [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for cloneSeason -h, --help help for cloneSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 16 - querySeasons
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass querySeasons [flags] sample-apps Seasonpass querySeasons [flags]
     
    Flags: Flags:
    -h, --help               help for querySeasons -h, --help help for querySeasons
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --status string      Status --status string Status
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 17 - createSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass createSeason [flags] sample-apps Seasonpass createSeason [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createSeason -h, --help help for createSeason
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 18 - retireSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass retireSeason [flags] sample-apps Seasonpass retireSeason [flags]
     
    Flags: Flags:
    --force              Force --force Force
    -h, --help               help for retireSeason -h, --help help for retireSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 19 - publishSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass publishSeason [flags] sample-apps Seasonpass publishSeason [flags]
     
    Flags: Flags:
    -h, --help               help for publishSeason -h, --help help for publishSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 20 - getCurrentSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass getCurrentSeason [flags] sample-apps Seasonpass getCurrentSeason [flags]
     
    Flags: Flags:
    -h, --help               help for getCurrentSeason -h, --help help for getCurrentSeason
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 21 updateTier
ok 22 deleteTier
ok 23 queryTiers
ok 24 createTier
ok 25 existsAnyPassByPassCodes
ok 26 grantUserTier
not ok 27 - getUserSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass getUserSeason [flags] sample-apps Seasonpass getUserSeason [flags]
     
    Flags: Flags:
    -h, --help               help for getUserSeason -h, --help help for getUserSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 28 checkSeasonPurchasable
ok 29 getCurrentUserSeasonProgression
ok 30 resetUserSeason
ok 31 grantUserPass
not ok 32 - getUserParticipatedSeasons
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass getUserParticipatedSeasons [flags] sample-apps Seasonpass getUserParticipatedSeasons [flags]
     
    Flags: Flags:
    -h, --help               help for getUserParticipatedSeasons -h, --help help for getUserParticipatedSeasons
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 33 grantUserExp
not ok 34 - publicGetCurrentSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass publicGetCurrentSeason [flags] sample-apps Seasonpass publicGetCurrentSeason [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetCurrentSeason -h, --help help for publicGetCurrentSeason
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 35 publicClaimUserReward
not ok 36 - publicGetCurrentUserSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass publicGetCurrentUserSeason [flags] sample-apps Seasonpass publicGetCurrentUserSeason [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetCurrentUserSeason -h, --help help for publicGetCurrentUserSeason
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 37 publicBulkClaimUserRewards
not ok 38 - publicGetUserSeason
  ---
  error: |-
    time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:13+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:13+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Seasonpass publicGetUserSeason [flags] sample-apps Seasonpass publicGetUserSeason [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserSeason -h, --help help for publicGetUserSeason
    --namespace string   Namespace --namespace string Namespace
    --seasonId string    Season id --seasonId string Season id
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 46 - adminGetPlayerBlockedPlayersV1
  ---
  error: |-
    time="2022-02-09T16:05:14+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:14+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:14+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:14+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Lobby adminGetPlayerBlockedPlayersV1 [flags] sample-apps Lobby adminGetPlayerBlockedPlayersV1 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetPlayerBlockedPlayersV1 -h, --help help for adminGetPlayerBlockedPlayersV1
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 47 - adminGetPlayerBlockedByPlayersV1
  ---
  error: |-
    time="2022-02-09T16:05:14+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:14+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:14+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:14+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Lobby adminGetPlayerBlockedByPlayersV1 [flags] sample-apps Lobby adminGetPlayerBlockedByPlayersV1 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetPlayerBlockedByPlayersV1 -h, --help help for adminGetPlayerBlockedByPlayersV1
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 70 - publicGetPlayerBlockedPlayersV1
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Lobby publicGetPlayerBlockedPlayersV1 [flags] sample-apps Lobby publicGetPlayerBlockedPlayersV1 [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetPlayerBlockedPlayersV1 -h, --help help for publicGetPlayerBlockedPlayersV1
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 71 - publicGetPlayerBlockedByPlayersV1
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Lobby publicGetPlayerBlockedByPlayersV1 [flags] sample-apps Lobby publicGetPlayerBlockedByPlayersV1 [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetPlayerBlockedByPlayersV1 -h, --help help for publicGetPlayerBlockedByPlayersV1
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 1 - adminGetListDeletionDataRequest
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr adminGetListDeletionDataRequest [flags] sample-apps Gdpr adminGetListDeletionDataRequest [flags]
     
    Flags: Flags:
    --after string         After (default "0") --after string After (default "0")
    --before string        Before (default "0") --before string Before (default "0")
    -h, --help                 help for adminGetListDeletionDataRequest -h, --help help for adminGetListDeletionDataRequest
    --limit int            Limit (default 20) --limit int Limit (default 20)
    --namespace string     Namespace --namespace string Namespace
    --offset int           Offset --offset int Offset
    --requestDate string   Request date --requestDate string Request date
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 2 getAdminEmailConfiguration
ok 3 updateAdminEmailConfiguration
ok 4 saveAdminEmailConfiguration
ok 5 deleteAdminEmailConfiguration
not ok 6 - adminGetListPersonalDataRequest
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr adminGetListPersonalDataRequest [flags] sample-apps Gdpr adminGetListPersonalDataRequest [flags]
     
    Flags: Flags:
    -h, --help                 help for adminGetListPersonalDataRequest -h, --help help for adminGetListPersonalDataRequest
    --limit int            Limit (default 20) --limit int Limit (default 20)
    --namespace string     Namespace --namespace string Namespace
    --offset int           Offset --offset int Offset
    --requestDate string   Request date --requestDate string Request date
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 7 - adminGetUserAccountDeletionRequest
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr adminGetUserAccountDeletionRequest [flags] sample-apps Gdpr adminGetUserAccountDeletionRequest [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserAccountDeletionRequest -h, --help help for adminGetUserAccountDeletionRequest
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 8 adminSubmitUserAccountDeletionRequest
ok 9 adminCancelUserAccountDeletionRequest
not ok 10 - adminGetUserPersonalDataRequests
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr adminGetUserPersonalDataRequests [flags] sample-apps Gdpr adminGetUserPersonalDataRequests [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetUserPersonalDataRequests -h, --help help for adminGetUserPersonalDataRequests
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 11 - adminRequestDataRetrieval
  ---
  error: |-
    time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:15+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:15+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr adminRequestDataRetrieval [flags] sample-apps Gdpr adminRequestDataRetrieval [flags]
     
    Flags: Flags:
    -h, --help               help for adminRequestDataRetrieval -h, --help help for adminRequestDataRetrieval
    --namespace string   Namespace --namespace string Namespace
    --password string    Password --password string Password
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 12 adminCancelUserPersonalDataRequest
ok 13 adminGeneratePersonalDataURL
ok 14 publicSubmitUserAccountDeletionRequest
ok 15 publicCancelUserAccountDeletionRequest
ok 16 publicGetUserAccountDeletionStatus
not ok 17 - publicGetUserPersonalDataRequests
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr publicGetUserPersonalDataRequests [flags] sample-apps Gdpr publicGetUserPersonalDataRequests [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserPersonalDataRequests -h, --help help for publicGetUserPersonalDataRequests
    --limit int          Limit (default 20) --limit int Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int         Offset --offset int Offset
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 18 - publicRequestDataRetrieval
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Gdpr publicRequestDataRetrieval [flags] sample-apps Gdpr publicRequestDataRetrieval [flags]
     
    Flags: Flags:
    -h, --help               help for publicRequestDataRetrieval -h, --help help for publicRequestDataRetrieval
    --namespace string   Namespace --namespace string Namespace
    --password string    Password --password string Password
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cdab1] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cdab1]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func1(0x2cacec0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func1(0x2cacec0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/getSlotData.go:32 +0x111 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/getSlotData.go:32 +0x111
    github.com/spf13/cobra.(*Command).execute(0x2cacec0, {0xc00035e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2cacec0, {0xc00035e420, 0x6, 0x6})
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce16f] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce16f]
     
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce851] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13ce851]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func5(0x2cad8c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func5(0x2cad8c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicGetSlotData.go:32 +0x111 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicGetSlotData.go:32 +0x111
    github.com/spf13/cobra.(*Command).execute(0x2cad8c0, {0xc0000883c0, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2cad8c0, {0xc0000883c0, 0x6, 0x6})
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cef45] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13cef45]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/social/slot.glob..func7(0x2caddc0, {0x19e45e1, 0x10, 0x10}) github.com/AccelByte/sample-apps/cmd/social/slot.glob..func7(0x2caddc0, {0x19e45e1, 0x10, 0x10})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicUpdateUserNamespaceSlot.go:33 +0x1c5 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/social/slot/publicUpdateUserNamespaceSlot.go:33 +0x1c5
    github.com/spf13/cobra.(*Command).execute(0x2caddc0, {0xc0002e6a00, 0x10, 0x10}) github.com/spf13/cobra.(*Command).execute(0x2caddc0, {0xc0002e6a00, 0x10, 0x10})
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
not ok 25 - getGlobalStatItems
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social getGlobalStatItems [flags] sample-apps Social getGlobalStatItems [flags]
     
    Flags: Flags:
    -h, --help               help for getGlobalStatItems -h, --help help for getGlobalStatItems
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 26 - bulkFetchStatItems
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response []" time="2022-02-09T16:05:16+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social bulkFetchStatItems [flags] sample-apps Social bulkFetchStatItems [flags]
     
    Flags: Flags:
    -h, --help               help for bulkFetchStatItems -h, --help help for bulkFetchStatItems
    --namespace string   Namespace --namespace string Namespace
    --statCode string    Stat code --statCode string Stat code
    --userIds string     User ids --userIds string User ids
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 27 bulkIncUserStatItem
ok 28 bulkIncUserStatItemValue
ok 29 bulkResetUserStatItem
not ok 30 - getStats
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social getStats [flags] sample-apps Social getStats [flags]
     
    Flags: Flags:
    -h, --help               help for getStats -h, --help help for getStats
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 31 - createStat
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social createStat [flags] sample-apps Social createStat [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createStat -h, --help help for createStat
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 32 exportStats
not ok 33 - importStats
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13d2276] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13d2276]
     
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
not ok 34 - queryStats
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social queryStats [flags] sample-apps Social queryStats [flags]
     
    Flags: Flags:
    -h, --help               help for queryStats -h, --help help for queryStats
    --keyword string     Keyword --keyword string Keyword
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 35 - getStat
  ---
  error: |-
    time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:16+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:16+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social getStat [flags] sample-apps Social getStat [flags]
     
    Flags: Flags:
    -h, --help               help for getStat -h, --help help for getStat
    --namespace string   Namespace --namespace string Namespace
    --statCode string    Stat code --statCode string Stat code
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 36 deleteStat
not ok 37 - updateStat
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social updateStat [flags] sample-apps Social updateStat [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateStat -h, --help help for updateStat
    --namespace string   Namespace --namespace string Namespace
    --statCode string    Stat code --statCode string Stat code
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 38 - getUserStatItems
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social getUserStatItems [flags] sample-apps Social getUserStatItems [flags]
     
    Flags: Flags:
    -h, --help               help for getUserStatItems -h, --help help for getUserStatItems
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --statCodes string   Stat codes --statCodes string Stat codes
    --tags string        Tags --tags string Tags
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 39 bulkCreateUserStatItems
ok 40 bulkIncUserStatItem1
ok 41 bulkIncUserStatItemValue1
ok 42 bulkResetUserStatItem1
ok 43 createUserStatItem
ok 44 deleteUserStatItems
ok 45 incUserStatItemValue
ok 46 resetUserStatItemValue
not ok 47 - bulkFetchStatItems1
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response []" time="2022-02-09T16:05:17+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social bulkFetchStatItems1 [flags] sample-apps Social bulkFetchStatItems1 [flags]
     
    Flags: Flags:
    -h, --help               help for bulkFetchStatItems1 -h, --help help for bulkFetchStatItems1
    --namespace string   Namespace --namespace string Namespace
    --statCode string    Stat code --statCode string Stat code
    --userIds string     User ids --userIds string User ids
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 48 publicBulkIncUserStatItem
ok 49 publicBulkIncUserStatItemValue
ok 50 bulkResetUserStatItem2
not ok 51 - createStat1
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social createStat1 [flags] sample-apps Social createStat1 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createStat1 -h, --help help for createStat1
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 52 - publicQueryUserStatItems
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Social publicQueryUserStatItems [flags] sample-apps Social publicQueryUserStatItems [flags]
     
    Flags: Flags:
    -h, --help               help for publicQueryUserStatItems -h, --help help for publicQueryUserStatItems
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --statCodes string   Stat codes --statCodes string Stat codes
    --tags string        Tags --tags string Tags
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 7 - queryCampaigns
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryCampaigns [flags] sample-apps Platform queryCampaigns [flags]
     
    Flags: Flags:
    -h, --help               help for queryCampaigns -h, --help help for queryCampaigns
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --tag string         Tag --tag string Tag
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 8 - createCampaign
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createCampaign [flags] sample-apps Platform createCampaign [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createCampaign -h, --help help for createCampaign
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 9 - getCampaign
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getCampaign [flags] sample-apps Platform getCampaign [flags]
     
    Flags: Flags:
    --campaignId string   Campaign id --campaignId string Campaign id
    -h, --help                help for getCampaign -h, --help help for getCampaign
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 10 - updateCampaign
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateCampaign [flags] sample-apps Platform updateCampaign [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    --campaignId string   Campaign id --campaignId string Campaign id
    -h, --help                help for updateCampaign -h, --help help for updateCampaign
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 11 getCampaignDynamic
not ok 12 - getRootCategories
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response []" time="2022-02-09T16:05:17+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getRootCategories [flags] sample-apps Platform getRootCategories [flags]
     
    Flags: Flags:
    -h, --help               help for getRootCategories -h, --help help for getRootCategories
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 13 - createCategory
  ---
  error: |-
    time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:17+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:17+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createCategory [flags] sample-apps Platform createCategory [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createCategory -h, --help help for createCategory
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 14 - listCategoriesBasic
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response []" time="2022-02-09T16:05:18+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform listCategoriesBasic [flags] sample-apps Platform listCategoriesBasic [flags]
     
    Flags: Flags:
    -h, --help               help for listCategoriesBasic -h, --help help for listCategoriesBasic
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 15 - getCategory
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getCategory [flags] sample-apps Platform getCategory [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for getCategory -h, --help help for getCategory
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 16 - updateCategory
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateCategory [flags] sample-apps Platform updateCategory [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for updateCategory -h, --help help for updateCategory
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 17 - deleteCategory
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform deleteCategory [flags] sample-apps Platform deleteCategory [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for deleteCategory -h, --help help for deleteCategory
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 18 - getChildCategories
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response []" time="2022-02-09T16:05:18+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getChildCategories [flags] sample-apps Platform getChildCategories [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for getChildCategories -h, --help help for getChildCategories
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 19 - getDescendantCategories
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response []" time="2022-02-09T16:05:18+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getDescendantCategories [flags] sample-apps Platform getDescendantCategories [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for getDescendantCategories -h, --help help for getDescendantCategories
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 20 - queryCodes
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryCodes [flags] sample-apps Platform queryCodes [flags]
     
    Flags: Flags:
    --activeOnly          Active only --activeOnly Active only
    --batchNo int32       Batch no --batchNo int32 Batch no
    --campaignId string   Campaign id --campaignId string Campaign id
    --code string         Code --code string Code
    -h, --help                help for queryCodes -h, --help help for queryCodes
    --limit int32         Limit (default 20) --limit int32 Limit (default 20)
    --namespace string    Namespace --namespace string Namespace
    --offset int32        Offset --offset int32 Offset
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 21 createCodes
ok 22 download
ok 23 bulkDisableCodes
ok 24 bulkEnableCodes
not ok 25 - queryRedeemHistory
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryRedeemHistory [flags] sample-apps Platform queryRedeemHistory [flags]
     
    Flags: Flags:
    --campaignId string   Campaign id --campaignId string Campaign id
    --code string         Code --code string Code
    -h, --help                help for queryRedeemHistory -h, --help help for queryRedeemHistory
    --limit int32         Limit (default 20) --limit int32 Limit (default 20)
    --namespace string    Namespace --namespace string Namespace
    --offset int32        Offset --offset int32 Offset
    --userId string       User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 26 - getCode
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getCode [flags] sample-apps Platform getCode [flags]
     
    Flags: Flags:
    --code string        Code --code string Code
    -h, --help               help for getCode -h, --help help for getCode
    --namespace string   Namespace --namespace string Namespace
    --redeemable         Redeemable --redeemable Redeemable
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 27 - disableCode
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform disableCode [flags] sample-apps Platform disableCode [flags]
     
    Flags: Flags:
    --code string        Code --code string Code
    -h, --help               help for disableCode -h, --help help for disableCode
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 28 - enableCode
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform enableCode [flags] sample-apps Platform enableCode [flags]
     
    Flags: Flags:
    --code string        Code --code string Code
    -h, --help               help for enableCode -h, --help help for enableCode
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 29 - listCurrencies
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response []" time="2022-02-09T16:05:18+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform listCurrencies [flags] sample-apps Platform listCurrencies [flags]
     
    Flags: Flags:
    -h, --help               help for listCurrencies -h, --help help for listCurrencies
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 30 - createCurrency
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createCurrency [flags] sample-apps Platform createCurrency [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createCurrency -h, --help help for createCurrency
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 31 - updateCurrency
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateCurrency [flags] sample-apps Platform updateCurrency [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for updateCurrency -h, --help help for updateCurrency
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 32 - deleteCurrency
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform deleteCurrency [flags] sample-apps Platform deleteCurrency [flags]
     
    Flags: Flags:
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for deleteCurrency -h, --help help for deleteCurrency
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 33 getCurrencyConfig
ok 34 getCurrencySummary
ok 35 getDLCItemConfig
ok 36 updateDLCItemConfig
ok 37 deleteDLCItemConfig
ok 38 getPlatformDLCConfig
ok 39 updatePlatformDLCConfig
ok 40 deletePlatformDLCConfig
ok 41 queryEntitlements
not ok 42 - getEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getEntitlement [flags] sample-apps Platform getEntitlement [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for getEntitlement -h, --help help for getEntitlement
    --namespace string       Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 43 - queryFulfillmentHistories
  ---
  error: |-
    time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:18+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:18+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryFulfillmentHistories [flags] sample-apps Platform queryFulfillmentHistories [flags]
     
    Flags: Flags:
    -h, --help               help for queryFulfillmentHistories -h, --help help for queryFulfillmentHistories
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --status string      Status --status string Status
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137bc96] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137bc96]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func30(0x2c835c0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func30(0x2c835c0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateGoogleP12File.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateGoogleP12File.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c835c0, {0xc000526540, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c835c0, {0xc000526540, 0x4, 0x4})
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137c4b6] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137c4b6]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func33(0x2c83fc0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func33(0x2c83fc0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateStadiaJsonConfigFile.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateStadiaJsonConfigFile.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c83fc0, {0xc00012f3c0, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c83fc0, {0xc00012f3c0, 0x4, 0x4})
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137ca36] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x137ca36]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func35(0x2c844c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/iap.glob..func35(0x2c844c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateXblBPCertFile.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/iap/updateXblBPCertFile.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c844c0, {0xc00035c420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c844c0, {0xc00035c420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 70 - syncInGameItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform syncInGameItem [flags] sample-apps Platform syncInGameItem [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for syncInGameItem -h, --help help for syncInGameItem
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 71 - createItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createItem [flags] sample-apps Platform createItem [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createItem -h, --help help for createItem
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 72 - getItemByAppId
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getItemByAppId [flags] sample-apps Platform getItemByAppId [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    --appId string       App id --appId string App id
    -h, --help               help for getItemByAppId -h, --help help for getItemByAppId
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 73 - queryItems
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryItems [flags] sample-apps Platform queryItems [flags]
     
    Flags: Flags:
    --activeOnly               Active only --activeOnly Active only
    --appType string           App type --appType string App type
    --availableDate string     Available date --availableDate string Available date
    --baseAppId string         Base app id --baseAppId string Base app id
    --categoryPath string      Category path --categoryPath string Category path
    --features string          Features --features string Features
    -h, --help                     help for queryItems -h, --help help for queryItems
    --itemType string          Item type --itemType string Item type
    --limit int32              Limit (default 20) --limit int32 Limit (default 20)
    --namespace string         Namespace --namespace string Namespace
    --offset int32             Offset --offset int32 Offset
    --region string            Region --region string Region
    --sortBy string            Sort by --sortBy string Sort by
    --storeId string           Store id --storeId string Store id
    --tags string              Tags --tags string Tags
    --targetNamespace string   Target namespace --targetNamespace string Target namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 74 - listBasicItemsByFeatures
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response []" time="2022-02-09T16:05:19+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform listBasicItemsByFeatures [flags] sample-apps Platform listBasicItemsByFeatures [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    --features string    Features --features string Features
    -h, --help               help for listBasicItemsByFeatures -h, --help help for listBasicItemsByFeatures
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 75 - getItemBySku
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getItemBySku [flags] sample-apps Platform getItemBySku [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for getItemBySku -h, --help help for getItemBySku
    --namespace string   Namespace --namespace string Namespace
    --sku string         Sku --sku string Sku
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 76 - getLocaleItemBySku
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getLocaleItemBySku [flags] sample-apps Platform getLocaleItemBySku [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for getLocaleItemBySku -h, --help help for getLocaleItemBySku
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --populateBundle     Populate bundle --populateBundle Populate bundle
    --region string      Region --region string Region
    --sku string         Sku --sku string Sku
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 77 getItemIdBySku
not ok 78 - bulkGetLocaleItems
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response []" time="2022-02-09T16:05:19+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform bulkGetLocaleItems [flags] sample-apps Platform bulkGetLocaleItems [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for bulkGetLocaleItems -h, --help help for bulkGetLocaleItems
    --itemIds string     Item ids --itemIds string Item ids
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --region string      Region --region string Region
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 79 - searchItems
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform searchItems [flags] sample-apps Platform searchItems [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for searchItems -h, --help help for searchItems
    --keyword string     Keyword --keyword string Keyword
    --language string    Language --language string Language
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 80 - queryUncategorizedItems
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryUncategorizedItems [flags] sample-apps Platform queryUncategorizedItems [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for queryUncategorizedItems -h, --help help for queryUncategorizedItems
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --sortBy string      Sort by --sortBy string Sort by
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 81 - getItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getItem [flags] sample-apps Platform getItem [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for getItem -h, --help help for getItem
    --itemId string      Item id --itemId string Item id
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 82 - updateItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateItem [flags] sample-apps Platform updateItem [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateItem -h, --help help for updateItem
    --itemId string      Item id --itemId string Item id
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 83 deleteItem
ok 84 acquireItem
ok 85 getApp
ok 86 updateApp
not ok 87 - disableItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform disableItem [flags] sample-apps Platform disableItem [flags]
     
    Flags: Flags:
    -h, --help               help for disableItem -h, --help help for disableItem
    --itemId string      Item id --itemId string Item id
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 88 getItemDynamicData
not ok 89 - enableItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform enableItem [flags] sample-apps Platform enableItem [flags]
     
    Flags: Flags:
    -h, --help               help for enableItem -h, --help help for enableItem
    --itemId string      Item id --itemId string Item id
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 90 - featureItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform featureItem [flags] sample-apps Platform featureItem [flags]
     
    Flags: Flags:
    --feature string     Feature --feature string Feature
    -h, --help               help for featureItem -h, --help help for featureItem
    --itemId string      Item id --itemId string Item id
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 91 - defeatureItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform defeatureItem [flags] sample-apps Platform defeatureItem [flags]
     
    Flags: Flags:
    --feature string     Feature --feature string Feature
    -h, --help               help for defeatureItem -h, --help help for defeatureItem
    --itemId string      Item id --itemId string Item id
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 92 - getLocaleItem
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getLocaleItem [flags] sample-apps Platform getLocaleItem [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    -h, --help               help for getLocaleItem -h, --help help for getLocaleItem
    --itemId string      Item id --itemId string Item id
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --populateBundle     Populate bundle --populateBundle Populate bundle
    --region string      Region --region string Region
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 93 returnItem
not ok 94 - queryKeyGroups
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryKeyGroups [flags] sample-apps Platform queryKeyGroups [flags]
     
    Flags: Flags:
    -h, --help               help for queryKeyGroups -h, --help help for queryKeyGroups
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --name string        Name --name string Name
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --tag string         Tag --tag string Tag
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 95 - createKeyGroup
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createKeyGroup [flags] sample-apps Platform createKeyGroup [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createKeyGroup -h, --help help for createKeyGroup
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 96 - getKeyGroup
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getKeyGroup [flags] sample-apps Platform getKeyGroup [flags]
     
    Flags: Flags:
    -h, --help                help for getKeyGroup -h, --help help for getKeyGroup
    --keyGroupId string   Key group id --keyGroupId string Key group id
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 97 - updateKeyGroup
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateKeyGroup [flags] sample-apps Platform updateKeyGroup [flags]
     
    Flags: Flags:
    --body string         Body --body string Body
    -h, --help                help for updateKeyGroup -h, --help help for updateKeyGroup
    --keyGroupId string   Key group id --keyGroupId string Key group id
    --namespace string    Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 98 getKeyGroupDynamic
not ok 99 - listKeys
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform listKeys [flags] sample-apps Platform listKeys [flags]
     
    Flags: Flags:
    -h, --help                help for listKeys -h, --help help for listKeys
    --keyGroupId string   Key group id --keyGroupId string Key group id
    --limit int32         Limit (default 20) --limit int32 Limit (default 20)
    --namespace string    Namespace --namespace string Namespace
    --offset int32        Offset --offset int32 Offset
    --status string       Status --status string Status
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 100 - uploadKeys
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1389e29] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1389e29]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/keyGroup.glob..func7(0x2c8b7c0, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/keyGroup.glob..func7(0x2c8b7c0, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/keyGroup/uploadKeys.go:29 +0xe9 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/keyGroup/uploadKeys.go:29 +0xe9
    github.com/spf13/cobra.(*Command).execute(0x2c8b7c0, {0xc00036e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c8b7c0, {0xc00036e420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 101 - queryOrders
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryOrders [flags] sample-apps Platform queryOrders [flags]
     
    Flags: Flags:
    --endTime string     End time --endTime string End time
    -h, --help               help for queryOrders -h, --help help for queryOrders
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --orderNos string    Order nos --orderNos string Order nos
    --sortBy string      Sort by --sortBy string Sort by
    --startTime string   Start time --startTime string Start time
    --status string      Status --status string Status
    --withTotal          With total --withTotal With total
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 102 getOrderStatistics
not ok 103 - getOrder
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getOrder [flags] sample-apps Platform getOrder [flags]
     
    Flags: Flags:
    -h, --help               help for getOrder -h, --help help for getOrder
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 104 - refundOrder
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform refundOrder [flags] sample-apps Platform refundOrder [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for refundOrder -h, --help help for refundOrder
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 105 getPaymentCallbackConfig
ok 106 updatePaymentCallbackConfig
not ok 107 - queryPaymentNotifications
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryPaymentNotifications [flags] sample-apps Platform queryPaymentNotifications [flags]
     
    Flags: Flags:
    --endDate string              End date --endDate string End date
    --externalId string           External id --externalId string External id
    -h, --help                        help for queryPaymentNotifications -h, --help help for queryPaymentNotifications
    --limit int32                 Limit (default 20) --limit int32 Limit (default 20)
    --namespace string            Namespace --namespace string Namespace
    --notificationSource string   Notification source --notificationSource string Notification source
    --notificationType string     Notification type --notificationType string Notification type
    --offset int32                Offset --offset int32 Offset
    --paymentOrderNo string       Payment order no --paymentOrderNo string Payment order no
    --startDate string            Start date --startDate string Start date
    --status string               Status --status string Status
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 108 - queryPaymentOrders
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryPaymentOrders [flags] sample-apps Platform queryPaymentOrders [flags]
     
    Flags: Flags:
    --channel string     Channel --channel string Channel
    --extTxId string     Ext tx id --extTxId string Ext tx id
    -h, --help               help for queryPaymentOrders -h, --help help for queryPaymentOrders
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --status string      Status --status string Status
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 109 - createPaymentOrderByDedicated
  ---
  error: |-
    time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:19+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:19+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createPaymentOrderByDedicated [flags] sample-apps Platform createPaymentOrderByDedicated [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createPaymentOrderByDedicated -h, --help help for createPaymentOrderByDedicated
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 110 listExtOrderNoByExtTxId
not ok 111 - getPaymentOrder
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getPaymentOrder [flags] sample-apps Platform getPaymentOrder [flags]
     
    Flags: Flags:
    -h, --help                    help for getPaymentOrder -h, --help help for getPaymentOrder
    --namespace string        Namespace --namespace string Namespace
    --paymentOrderNo string   Payment order no --paymentOrderNo string Payment order no
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 112 - chargePaymentOrder
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform chargePaymentOrder [flags] sample-apps Platform chargePaymentOrder [flags]
     
    Flags: Flags:
    --body string             Body --body string Body
    -h, --help                    help for chargePaymentOrder -h, --help help for chargePaymentOrder
    --namespace string        Namespace --namespace string Namespace
    --paymentOrderNo string   Payment order no --paymentOrderNo string Payment order no
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 113 - refundPaymentOrderByDedicated
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform refundPaymentOrderByDedicated [flags] sample-apps Platform refundPaymentOrderByDedicated [flags]
     
    Flags: Flags:
    --body string             Body --body string Body
    -h, --help                    help for refundPaymentOrderByDedicated -h, --help help for refundPaymentOrderByDedicated
    --namespace string        Namespace --namespace string Namespace
    --paymentOrderNo string   Payment order no --paymentOrderNo string Payment order no
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 114 simulatePaymentOrderNotification
ok 115 getPaymentOrderChargeStatus
ok 116 createReward
ok 117 queryRewards
ok 118 exportRewards
not ok 119 - importRewards
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a0595] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a0595]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/reward.glob..func8(0x2c99640, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/reward.glob..func8(0x2c99640, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/reward/importRewards.go:29 +0xd5 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/reward/importRewards.go:29 +0xd5
    github.com/spf13/cobra.(*Command).execute(0x2c99640, {0xc00035c420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c99640, {0xc00035c420, 0x6, 0x6})
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
not ok 124 - listStores
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response []" time="2022-02-09T16:05:20+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform listStores [flags] sample-apps Platform listStores [flags]
     
    Flags: Flags:
    -h, --help               help for listStores -h, --help help for listStores
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 125 - createStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createStore [flags] sample-apps Platform createStore [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createStore -h, --help help for createStore
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 126 - importStore
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a2f96] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13a2f96]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/store.glob..func9(0x2c9b940, {0x19e45e1, 0x6, 0x6}) github.com/AccelByte/sample-apps/cmd/platform/store.glob..func9(0x2c9b940, {0x19e45e1, 0x6, 0x6})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/store/importStore.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/store/importStore.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c9b940, {0xc00035e420, 0x6, 0x6}) github.com/spf13/cobra.(*Command).execute(0x2c9b940, {0xc00035e420, 0x6, 0x6})
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:852 +0x60e
    github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0) github.com/spf13/cobra.(*Command).ExecuteC(0x2bfe3c0)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:960 +0x3ad
    github.com/spf13/cobra.(*Command).Execute(...) github.com/spf13/cobra.(*Command).Execute(...)
    /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897 /home/ruli/go/pkg/mod/github.com/spf13/cobra@v1.1.3/command.go:897
    github.com/AccelByte/sample-apps/cmd.Execute() github.com/AccelByte/sample-apps/cmd.Execute()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/root.go:56 +0x25
    main.main() main.main()
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/main.go:103 +0x4b6
not ok 127 - getPublishedStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getPublishedStore [flags] sample-apps Platform getPublishedStore [flags]
     
    Flags: Flags:
    -h, --help               help for getPublishedStore -h, --help help for getPublishedStore
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 128 - deletePublishedStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform deletePublishedStore [flags] sample-apps Platform deletePublishedStore [flags]
     
    Flags: Flags:
    -h, --help               help for deletePublishedStore -h, --help help for deletePublishedStore
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 129 - getPublishedStoreBackup
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getPublishedStoreBackup [flags] sample-apps Platform getPublishedStoreBackup [flags]
     
    Flags: Flags:
    -h, --help               help for getPublishedStoreBackup -h, --help help for getPublishedStoreBackup
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 130 - rollbackPublishedStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform rollbackPublishedStore [flags] sample-apps Platform rollbackPublishedStore [flags]
     
    Flags: Flags:
    -h, --help               help for rollbackPublishedStore -h, --help help for rollbackPublishedStore
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 131 - getStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getStore [flags] sample-apps Platform getStore [flags]
     
    Flags: Flags:
    -h, --help               help for getStore -h, --help help for getStore
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 132 - updateStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateStore [flags] sample-apps Platform updateStore [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateStore -h, --help help for updateStore
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 133 - deleteStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform deleteStore [flags] sample-apps Platform deleteStore [flags]
     
    Flags: Flags:
    -h, --help               help for deleteStore -h, --help help for deleteStore
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 134 - cloneStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform cloneStore [flags] sample-apps Platform cloneStore [flags]
     
    Flags: Flags:
    -h, --help                   help for cloneStore -h, --help help for cloneStore
    --namespace string       Namespace --namespace string Namespace
    --storeId string         Store id --storeId string Store id
    --targetStoreId string   Target store id --targetStoreId string Target store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 135 - exportStore
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=error msg="no consumer: "application/zip"" time="2022-02-09T16:05:20+07:00" level=error msg="no consumer: "application/zip""
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
not ok 136 - querySubscriptions
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform querySubscriptions [flags] sample-apps Platform querySubscriptions [flags]
     
    Flags: Flags:
    --chargeStatus string   Charge status --chargeStatus string Charge status
    -h, --help                  help for querySubscriptions -h, --help help for querySubscriptions
    --itemId string         Item id --itemId string Item id
    --limit int32           Limit (default 20) --limit int32 Limit (default 20)
    --namespace string      Namespace --namespace string Namespace
    --offset int32          Offset --offset int32 Offset
    --sku string            Sku --sku string Sku
    --status string         Status --status string Status
    --subscribedBy string   Subscribed by --subscribedBy string Subscribed by
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 151 - grantUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response []" time="2022-02-09T16:05:20+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform grantUserEntitlement [flags] sample-apps Platform grantUserEntitlement [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for grantUserEntitlement -h, --help help for grantUserEntitlement
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 152 - getUserAppEntitlementByAppId
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserAppEntitlementByAppId [flags] sample-apps Platform getUserAppEntitlementByAppId [flags]
     
    Flags: Flags:
    --activeOnly         Active only --activeOnly Active only
    --appId string       App id --appId string App id
    -h, --help               help for getUserAppEntitlementByAppId -h, --help help for getUserAppEntitlementByAppId
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 153 queryUserEntitlementsByAppType
not ok 154 - getUserEntitlementByItemId
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserEntitlementByItemId [flags] sample-apps Platform getUserEntitlementByItemId [flags]
     
    Flags: Flags:
    --activeOnly                Active only --activeOnly Active only
    --entitlementClazz string   Entitlement clazz --entitlementClazz string Entitlement clazz
    -h, --help                      help for getUserEntitlementByItemId -h, --help help for getUserEntitlementByItemId
    --itemId string             Item id --itemId string Item id
    --namespace string          Namespace --namespace string Namespace
    --userId string             User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 155 - getUserEntitlementBySku
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserEntitlementBySku [flags] sample-apps Platform getUserEntitlementBySku [flags]
     
    Flags: Flags:
    --activeOnly                Active only --activeOnly Active only
    --entitlementClazz string   Entitlement clazz --entitlementClazz string Entitlement clazz
    -h, --help                      help for getUserEntitlementBySku -h, --help help for getUserEntitlementBySku
    --namespace string          Namespace --namespace string Namespace
    --sku string                Sku --sku string Sku
    --userId string             User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 156 existsAnyUserActiveEntitlement
ok 157 existsAnyUserActiveEntitlementByItemIds
ok 158 getUserAppEntitlementOwnershipByAppId
ok 159 getUserEntitlementOwnershipByItemId
ok 160 getUserEntitlementOwnershipBySku
ok 161 revokeUserEntitlements
not ok 162 - getUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserEntitlement [flags] sample-apps Platform getUserEntitlement [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for getUserEntitlement -h, --help help for getUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 163 - updateUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:20+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:20+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateUserEntitlement [flags] sample-apps Platform updateUserEntitlement [flags]
     
    Flags: Flags:
    --body string            Body --body string Body
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for updateUserEntitlement -h, --help help for updateUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 164 - consumeUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform consumeUserEntitlement [flags] sample-apps Platform consumeUserEntitlement [flags]
     
    Flags: Flags:
    --body string            Body --body string Body
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for consumeUserEntitlement -h, --help help for consumeUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 165 - disableUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform disableUserEntitlement [flags] sample-apps Platform disableUserEntitlement [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for disableUserEntitlement -h, --help help for disableUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 166 - enableUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform enableUserEntitlement [flags] sample-apps Platform enableUserEntitlement [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for enableUserEntitlement -h, --help help for enableUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 167 - getUserEntitlementHistories
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response []" time="2022-02-09T16:05:21+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserEntitlementHistories [flags] sample-apps Platform getUserEntitlementHistories [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for getUserEntitlementHistories -h, --help help for getUserEntitlementHistories
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 168 - revokeUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform revokeUserEntitlement [flags] sample-apps Platform revokeUserEntitlement [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for revokeUserEntitlement -h, --help help for revokeUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 169 fulfillItem
ok 170 redeemCode
ok 171 fulfillRewards
not ok 172 - queryUserIAPOrders
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryUserIAPOrders [flags] sample-apps Platform queryUserIAPOrders [flags]
     
    Flags: Flags:
    --endTime string     End time --endTime string End time
    -h, --help               help for queryUserIAPOrders -h, --help help for queryUserIAPOrders
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --productId string   Product id --productId string Product id
    --startTime string   Start time --startTime string Start time
    --status string      Status --status string Status
    --type string        Type --type string Type
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 173 - queryAllUserIAPOrders
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryAllUserIAPOrders [flags] sample-apps Platform queryAllUserIAPOrders [flags]
     
    Flags: Flags:
    -h, --help               help for queryAllUserIAPOrders -h, --help help for queryAllUserIAPOrders
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 174 mockFulfillIAPItem
not ok 175 - queryUserOrders
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryUserOrders [flags] sample-apps Platform queryUserOrders [flags]
     
    Flags: Flags:
    -h, --help               help for queryUserOrders -h, --help help for queryUserOrders
    --itemId string      Item id --itemId string Item id
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --status string      Status --status string Status
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 176 countOfPurchasedItem
not ok 177 - getUserOrder
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserOrder [flags] sample-apps Platform getUserOrder [flags]
     
    Flags: Flags:
    -h, --help               help for getUserOrder -h, --help help for getUserOrder
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 178 - updateUserOrderStatus
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateUserOrderStatus [flags] sample-apps Platform updateUserOrderStatus [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateUserOrderStatus -h, --help help for updateUserOrderStatus
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 179 - fulfillUserOrder
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform fulfillUserOrder [flags] sample-apps Platform fulfillUserOrder [flags]
     
    Flags: Flags:
    -h, --help               help for fulfillUserOrder -h, --help help for fulfillUserOrder
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 180 getUserOrderGrant
not ok 181 - getUserOrderHistories
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response []" time="2022-02-09T16:05:21+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserOrderHistories [flags] sample-apps Platform getUserOrderHistories [flags]
     
    Flags: Flags:
    -h, --help               help for getUserOrderHistories -h, --help help for getUserOrderHistories
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 182 processUserOrderNotification
not ok 183 - downloadUserOrderReceipt
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=error msg="no consumer: "application/pdf"" time="2022-02-09T16:05:21+07:00" level=error msg="no consumer: "application/pdf""
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
not ok 184 - createUserPaymentOrder
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform createUserPaymentOrder [flags] sample-apps Platform createUserPaymentOrder [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createUserPaymentOrder -h, --help help for createUserPaymentOrder
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 185 - refundUserPaymentOrder
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform refundUserPaymentOrder [flags] sample-apps Platform refundUserPaymentOrder [flags]
     
    Flags: Flags:
    --body string             Body --body string Body
    -h, --help                    help for refundUserPaymentOrder -h, --help help for refundUserPaymentOrder
    --namespace string        Namespace --namespace string Namespace
    --paymentOrderNo string   Payment order no --paymentOrderNo string Payment order no
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 186 applyUserRedemption
not ok 187 - queryUserSubscriptions
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryUserSubscriptions [flags] sample-apps Platform queryUserSubscriptions [flags]
     
    Flags: Flags:
    --chargeStatus string   Charge status --chargeStatus string Charge status
    -h, --help                  help for queryUserSubscriptions -h, --help help for queryUserSubscriptions
    --itemId string         Item id --itemId string Item id
    --limit int32           Limit (default 20) --limit int32 Limit (default 20)
    --namespace string      Namespace --namespace string Namespace
    --offset int32          Offset --offset int32 Offset
    --sku string            Sku --sku string Sku
    --status string         Status --status string Status
    --subscribedBy string   Subscribed by --subscribedBy string Subscribed by
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 188 - getUserSubscriptionActivities
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserSubscriptionActivities [flags] sample-apps Platform getUserSubscriptionActivities [flags]
     
    Flags: Flags:
    --excludeSystem           Exclude system --excludeSystem Exclude system
    -h, --help                    help for getUserSubscriptionActivities -h, --help help for getUserSubscriptionActivities
    --limit int32             Limit (default 20) --limit int32 Limit (default 20)
    --namespace string        Namespace --namespace string Namespace
    --offset int32            Offset --offset int32 Offset
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 189 - platformSubscribeSubscription
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform platformSubscribeSubscription [flags] sample-apps Platform platformSubscribeSubscription [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for platformSubscribeSubscription -h, --help help for platformSubscribeSubscription
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 190 checkUserSubscriptionSubscribableByItemId
not ok 191 - getUserSubscription
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserSubscription [flags] sample-apps Platform getUserSubscription [flags]
     
    Flags: Flags:
    -h, --help                    help for getUserSubscription -h, --help help for getUserSubscription
    --namespace string        Namespace --namespace string Namespace
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 192 deleteUserSubscription
not ok 193 - cancelSubscription
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform cancelSubscription [flags] sample-apps Platform cancelSubscription [flags]
     
    Flags: Flags:
    --body string             Body --body string Body
    --force                   Force --force Force
    -h, --help                    help for cancelSubscription -h, --help help for cancelSubscription
    --namespace string        Namespace --namespace string Namespace
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 194 - grantDaysToSubscription
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform grantDaysToSubscription [flags] sample-apps Platform grantDaysToSubscription [flags]
     
    Flags: Flags:
    --body string             Body --body string Body
    -h, --help                    help for grantDaysToSubscription -h, --help help for grantDaysToSubscription
    --namespace string        Namespace --namespace string Namespace
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 195 - getUserSubscriptionBillingHistories
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserSubscriptionBillingHistories [flags] sample-apps Platform getUserSubscriptionBillingHistories [flags]
     
    Flags: Flags:
    --excludeFree             Exclude free --excludeFree Exclude free
    -h, --help                    help for getUserSubscriptionBillingHistories -h, --help help for getUserSubscriptionBillingHistories
    --limit int32             Limit (default 20) --limit int32 Limit (default 20)
    --namespace string        Namespace --namespace string Namespace
    --offset int32            Offset --offset int32 Offset
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 196 processUserSubscriptionNotification
ok 197 acquireUserTicket
ok 198 checkWallet
not ok 199 - creditUserWallet
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform creditUserWallet [flags] sample-apps Platform creditUserWallet [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for creditUserWallet -h, --help help for creditUserWallet
    --namespace string      Namespace --namespace string Namespace
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 200 - payWithUserWallet
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform payWithUserWallet [flags] sample-apps Platform payWithUserWallet [flags]
     
    Flags: Flags:
    --body string           Body --body string Body
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for payWithUserWallet -h, --help help for payWithUserWallet
    --namespace string      Namespace --namespace string Namespace
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 201 - getUserWallet
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getUserWallet [flags] sample-apps Platform getUserWallet [flags]
     
    Flags: Flags:
    -h, --help               help for getUserWallet -h, --help help for getUserWallet
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
    --walletId string    Wallet id --walletId string Wallet id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 202 - debitUserWallet
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform debitUserWallet [flags] sample-apps Platform debitUserWallet [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for debitUserWallet -h, --help help for debitUserWallet
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
    --walletId string    Wallet id --walletId string Wallet id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 203 disableUserWallet
ok 204 enableUserWallet
not ok 205 - listUserWalletTransactions
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform listUserWalletTransactions [flags] sample-apps Platform listUserWalletTransactions [flags]
     
    Flags: Flags:
    -h, --help               help for listUserWalletTransactions -h, --help help for listUserWalletTransactions
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --userId string      User id --userId string User id
    --walletId string    Wallet id --walletId string Wallet id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 206 - queryWallets
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform queryWallets [flags] sample-apps Platform queryWallets [flags]
     
    Flags: Flags:
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for queryWallets -h, --help help for queryWallets
    --limit int32           Limit (default 20) --limit int32 Limit (default 20)
    --namespace string      Namespace --namespace string Namespace
    --offset int32          Offset --offset int32 Offset
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 207 - getWallet
  ---
  error: |-
    time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:21+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:21+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getWallet [flags] sample-apps Platform getWallet [flags]
     
    Flags: Flags:
    -h, --help               help for getWallet -h, --help help for getWallet
    --namespace string   Namespace --namespace string Namespace
    --walletId string    Wallet id --walletId string Wallet id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 208 syncOrders
ok 209 testAdyenConfig
ok 210 testAliPayConfig
ok 211 testCheckoutConfig
not ok 212 - debugMatchedPaymentMerchantConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform debugMatchedPaymentMerchantConfig [flags] sample-apps Platform debugMatchedPaymentMerchantConfig [flags]
     
    Flags: Flags:
    -h, --help               help for debugMatchedPaymentMerchantConfig -h, --help help for debugMatchedPaymentMerchantConfig
    --namespace string   Namespace --namespace string Namespace
    --region string      Region --region string Region
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 213 testPayPalConfig
ok 214 testStripeConfig
ok 215 testWxPayConfig
ok 216 testXsollaConfig
not ok 217 - getPaymentMerchantConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform getPaymentMerchantConfig [flags] sample-apps Platform getPaymentMerchantConfig [flags]
     
    Flags: Flags:
    -h, --help        help for getPaymentMerchantConfig -h, --help help for getPaymentMerchantConfig
    --id string   Id --id string Id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 218 - updateAdyenConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateAdyenConfig [flags] sample-apps Platform updateAdyenConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateAdyenConfig -h, --help help for updateAdyenConfig
    --id string     Id --id string Id
    --sandbox       Sandbox --sandbox Sandbox
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 219 testAdyenConfigById
not ok 220 - updateAliPayConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateAliPayConfig [flags] sample-apps Platform updateAliPayConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateAliPayConfig -h, --help help for updateAliPayConfig
    --id string     Id --id string Id
    --sandbox       Sandbox --sandbox Sandbox
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 221 testAliPayConfigById
not ok 222 - updateCheckoutConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateCheckoutConfig [flags] sample-apps Platform updateCheckoutConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateCheckoutConfig -h, --help help for updateCheckoutConfig
    --id string     Id --id string Id
    --sandbox       Sandbox --sandbox Sandbox
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 223 testCheckoutConfigById
not ok 224 - updatePayPalConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updatePayPalConfig [flags] sample-apps Platform updatePayPalConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updatePayPalConfig -h, --help help for updatePayPalConfig
    --id string     Id --id string Id
    --sandbox       Sandbox --sandbox Sandbox
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 225 testPayPalConfigById
not ok 226 - updateStripeConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateStripeConfig [flags] sample-apps Platform updateStripeConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateStripeConfig -h, --help help for updateStripeConfig
    --id string     Id --id string Id
    --sandbox       Sandbox --sandbox Sandbox
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 227 testStripeConfigById
not ok 228 - updateWxPayConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateWxPayConfig [flags] sample-apps Platform updateWxPayConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateWxPayConfig -h, --help help for updateWxPayConfig
    --id string     Id --id string Id
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 229 - updateWxPayConfigCert
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1399ef6] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x1399ef6]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/paymentConfig.glob..func32(0x2c94b40, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/paymentConfig.glob..func32(0x2c94b40, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentConfig/updateWxPayConfigCert.go:28 +0xb6 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentConfig/updateWxPayConfigCert.go:28 +0xb6
    github.com/spf13/cobra.(*Command).execute(0x2c94b40, {0xc0005a93c0, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c94b40, {0xc0005a93c0, 0x4, 0x4})
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
not ok 231 - updateXsollaConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateXsollaConfig [flags] sample-apps Platform updateXsollaConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateXsollaConfig -h, --help help for updateXsollaConfig
    --id string     Id --id string Id
    --validate      Validate --validate Validate
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 232 testXsollaConfigById
not ok 233 - updateXsollaUIConfig
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform updateXsollaUIConfig [flags] sample-apps Platform updateXsollaUIConfig [flags]
     
    Flags: Flags:
    --body string   Body --body string Body
    -h, --help          help for updateXsollaUIConfig -h, --help help for updateXsollaUIConfig
    --id string     Id --id string Id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 244 - publicGetRootCategories
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response []" time="2022-02-09T16:05:22+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetRootCategories [flags] sample-apps Platform publicGetRootCategories [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetRootCategories -h, --help help for publicGetRootCategories
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 245 - downloadCategories
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response []" time="2022-02-09T16:05:22+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform downloadCategories [flags] sample-apps Platform downloadCategories [flags]
     
    Flags: Flags:
    -h, --help               help for downloadCategories -h, --help help for downloadCategories
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 246 - publicGetCategory
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetCategory [flags] sample-apps Platform publicGetCategory [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for publicGetCategory -h, --help help for publicGetCategory
    --language string       Language --language string Language
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 247 - publicGetChildCategories
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response []" time="2022-02-09T16:05:22+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetChildCategories [flags] sample-apps Platform publicGetChildCategories [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for publicGetChildCategories -h, --help help for publicGetChildCategories
    --language string       Language --language string Language
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 248 - publicGetDescendantCategories
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response []" time="2022-02-09T16:05:22+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetDescendantCategories [flags] sample-apps Platform publicGetDescendantCategories [flags]
     
    Flags: Flags:
    --categoryPath string   Category path --categoryPath string Category path
    -h, --help                  help for publicGetDescendantCategories -h, --help help for publicGetDescendantCategories
    --language string       Language --language string Language
    --namespace string      Namespace --namespace string Namespace
    --storeId string        Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 249 - publicListCurrencies
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response []" time="2022-02-09T16:05:22+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicListCurrencies [flags] sample-apps Platform publicListCurrencies [flags]
     
    Flags: Flags:
    -h, --help               help for publicListCurrencies -h, --help help for publicListCurrencies
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 250 - publicGetItemByAppId
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetItemByAppId [flags] sample-apps Platform publicGetItemByAppId [flags]
     
    Flags: Flags:
    --appId string       App id --appId string App id
    -h, --help               help for publicGetItemByAppId -h, --help help for publicGetItemByAppId
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --region string      Region --region string Region
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 251 - publicQueryItems
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicQueryItems [flags] sample-apps Platform publicQueryItems [flags]
     
    Flags: Flags:
    --appType string        App type --appType string App type
    --baseAppId string      Base app id --baseAppId string Base app id
    --categoryPath string   Category path --categoryPath string Category path
    --features string       Features --features string Features
    -h, --help                  help for publicQueryItems -h, --help help for publicQueryItems
    --itemType string       Item type --itemType string Item type
    --language string       Language --language string Language
    --limit int32           Limit (default 20) --limit int32 Limit (default 20)
    --namespace string      Namespace --namespace string Namespace
    --offset int32          Offset --offset int32 Offset
    --region string         Region --region string Region
    --sortBy string         Sort by --sortBy string Sort by
    --storeId string        Store id --storeId string Store id
    --tags string           Tags --tags string Tags
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 252 - publicGetItemBySku
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetItemBySku [flags] sample-apps Platform publicGetItemBySku [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetItemBySku -h, --help help for publicGetItemBySku
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --region string      Region --region string Region
    --sku string         Sku --sku string Sku
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 253 - publicBulkGetItems
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response []" time="2022-02-09T16:05:22+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicBulkGetItems [flags] sample-apps Platform publicBulkGetItems [flags]
     
    Flags: Flags:
    -h, --help               help for publicBulkGetItems -h, --help help for publicBulkGetItems
    --itemIds string     Item ids --itemIds string Item ids
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --region string      Region --region string Region
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 254 - publicSearchItems
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicSearchItems [flags] sample-apps Platform publicSearchItems [flags]
     
    Flags: Flags:
    -h, --help               help for publicSearchItems -h, --help help for publicSearchItems
    --keyword string     Keyword --keyword string Keyword
    --language string    Language --language string Language
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --region string      Region --region string Region
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 255 publicGetApp
ok 256 publicGetItemDynamicData
not ok 257 - publicGetItem
  ---
  error: |-
    time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:22+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:22+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetItem [flags] sample-apps Platform publicGetItem [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetItem -h, --help help for publicGetItem
    --itemId string      Item id --itemId string Item id
    --language string    Language --language string Language
    --namespace string   Namespace --namespace string Namespace
    --populateBundle     Populate bundle --populateBundle Populate bundle
    --region string      Region --region string Region
    --storeId string     Store id --storeId string Store id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x139da88] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x139da88]
     
    goroutine 1 [running]: goroutine 1 [running]:
    github.com/AccelByte/sample-apps/cmd/platform/paymentStation.glob..func8(0x2c97ac0, {0x19e45e1, 0x4, 0x4}) github.com/AccelByte/sample-apps/cmd/platform/paymentStation.glob..func8(0x2c97ac0, {0x19e45e1, 0x4, 0x4})
    /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentStation/publicGetQRCode.go:31 +0xe8 /home/ruli/Workspace/Bitbucket/justice-codegen-go-sdk/samples/cli/cmd/platform/paymentStation/publicGetQRCode.go:31 +0xe8
    github.com/spf13/cobra.(*Command).execute(0x2c97ac0, {0xc00052a380, 0x4, 0x4}) github.com/spf13/cobra.(*Command).execute(0x2c97ac0, {0xc00052a380, 0x4, 0x4})
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
not ok 271 - publicListStores
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response []" time="2022-02-09T16:05:23+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicListStores [flags] sample-apps Platform publicListStores [flags]
     
    Flags: Flags:
    -h, --help               help for publicListStores -h, --help help for publicListStores
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 272 publicExistsAnyMyActiveEntitlement
ok 273 publicGetMyAppEntitlementOwnershipByAppId
ok 274 publicGetMyEntitlementOwnershipByItemId
ok 275 publicGetMyEntitlementOwnershipBySku
ok 276 publicGetEntitlementOwnershipToken
not ok 277 - publicGetMyWallet
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetMyWallet [flags] sample-apps Platform publicGetMyWallet [flags]
     
    Flags: Flags:
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for publicGetMyWallet -h, --help help for publicGetMyWallet
    --namespace string      Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 278 publicSyncPsnDlcInventory
ok 279 syncSteamDLC
ok 280 syncXboxDLC
ok 281 publicQueryUserEntitlements
not ok 282 - publicGetUserAppEntitlementByAppId
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserAppEntitlementByAppId [flags] sample-apps Platform publicGetUserAppEntitlementByAppId [flags]
     
    Flags: Flags:
    --appId string       App id --appId string App id
    -h, --help               help for publicGetUserAppEntitlementByAppId -h, --help help for publicGetUserAppEntitlementByAppId
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 283 publicQueryUserEntitlementsByAppType
not ok 284 - publicGetUserEntitlementByItemId
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserEntitlementByItemId [flags] sample-apps Platform publicGetUserEntitlementByItemId [flags]
     
    Flags: Flags:
    --entitlementClazz string   Entitlement clazz --entitlementClazz string Entitlement clazz
    -h, --help                      help for publicGetUserEntitlementByItemId -h, --help help for publicGetUserEntitlementByItemId
    --itemId string             Item id --itemId string Item id
    --namespace string          Namespace --namespace string Namespace
    --userId string             User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 285 - publicGetUserEntitlementBySku
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserEntitlementBySku [flags] sample-apps Platform publicGetUserEntitlementBySku [flags]
     
    Flags: Flags:
    --entitlementClazz string   Entitlement clazz --entitlementClazz string Entitlement clazz
    -h, --help                      help for publicGetUserEntitlementBySku -h, --help help for publicGetUserEntitlementBySku
    --namespace string          Namespace --namespace string Namespace
    --sku string                Sku --sku string Sku
    --userId string             User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 286 publicExistsAnyUserActiveEntitlement
ok 287 publicGetUserAppEntitlementOwnershipByAppId
ok 288 publicGetUserEntitlementOwnershipByItemId
ok 289 publicGetUserEntitlementOwnershipBySku
not ok 290 - publicGetUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserEntitlement [flags] sample-apps Platform publicGetUserEntitlement [flags]
     
    Flags: Flags:
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for publicGetUserEntitlement -h, --help help for publicGetUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 291 - publicConsumeUserEntitlement
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicConsumeUserEntitlement [flags] sample-apps Platform publicConsumeUserEntitlement [flags]
     
    Flags: Flags:
    --body string            Body --body string Body
    --entitlementId string   Entitlement id --entitlementId string Entitlement id
    -h, --help                   help for publicConsumeUserEntitlement -h, --help help for publicConsumeUserEntitlement
    --namespace string       Namespace --namespace string Namespace
    --userId string          User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 292 publicRedeemCode
ok 293 publicFulfillAppleIAPItem
ok 294 syncEpicGamesInventory
ok 295 publicFulfillGoogleIAPItem
ok 296 publicReconcilePlayStationStore
ok 297 syncStadiaEntitlement
ok 298 syncSteamInventory
ok 299 syncXboxInventory
not ok 300 - publicQueryUserOrders
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicQueryUserOrders [flags] sample-apps Platform publicQueryUserOrders [flags]
     
    Flags: Flags:
    -h, --help               help for publicQueryUserOrders -h, --help help for publicQueryUserOrders
    --itemId string      Item id --itemId string Item id
    --limit int32        Limit (default 20) --limit int32 Limit (default 20)
    --namespace string   Namespace --namespace string Namespace
    --offset int32       Offset --offset int32 Offset
    --status string      Status --status string Status
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 301 - publicCreateUserOrder
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicCreateUserOrder [flags] sample-apps Platform publicCreateUserOrder [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for publicCreateUserOrder -h, --help help for publicCreateUserOrder
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 302 - publicGetUserOrder
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserOrder [flags] sample-apps Platform publicGetUserOrder [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserOrder -h, --help help for publicGetUserOrder
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 303 - publicCancelUserOrder
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicCancelUserOrder [flags] sample-apps Platform publicCancelUserOrder [flags]
     
    Flags: Flags:
    -h, --help               help for publicCancelUserOrder -h, --help help for publicCancelUserOrder
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 304 - publicGetUserOrderHistories
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response []" time="2022-02-09T16:05:23+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserOrderHistories [flags] sample-apps Platform publicGetUserOrderHistories [flags]
     
    Flags: Flags:
    -h, --help               help for publicGetUserOrderHistories -h, --help help for publicGetUserOrderHistories
    --namespace string   Namespace --namespace string Namespace
    --orderNo string     Order no --orderNo string Order no
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 305 - publicDownloadUserOrderReceipt
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=error msg="no consumer: "application/pdf"" time="2022-02-09T16:05:23+07:00" level=error msg="no consumer: "application/pdf""
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
not ok 308 - publicQueryUserSubscriptions
  ---
  error: |-
    time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:23+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:23+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicQueryUserSubscriptions [flags] sample-apps Platform publicQueryUserSubscriptions [flags]
     
    Flags: Flags:
    --chargeStatus string   Charge status --chargeStatus string Charge status
    -h, --help                  help for publicQueryUserSubscriptions -h, --help help for publicQueryUserSubscriptions
    --itemId string         Item id --itemId string Item id
    --limit int32           Limit (default 20) --limit int32 Limit (default 20)
    --namespace string      Namespace --namespace string Namespace
    --offset int32          Offset --offset int32 Offset
    --sku string            Sku --sku string Sku
    --status string         Status --status string Status
    --subscribedBy string   Subscribed by --subscribedBy string Subscribed by
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 309 publicSubscribeSubscription
ok 310 publicCheckUserSubscriptionSubscribableByItemId
not ok 311 - publicGetUserSubscription
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserSubscription [flags] sample-apps Platform publicGetUserSubscription [flags]
     
    Flags: Flags:
    -h, --help                    help for publicGetUserSubscription -h, --help help for publicGetUserSubscription
    --namespace string        Namespace --namespace string Namespace
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 312 - publicChangeSubscriptionBillingAccount
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicChangeSubscriptionBillingAccount [flags] sample-apps Platform publicChangeSubscriptionBillingAccount [flags]
     
    Flags: Flags:
    -h, --help                    help for publicChangeSubscriptionBillingAccount -h, --help help for publicChangeSubscriptionBillingAccount
    --namespace string        Namespace --namespace string Namespace
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 313 - publicCancelSubscription
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicCancelSubscription [flags] sample-apps Platform publicCancelSubscription [flags]
     
    Flags: Flags:
    --body string             Body --body string Body
    -h, --help                    help for publicCancelSubscription -h, --help help for publicCancelSubscription
    --namespace string        Namespace --namespace string Namespace
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 314 - publicGetUserSubscriptionBillingHistories
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetUserSubscriptionBillingHistories [flags] sample-apps Platform publicGetUserSubscriptionBillingHistories [flags]
     
    Flags: Flags:
    --excludeFree             Exclude free --excludeFree Exclude free
    -h, --help                    help for publicGetUserSubscriptionBillingHistories -h, --help help for publicGetUserSubscriptionBillingHistories
    --limit int32             Limit (default 20) --limit int32 Limit (default 20)
    --namespace string        Namespace --namespace string Namespace
    --offset int32            Offset --offset int32 Offset
    --subscriptionId string   Subscription id --subscriptionId string Subscription id
    --userId string           User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 315 - publicGetWallet
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicGetWallet [flags] sample-apps Platform publicGetWallet [flags]
     
    Flags: Flags:
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for publicGetWallet -h, --help help for publicGetWallet
    --namespace string      Namespace --namespace string Namespace
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 316 - publicListUserWalletTransactions
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Platform publicListUserWalletTransactions [flags] sample-apps Platform publicListUserWalletTransactions [flags]
     
    Flags: Flags:
    --currencyCode string   Currency code --currencyCode string Currency code
    -h, --help                  help for publicListUserWalletTransactions -h, --help help for publicListUserWalletTransactions
    --limit int32           Limit (default 20) --limit int32 Limit (default 20)
    --namespace string      Namespace --namespace string Namespace
    --offset int32          Offset --offset int32 Offset
    --userId string         User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 4 - adminGetSession
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser adminGetSession [flags] sample-apps Sessionbrowser adminGetSession [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetSession -h, --help help for adminGetSession
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 6 - createSession
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser createSession [flags] sample-apps Sessionbrowser createSession [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for createSession -h, --help help for createSession
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 8 - getSession
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser getSession [flags] sample-apps Sessionbrowser getSession [flags]
     
    Flags: Flags:
    -h, --help               help for getSession -h, --help help for getSession
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 9 - updateSession
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser updateSession [flags] sample-apps Sessionbrowser updateSession [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for updateSession -h, --help help for updateSession
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 10 - deleteSession
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser deleteSession [flags] sample-apps Sessionbrowser deleteSession [flags]
     
    Flags: Flags:
    -h, --help               help for deleteSession -h, --help help for deleteSession
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 11 - joinSession
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser joinSession [flags] sample-apps Sessionbrowser joinSession [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for joinSession -h, --help help for joinSession
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 12 - deleteSessionLocalDS
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser deleteSessionLocalDS [flags] sample-apps Sessionbrowser deleteSessionLocalDS [flags]
     
    Flags: Flags:
    -h, --help               help for deleteSessionLocalDS -h, --help help for deleteSessionLocalDS
    --namespace string   Namespace --namespace string Namespace
    --sessionID string   Session ID --sessionID string Session ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 13 addPlayerToSession
ok 14 removePlayerFromSession
not ok 15 - getRecentPlayer
  ---
  error: |-
    time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:24+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:24+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Sessionbrowser getRecentPlayer [flags] sample-apps Sessionbrowser getRecentPlayer [flags]
     
    Flags: Flags:
    -h, --help               help for getRecentPlayer -h, --help help for getRecentPlayer
    --namespace string   Namespace --namespace string Namespace
    --userID string      User ID --userID string User ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 29 - queryEventStreamHandler
  ---
  error: |-
    time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Eventlog queryEventStreamHandler [flags] sample-apps Eventlog queryEventStreamHandler [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    --endDate string     End date --endDate string End date
    -h, --help               help for queryEventStreamHandler -h, --help help for queryEventStreamHandler
    --namespace string   Namespace --namespace string Namespace
    --offset float       Offset --offset float Offset
    --pageSize float     Page size (default 1) --pageSize float Page size (default 1)
    --startDate string   Start date --startDate string Start date
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 30 - getEventSpecificUserV2Handler
  ---
  error: |-
    time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Eventlog getEventSpecificUserV2Handler [flags] sample-apps Eventlog getEventSpecificUserV2Handler [flags]
     
    Flags: Flags:
    --endDate string     End date --endDate string End date
    --eventName string   Event name --eventName string Event name
    -h, --help               help for getEventSpecificUserV2Handler -h, --help help for getEventSpecificUserV2Handler
    --namespace string   Namespace --namespace string Namespace
    --offset float       Offset --offset float Offset
    --pageSize float     Page size (default 1) --pageSize float Page size (default 1)
    --startDate string   Start date --startDate string Start date
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 31 - getPublicEditHistory
  ---
  error: |-
    time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Eventlog getPublicEditHistory [flags] sample-apps Eventlog getPublicEditHistory [flags]
     
    Flags: Flags:
    --endDate string     End date --endDate string End date
    -h, --help               help for getPublicEditHistory -h, --help help for getPublicEditHistory
    --namespace string   Namespace --namespace string Namespace
    --offset float       Offset --offset float Offset
    --pageSize float     Page size (default 1) --pageSize float Page size (default 1)
    --startDate string   Start date --startDate string Start date
    --type string        Type --type string Type
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 32 - getUserEventsV2Public
  ---
  error: |-
    time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:25+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:25+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Eventlog getUserEventsV2Public [flags] sample-apps Eventlog getUserEventsV2Public [flags]
     
    Flags: Flags:
    --endDate string     End date --endDate string End date
    --eventName string   Event name --eventName string Event name
    -h, --help               help for getUserEventsV2Public -h, --help help for getUserEventsV2Public
    --namespace string   Namespace --namespace string Namespace
    --offset float       Offset --offset float Offset
    --pageSize float     Page size (default 1) --pageSize float Page size (default 1)
    --startDate string   Start date --startDate string Start date
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 3 - listServer
  ---
  error: |-
    time="2022-02-09T16:05:28+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:28+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:28+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:28+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Qosm listServer [flags] sample-apps Qosm listServer [flags]
     
    Flags: Flags:
    -h, --help   help for listServer -h, --help help for listServer
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 24 - getUserInfoStatus
  ---
  error: |-
    time="2022-02-09T16:05:29+07:00" level=info msg="Response []" time="2022-02-09T16:05:29+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Legal getUserInfoStatus [flags] sample-apps Legal getUserInfoStatus [flags]
     
    Flags: Flags:
    -h, --help                help for getUserInfoStatus -h, --help help for getUserInfoStatus
    --namespaces string   Namespaces --namespaces string Namespaces
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
not ok 9 - querySessionHandler
  ---
  error: |-
    time="2022-02-09T16:05:29+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:29+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Matchmaking querySessionHandler [flags] sample-apps Matchmaking querySessionHandler [flags]
     
    Flags: Flags:
    -h, --help               help for querySessionHandler -h, --help help for querySessionHandler
    --matchID string     Match ID --matchID string Match ID
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 10 updatePlayTimeWeight
ok 11 getAllPartyInAllChannel
not ok 12 - bulkGetSessions
  ---
  error: |-
    time="2022-02-09T16:05:29+07:00" level=info msg="Response []" time="2022-02-09T16:05:29+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Matchmaking bulkGetSessions [flags] sample-apps Matchmaking bulkGetSessions [flags]
     
    Flags: Flags:
    -h, --help               help for bulkGetSessions -h, --help help for bulkGetSessions
    --matchIDs string    Match I ds --matchIDs string Match I ds
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 13 exportChannels
not ok 14 - importChannels
  ---
  error: |-
    panic: runtime error: invalid memory address or nil pointer dereference panic: runtime error: invalid memory address or nil pointer dereference
    [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13460f6] [signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x13460f6]
     
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
not ok 18 - getAllSessionsInChannel
  ---
  error: |-
    time="2022-02-09T16:05:29+07:00" level=info msg="Response []" time="2022-02-09T16:05:29+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:29+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Matchmaking getAllSessionsInChannel [flags] sample-apps Matchmaking getAllSessionsInChannel [flags]
     
    Flags: Flags:
    --channelName string   Channel name --channelName string Channel name
    -h, --help                 help for getAllSessionsInChannel -h, --help help for getAllSessionsInChannel
    --namespace string     Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 19 addUserIntoSessionInChannel
ok 20 deleteSessionInChannel
ok 21 deleteUserFromSessionInChannel
not ok 22 - searchSessions
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Matchmaking searchSessions [flags] sample-apps Matchmaking searchSessions [flags]
     
    Flags: Flags:
    --channel string     Channel --channel string Channel
    --deleted            Deleted --deleted Deleted
    -h, --help               help for searchSessions -h, --help help for searchSessions
    --limit float        Limit (default 20) --limit float Limit (default 20)
    --matchID string     Match ID --matchID string Match ID
    --namespace string   Namespace --namespace string Namespace
    --offset float       Offset --offset float Offset
    --partyID string     Party ID --partyID string Party ID
    --userID string      User ID --userID string User ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
not ok 23 - getSessionHistoryDetailed
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response []" time="2022-02-09T16:05:30+07:00" level=info msg="Response []"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Matchmaking getSessionHistoryDetailed [flags] sample-apps Matchmaking getSessionHistoryDetailed [flags]
     
    Flags: Flags:
    -h, --help               help for getSessionHistoryDetailed -h, --help help for getSessionHistoryDetailed
    --matchID string     Match ID --matchID string Match ID
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 24 publicGetMessages
ok 25 publicGetAllMatchmakingChannel
ok 26 publicGetSingleMatchmakingChannel
not ok 27 - searchSessionsV2
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Matchmaking searchSessionsV2 [flags] sample-apps Matchmaking searchSessionsV2 [flags]
     
    Flags: Flags:
    --channel string     Channel --channel string Channel
    --deleted            Deleted --deleted Deleted
    -h, --help               help for searchSessionsV2 -h, --help help for searchSessionsV2
    --limit float        Limit (default 20) --limit float Limit (default 20)
    --matchID string     Match ID --matchID string Match ID
    --namespace string   Namespace --namespace string Namespace
    --offset float       Offset --offset float Offset
    --partyID string     Party ID --partyID string Party ID
    --userID string      User ID --userID string User ID
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 28 versionCheckHandler
```

```tap
sh/run-go-cli-cloudsave-unit-test.sh

go install github.com/AccelByte/sample-apps
1..30
ok 1 listGameRecordsHandlerV1
not ok 2 - adminGetGameRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave adminGetGameRecordHandlerV1 [flags] sample-apps Cloudsave adminGetGameRecordHandlerV1 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetGameRecordHandlerV1 -h, --help help for adminGetGameRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 3 adminPutGameRecordHandlerV1
ok 4 adminPostGameRecordHandlerV1
ok 5 adminDeleteGameRecordHandlerV1
ok 6 listPlayerRecordHandlerV1 (skipped deprecated)
ok 7 adminRetrievePlayerRecords
not ok 8 - adminGetPlayerRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave adminGetPlayerRecordHandlerV1 [flags] sample-apps Cloudsave adminGetPlayerRecordHandlerV1 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetPlayerRecordHandlerV1 -h, --help help for adminGetPlayerRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 9 adminPutPlayerRecordHandlerV1
ok 10 adminPostPlayerRecordHandlerV1
ok 11 adminDeletePlayerRecordHandlerV1
not ok 12 - adminGetPlayerPublicRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 [flags] sample-apps Cloudsave adminGetPlayerPublicRecordHandlerV1 [flags]
     
    Flags: Flags:
    -h, --help               help for adminGetPlayerPublicRecordHandlerV1 -h, --help help for adminGetPlayerPublicRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 13 adminPutPlayerPublicRecordHandlerV1
ok 14 adminPostPlayerPublicRecordHandlerV1
ok 15 adminDeletePlayerPublicRecordHandlerV1
ok 16 putGameRecordConcurrentHandlerV1
not ok 17 - getGameRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave getGameRecordHandlerV1 [flags] sample-apps Cloudsave getGameRecordHandlerV1 [flags]
     
    Flags: Flags:
    -h, --help               help for getGameRecordHandlerV1 -h, --help help for getGameRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 18 putGameRecordHandlerV1
ok 19 postGameRecordHandlerV1
ok 20 deleteGameRecordHandlerV1
not ok 21 - bulkGetPlayerPublicRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 [flags] sample-apps Cloudsave bulkGetPlayerPublicRecordHandlerV1 [flags]
     
    Flags: Flags:
    --body string        Body --body string Body
    -h, --help               help for bulkGetPlayerPublicRecordHandlerV1 -h, --help help for bulkGetPlayerPublicRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 22 publicDeletePlayerPublicRecordHandlerV1
ok 23 putPlayerPublicRecordConcurrentHandlerV1
not ok 24 - getPlayerRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave getPlayerRecordHandlerV1 [flags] sample-apps Cloudsave getPlayerRecordHandlerV1 [flags]
     
    Flags: Flags:
    -h, --help               help for getPlayerRecordHandlerV1 -h, --help help for getPlayerRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
ok 25 putPlayerRecordHandlerV1
ok 26 postPlayerRecordHandlerV1
ok 27 deletePlayerRecordHandlerV1
not ok 28 - getPlayerPublicRecordHandlerV1
  ---
  error: |-
    time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:30+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"" time="2022-02-09T16:05:30+07:00" level=error msg="parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15""
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
    Usage: Usage:
    sample-apps Cloudsave getPlayerPublicRecordHandlerV1 [flags] sample-apps Cloudsave getPlayerPublicRecordHandlerV1 [flags]
     
    Flags: Flags:
    -h, --help               help for getPlayerPublicRecordHandlerV1 -h, --help help for getPlayerPublicRecordHandlerV1
    --key string         Key --key string Key
    --namespace string   Namespace --namespace string Namespace
    --userId string      User id --userId string User id
     
    Global Flags: Global Flags:
    --config string   config file (default is $HOME/.sample-apps.yaml) --config string config file (default is $HOME/.sample-apps.yaml)
     
    Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15" Error: parsing time "1990-01-01" as "2006-01-02 15:04:05": cannot parse "" as "15"
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
    time="2022-02-09T16:05:31+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:31+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:31+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204: " time="2022-02-09T16:05:31+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/ban returns an error 204: "
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
    time="2022-02-09T16:05:31+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:31+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:31+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204: " time="2022-02-09T16:05:31+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/report returns an error 204: "
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
    time="2022-02-09T16:05:31+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:31+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:31+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204: " time="2022-02-09T16:05:31+07:00" level=error msg="Requested POST /v1/admin/namespaces/{namespace}/actions/unban returns an error 204: "
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
    time="2022-02-09T16:05:32+07:00" level=info msg="Response <nil>" time="2022-02-09T16:05:32+07:00" level=info msg="Response <nil>"
    time="2022-02-09T16:05:32+07:00" level=error msg="Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204: " time="2022-02-09T16:05:32+07:00" level=error msg="Requested POST /v1/public/namespaces/{namespace}/users/{userId}/actions/report returns an error 204: "
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

