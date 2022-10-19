// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
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
		Client:          factory.NewEventlogClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	offset       = int64(0)
	date         = "2022-03-23T10:06:40Z"
	version      = int32(0)
	size         = int64(10)
	userID       string
	bodyEventLog = &eventlogclientmodels.ModelsGenericQueryPayload{
		ClientID:     &clientID,
		EventName:    &emptyString,
		PayloadQuery: &emptyInterface,
		SessionID:    &emptyString,
		TraceID:      &emptyString,
		UserID:       &userID,
		Version:      &version,
	}
)

func TestIntegrationQueryEventStreamHandler(t *testing.T) {
	t.Parallel()

	// Login User - Arrange
	userID = GetUserID()

	// CASE Query event stream
	inputEventLog := &event_v2.QueryEventStreamHandlerParams{
		Body:      bodyEventLog,
		Namespace: integration.NamespaceTest,
		EndDate:   &date,
		Offset:    &offset,
		PageSize:  &size,
		StartDate: &date,
	}

	ok, err := eventV2Service.QueryEventStreamHandlerShort(inputEventLog)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationGetEventSpecificUserV2Handler(t *testing.T) {
	t.Parallel()

	// Login User - Arrange
	userID = GetUserID()

	// CASE Get an events
	inputEventLog := &event_v2.GetEventSpecificUserV2HandlerParams{
		EventName: &emptyString,
		Namespace: integration.NamespaceTest,
		Offset:    &offset,
		PageSize:  &size,
		StartDate: &date,
		UserID:    userID,
	}

	ok, err := eventV2Service.GetEventSpecificUserV2HandlerShort(inputEventLog)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "should not nil")
}

// helper
func GetUserID() string {
	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: "password",
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
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

	return accessToken.UserID
}
