// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	publicGameRecordService = &cloudsave.PublicGameRecordService{
		Client:          factory.NewCloudsaveClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	key = "sample-player-record"
)

// Creating a game record
func TestIntegrationPostGameRecordHandlerV1(t *testing.T) {
	Init()
	input := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
	}
	err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Deleting a game record
func TestIntegrationDeleteGameRecordHandlerV1(t *testing.T) {
	Init()
	input := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
	}
	err := publicGameRecordService.DeleteGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Getting a game record
func TestIntegrationGetGameRecordHandlerV1(t *testing.T) {
	Init()
	input := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
	}
	err := publicGameRecordService.PostGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputRecord := &public_game_record.GetGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
	}
	ok, errOk := publicGameRecordService.GetGameRecordHandlerV1Short(inputRecord)
	if errOk != nil {
		assert.FailNow(t, errOk.Error())
	}

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a game record
func TestIntegrationPutGameRecordHandlerV1(t *testing.T) {
	Init()
	input := &public_game_record.PutGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
	}
	err := publicGameRecordService.PutGameRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputDelete := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
	}
	errDelete := publicGameRecordService.DeleteGameRecordHandlerV1Short(inputDelete)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.Nil(t, errDelete, "err should be nil")
}
