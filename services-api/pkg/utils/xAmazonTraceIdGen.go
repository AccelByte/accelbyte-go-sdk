// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"context"
	"fmt"
	"time"

	"go.opentelemetry.io/contrib/propagators/aws/xray"
)

var (
	xAmazonTraceId string
)

func AmazonTraceIdGen() string {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	gen := xray.NewIDGenerator()
	traceID, _ := gen.NewIDs(ctx)
	traceIDString := traceID.String()
	xRayTraceID := fmt.Sprintf("1-%s-%s", traceIDString[0:8], traceIDString[8:])

	return xRayTraceID
}
