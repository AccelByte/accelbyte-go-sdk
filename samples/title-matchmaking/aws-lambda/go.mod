module aws-lambda

go 1.16

replace github.com/AccelByte/accelbyte-go-sdk => ../../../

require (
	github.com/AccelByte/accelbyte-go-sdk v0.0.0-00010101000000-000000000000
	github.com/aws/aws-lambda-go v1.26.0
	github.com/cenkalti/backoff v2.2.1+incompatible
	github.com/go-redis/redis/v8 v8.11.3
	github.com/golang-jwt/jwt v3.2.2+incompatible
	github.com/google/uuid v1.3.0
)

exclude github.com/AccelByte/accelbyte-go-sdk v1.0.0
