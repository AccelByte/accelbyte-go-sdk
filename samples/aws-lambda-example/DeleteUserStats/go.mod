module main

go 1.16

replace github.com/AccelByte/accelbyte-go-sdk => ../../../

require (
	github.com/AccelByte/accelbyte-go-sdk v0.0.0-00010101000000-000000000000
	github.com/aws/aws-lambda-go v1.32.0
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
)

exclude github.com/AccelByte/accelbyte-go-sdk v1.0.0
