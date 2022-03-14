// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	publicGameRecordService = &cloudsave.PublicGameRecordService{
		Client:          factory.NewCloudsaveClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	key        = "sample-player-record"
	bodyRecord *cloudsaveclientmodels.ModelsGameRecordRequest
)

// Creating a game record
func TestIntegrationPostGameRecordHandlerV1(t *testing.T) {
	input := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      bodyRecord,
		Key:       key,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := publicGameRecordService.PostGameRecordHandlerV1(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Deleting a game record
func TestIntegrationDeleteGameRecordHandlerV1(t *testing.T) {
	input := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := publicGameRecordService.DeleteGameRecordHandlerV1(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}

// Getting a game record
//lint:ignore SA1019 Ignore the deprecation warnings
func TestIntegrationGetGameRecordHandlerV1(t *testing.T) {
	input := &public_game_record.PostGameRecordHandlerV1Params{
		Body:      bodyRecord,
		Key:       key,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := publicGameRecordService.PostGameRecordHandlerV1(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	inputRecord := &public_game_record.GetGameRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := publicGameRecordService.GetGameRecordHandlerV1(inputRecord)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a game record
func TestIntegrationPutGameRecordHandlerV1(t *testing.T) {
	input := &public_game_record.PutGameRecordHandlerV1Params{
		Body:      bodyRecord,
		Key:       key,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	err := publicGameRecordService.PutGameRecordHandlerV1(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
}
