// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"context"
	"fmt"
	"go.opentelemetry.io/contrib/propagators/aws/xray"
	"time"
)

var (
	xAmazonTraceId string
)

func AmazonTraceIdGen() string {
	ctx, cancel := context.WithTimeout(context.Background(), 10*time.Second)
	defer cancel()

	gen := xray.NewIDGenerator()
	traceID, spanID := gen.NewIDs(ctx)
	xrayTraceID := traceID.String()
	xTraceID := fmt.Sprintf("1-%s-%s", xrayTraceID[0:8], xrayTraceID[8:])
	xAmazonTraceId = fmt.Sprintf("Root=%v;Parent=%v;Sampled=0", xTraceID, spanID)

	return xAmazonTraceId
}
