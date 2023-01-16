// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package utils

import (
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestAmazonTraceIDGen(t *testing.T) {
	// ref: https://docs.aws.amazon.com/xray/latest/devguide/xray-api-sendingdata.html#xray-api-traceids
	segmentCount := 3
	epochHexCount := 8
	guidHexCount := 24

	traceID := AmazonTraceIDGen()
	assert.NotEmpty(t, traceID)

	// assert trace id format
	split := strings.Split(traceID, "-")
	assert.Equal(t, segmentCount, len(split))
	assert.NotEmpty(t, split[0])
	assert.Equal(t, epochHexCount, len(split[1]))
	assert.Equal(t, guidHexCount, len(split[2]))
}
