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
	config       = &integration.ConfigRepositoryImpl{}
	clientId     = config.GetClientId()
	offset       = integration.Offset
	date         = "1970-01-01T00:00:00Z"
	version      = int32(0)
	size         = integration.Size
	bodyEventLog = &eventlogclientmodels.ModelsGenericQueryPayload{
		ClientID:     &clientId,
		EventName:    &date,
		PayloadQuery: &date,
		SessionID:    &date,
		TraceID:      &date,
		UserID:       &date,
		Version:      &version,
	}
)

// Getting a set of events
func TestIntegrationQueryEventStreamHandler(t *testing.T) {
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

// Getting a set of events
func TestIntegrationGetEventSpecificUserV2Handler(t *testing.T) {
	inputEventLog := &event_v2.GetEventSpecificUserV2HandlerParams{
		Namespace: integration.Namespace,
		UserID:    "16397743a25e47a08112d1c9042cffaf",
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	_, err := eventV2Service.GetEventSpecificUserV2Handler(inputEventLog)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}
