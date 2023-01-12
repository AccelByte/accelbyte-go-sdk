module github.com/AccelByte/accelbyte-go-sdk

go 1.16

replace github.com/willf/bitset v1.1.11 => github.com/bits-and-blooms/bitset v1.4.0

require (
	github.com/AccelByte/bloom v0.0.0-20180915202807-98c052463922
	github.com/AccelByte/go-jose v2.1.4+incompatible
	github.com/go-openapi/errors v0.20.0
	github.com/go-openapi/runtime v0.19.29
	github.com/go-openapi/strfmt v0.20.1
	github.com/go-openapi/swag v0.19.15
	github.com/go-openapi/validate v0.20.2
	github.com/google/uuid v1.3.0
	github.com/gorilla/websocket v1.4.2
	github.com/pkg/errors v0.9.1
	github.com/sirupsen/logrus v1.8.1
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/stretchr/testify v1.7.0
	github.com/willf/bitset v1.1.11 // indirect
	go.opentelemetry.io/contrib/propagators/aws v1.4.0
)

// Published v1 too early
retract [v1.0.0, v1.0.1]
