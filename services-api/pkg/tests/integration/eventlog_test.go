// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	eventV2Service = &eventlog.EventV2Service{
		Client:          factory.NewEventlogClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	config   = &integration.ConfigRepositoryImpl{}
	clientId = config.GetClientId()
	offset   = integration.Offset
	date     = ""
	version  = int32(0)
	size     = integration.Size
)

// Getting a set of events
func TestIntegrationQueryEventStreamHandler(t *testing.T) {
	bodyEventLog := &eventlogclientmodels.ModelsGenericQueryPayload{
		ClientID:     &clientId,
		EventName:    &date,
		PayloadQuery: &date,
		SessionID:    &date,
		TraceID:      &date,
		UserID:       &date,
		Version:      &version,
	}
	inputEventLog := &event_v2.QueryEventStreamHandlerParams{
		Body:      bodyEventLog,
		Namespace: integration.Namespace,
		EndDate:   &date,
		Offset:    &offset,
		PageSize:  &size,
		StartDate: &date,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := eventV2Service.QueryEventStreamHandler(inputEventLog)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
