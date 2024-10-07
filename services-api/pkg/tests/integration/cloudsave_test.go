// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	publicGameRecordService = &cloudsave.PublicGameRecordService{
		Client:          factory.NewCloudsaveClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
	}
	publicPlayerRecordService = &cloudsave.PublicPlayerRecordService{
		Client:          factory.NewCloudsaveClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: tokenRepository,
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

	// CASE Update a game record
	keyUpdate := key + "-update"
	inputUpdate := &public_game_record.PutGameRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       keyUpdate,
		Namespace: integration.NamespaceTest,
	}

	okUpdate, errUpdate := publicGameRecordService.PutGameRecordHandlerV1Short(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.Equal(t, keyUpdate, *okUpdate.Key)
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, okUpdate, "response should not be nil")

	inputDel := &public_game_record.DeleteGameRecordHandlerV1Params{
		Key:       keyUpdate,
		Namespace: integration.NamespaceTest,
	}

	errDel := publicGameRecordService.DeleteGameRecordHandlerV1Short(inputDel)
	if errDel != nil {
		assert.FailNow(t, err.Error())
	}
}

func TestIntegrationPlayerRecordHandlerV1(t *testing.T) {
	// Login User - Arrange
	Init()

	userID = GetUserID()

	// CASE Create a player record
	input := &public_player_record.PostPlayerPublicRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       key,
		Namespace: integration.NamespaceTest,
		UserID:    userID,
	}
	ok, err := publicPlayerRecordService.PostPlayerPublicRecordHandlerV1Short(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")

	// CASE Get a player record
	inputRecord := &public_player_record.GetPlayerPublicRecordHandlerV1Params{
		Key:       key,
		Namespace: integration.NamespaceTest,
		UserID:    userID,
	}

	ok, errOk := publicPlayerRecordService.GetPlayerPublicRecordHandlerV1Short(inputRecord)
	if errOk != nil {
		assert.FailNow(t, errOk.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, ok, "err should not be nil")
	assert.Nil(t, errOk, "err should be nil")

	// CASE Put a player record
	keyUpdate := key + "-update"
	inputUpdate := &public_player_record.PutPlayerPublicRecordHandlerV1Params{
		Body:      map[string]interface{}{"foo": "bar"},
		Key:       keyUpdate,
		Namespace: integration.NamespaceTest,
		UserID:    userID,
	}

	okUpdate, errUpdate := publicPlayerRecordService.PutPlayerPublicRecordHandlerV1Short(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	// ESAC

	// Assert
	assert.NotNil(t, okUpdate, "err should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.Equal(t, keyUpdate, *okUpdate.Key)

	// CASE Delete a player record
	inputDelete := &public_player_record.DeletePlayerRecordHandlerV1Params{
		Key:       keyUpdate,
		Namespace: integration.NamespaceTest,
		UserID:    userID,
	}

	errDelete := publicPlayerRecordService.DeletePlayerRecordHandlerV1Short(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	// ESAC

	// Assert
	assert.Nil(t, errDelete, "err should be nil")

	// confirm if player record is deleted
	defer func() {
		inputRecord = &public_player_record.GetPlayerPublicRecordHandlerV1Params{
			Key:       keyUpdate,
			Namespace: integration.NamespaceTest,
			UserID:    userID,
		}

		okGet, errGet := publicPlayerRecordService.GetPlayerPublicRecordHandlerV1Short(inputRecord)

		// Assert
		assert.NotNil(t, errGet, "err should not be nil")
		assert.Nil(t, okGet, "err should be nil")
	}()
}
