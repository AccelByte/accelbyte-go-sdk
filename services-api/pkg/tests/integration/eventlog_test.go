// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclient/event_v2"
	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/eventlog"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	eventV2Service = &eventlog.EventV2Service{
		Client:          factory.NewEventlogClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	offset       = int64(0)
	date         = "2022-03-23T10:06:40Z"
	version      = int32(0)
	size         = int64(10)
	userId       string
	bodyEventLog = &eventlogclientmodels.ModelsGenericQueryPayload{
		ClientID:     &clientId,
		EventName:    &emptyString,
		PayloadQuery: &emptyInterface,
		SessionID:    &emptyString,
		TraceID:      &emptyString,
		UserID:       &userId,
		Version:      &version,
	}
)

// Getting a set of events
func TestIntegrationQueryEventStreamHandler(t *testing.T) {
	t.Parallel()
	userId = GetUserId()

	inputEventLog := &event_v2.QueryEventStreamHandlerParams{
		Body:      bodyEventLog,
		Namespace: integration.NamespaceTest,
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
	t.Parallel()
	userId = GetUserId()
	inputEventLog := &event_v2.GetEventSpecificUserV2HandlerParams{
		EndDate:   &date,
		EventName: &emptyString,
		Namespace: integration.NamespaceTest,
		Offset:    &offset,
		PageSize:  &size,
		StartDate: &date,
		UserID:    userId,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	_, err := eventV2Service.GetEventSpecificUserV2Handler(inputEventLog)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

func GetUserId() string {
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: "password",
	}
	accessToken, err := oAuth20Service.TokenGrantV3(input)
	if err != nil {
		logrus.Error("failed login")
	} else if accessToken == nil { //lint:ignore SA5011 possible nil pointer dereference
		logrus.Error("empty access token")
	} else {
		errStore := oAuth20Service.TokenRepository.Store(*accessToken)
		if errStore != nil {
			logrus.Error("failed stored the token")
		}
	}
	return *accessToken.UserID
}
