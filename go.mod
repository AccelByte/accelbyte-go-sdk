module github.com/AccelByte/accelbyte-go-sdk

go 1.16

require (
	github.com/go-openapi/errors v0.20.0
	github.com/go-openapi/runtime v0.19.29
	github.com/go-openapi/strfmt v0.20.1
	github.com/go-openapi/swag v0.19.15
	github.com/go-openapi/validate v0.20.2
	github.com/google/uuid v1.3.0
	github.com/gorilla/websocket v1.4.2
	github.com/sirupsen/logrus v1.8.1
)

// Published v1 too early
retract [v1.0.0, v1.0.1]
