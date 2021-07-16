module github.com/AccelByte/sample-apps

go 1.15

replace (
	github.com/AccelByte/accelbyte-go-sdk/basic-sdk => ../basic-sdk
	github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk => ../cloudsave-sdk
	github.com/AccelByte/accelbyte-go-sdk/services-api => ./../services-api
	github.com/AccelByte/accelbyte-go-sdk/group-sdk => ../group-sdk
	github.com/AccelByte/accelbyte-go-sdk/iam-sdk => ../iam-sdk
	github.com/AccelByte/accelbyte-go-sdk/lobby-sdk => ../lobby-sdk
	github.com/AccelByte/accelbyte-go-sdk/platform-sdk => ../platform-sdk
	github.com/AccelByte/accelbyte-go-sdk/social-sdk => ../social-sdk
)

require (
	github.com/AccelByte/accelbyte-go-sdk/services-api v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/iam-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/platform-sdk v1.0.0
	github.com/gorilla/websocket v1.4.2
	github.com/mitchellh/go-homedir v1.1.0
	github.com/sirupsen/logrus v1.4.2
	github.com/spf13/cobra v1.1.3
	github.com/spf13/viper v1.7.1
)
