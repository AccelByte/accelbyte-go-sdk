module github.com/AccelByte/accelbyte-go-sdk

go 1.18

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
	github.com/stretchr/testify v1.7.0
	go.opentelemetry.io/contrib/propagators/aws v1.4.0
)

require (
	github.com/PuerkitoBio/purell v1.1.1 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/asaskevich/govalidator v0.0.0-20200907205600-7a23bdc65eef // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.2.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-openapi/analysis v0.20.0 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.19.5 // indirect
	github.com/go-openapi/loads v0.20.2 // indirect
	github.com/go-openapi/spec v0.20.3 // indirect
	github.com/go-stack/stack v1.8.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/mailru/easyjson v0.7.6 // indirect
	github.com/mitchellh/mapstructure v1.4.1 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/opentracing/opentracing-go v1.2.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/spaolacci/murmur3 v1.1.0 // indirect
	github.com/stretchr/objx v0.2.0 // indirect
	github.com/willf/bitset v1.1.11 // indirect
	go.mongodb.org/mongo-driver v1.5.1 // indirect
	go.opentelemetry.io/otel v1.4.0 // indirect
	go.opentelemetry.io/otel/sdk v1.4.0 // indirect
	go.opentelemetry.io/otel/trace v1.4.0 // indirect
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9 // indirect
	golang.org/x/net v0.0.0-20210119194325-5f4716e94777 // indirect
	golang.org/x/sys v0.0.0-20210423185535-09eb48e85fd7 // indirect
	golang.org/x/text v0.3.5 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b // indirect
)

// Published v1 too early
retract [v1.0.0, v1.0.1]
