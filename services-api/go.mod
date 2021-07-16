module github.com/AccelByte/accelbyte-go-sdk/services-api

go 1.15

replace (
	github.com/AccelByte/accelbyte-go-sdk/basic-sdk => ../basic-sdk
	github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk => ../cloudsave-sdk
	github.com/AccelByte/accelbyte-go-sdk/group-sdk => ../group-sdk
	github.com/AccelByte/accelbyte-go-sdk/iam-sdk => ../iam-sdk
	github.com/AccelByte/accelbyte-go-sdk/lobby-sdk => ../lobby-sdk
	github.com/AccelByte/accelbyte-go-sdk/platform-sdk => ../platform-sdk
	github.com/AccelByte/accelbyte-go-sdk/social-sdk => ../social-sdk
)

require (
	github.com/AccelByte/accelbyte-go-sdk/basic-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/group-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/iam-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/lobby-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/platform-sdk v1.0.0
	github.com/AccelByte/accelbyte-go-sdk/social-sdk v1.0.0
	github.com/go-openapi/runtime v0.19.28
	github.com/go-openapi/strfmt v0.20.1
	github.com/google/uuid v1.1.1
	github.com/gorilla/websocket v1.4.2
	github.com/sirupsen/logrus v1.4.2
	golang.org/x/sys v0.0.0-20210313202042-bd2e13477e9c // indirect
)
