module aws-lambda-functions

go 1.16

require (
	github.com/AccelByte/accelbyte-go-sdk v0.4.0
	github.com/AccelByte/go-restful-plugins/v4 v4.4.1
	github.com/AccelByte/iam-go-sdk v1.7.0
	github.com/aws/aws-lambda-go v1.26.0
	github.com/cenkalti/backoff v2.2.1+incompatible
	github.com/emicklei/go-restful/v3 v3.4.0
	github.com/go-redis/redis/v8 v8.11.3
	github.com/golang-jwt/jwt v3.2.2+incompatible
	github.com/google/uuid v1.3.0
	github.com/json-iterator/go v1.1.11 // indirect
	github.com/patrickmn/go-cache v2.1.0+incompatible
)

exclude github.com/AccelByte/accelbyte-go-sdk v1.0.0
