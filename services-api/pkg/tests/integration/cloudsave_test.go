// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	publicGameRecordService = &cloudsave.PublicGameRecordService{
		Client:          factory.NewCloudsaveClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: auth.DefaultTokenRepositoryImpl(),
	}
	key = "sample-player-record"
)

func TestIntegrationPostGameRecordHandlerV1(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a game record
	input := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
	}

	ok, err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, ok, "err should not be nil")
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationDeleteGameRecordHandlerV1(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Delete a game record
	input := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
	}

	err := publicGameRecordService.DeleteGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationGetGameRecordHandlerV1(t *testing.T) {
	// Login User - Arrange
	Init()

	input := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
	}

	post, err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Assert
	assert.NotNil(t, post, "err should not be nil")

	// CASE Get a game record
	inputRecord := &public_game_record.GetGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
	}

	ok, errOk := publicGameRecordService.GetGameRecordHandlerV1Short(inputRecord)
	if errOk != nil {
		assert.FailNow(t, errOk.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationPutGameRecordHandlerV1(t *testing.T) {
	// Login User - Arrange
	Init()

	input := &public_game_record.PutGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
	}

	ok, err := publicGameRecordService.PutGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	// Assert
	assert.NotNil(t, ok, "err should not be nil")
	assert.Nil(t, err, "err should be nil")

	// CASE Update a game record
	inputDelete := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
	}

	errDelete := publicGameRecordService.DeleteGameRecordHandlerV1Short(inputDelete)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")
}
