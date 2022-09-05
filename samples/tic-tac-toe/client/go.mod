module client

go 1.16

replace github.com/AccelByte/accelbyte-go-sdk => ../../../

require (
	github.com/AccelByte/accelbyte-go-sdk v0.0.0-00010101000000-000000000000
	github.com/sirupsen/logrus v1.8.1
)

exclude github.com/AccelByte/accelbyte-go-sdk v1.0.0
