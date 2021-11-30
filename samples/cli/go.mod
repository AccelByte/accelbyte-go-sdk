module github.com/AccelByte/sample-apps

go 1.15

replace github.com/AccelByte/accelbyte-go-sdk => ../../

require (
	github.com/AccelByte/accelbyte-go-sdk v0.0.0-00010101000000-000000000000
	github.com/gorilla/websocket v1.4.2
	github.com/mitchellh/go-homedir v1.1.0
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/cobra v1.1.3
	github.com/spf13/viper v1.7.1
)