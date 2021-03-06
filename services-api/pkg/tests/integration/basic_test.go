// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/sirupsen/logrus"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	basicURL           = "https://picsum.photos/200"
	timezone           = "Asia/Jakarta"
	basicLanguange     = "en"
	userProfileService = &basic.UserProfileService{
		Client:          factory.NewBasicClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	bodyBasic = &basicclientmodels.UserProfilePrivateCreate{
		AvatarLargeURL: basicURL,
		AvatarSmallURL: basicURL,
		AvatarURL:      basicURL,
		FirstName:      "go",
		Language:       basicLanguange,
		LastName:       "sdk",
		TimeZone:       timezone,
	}
	bodyBasicUpdate = &basicclientmodels.UserProfileUpdate{
		AvatarLargeURL: basicURL,
		AvatarSmallURL: basicURL,
		AvatarURL:      basicURL,
		FirstName:      "goUpdate",
		Language:       basicLanguange,
		LastName:       "sdkUpdate",
		TimeZone:       timezone,
		ZipCode:        emptyString,
	}
)

func TestIntegrationUserProfile(t *testing.T) {
	t.Parallel()
	Init()
	checkProfileExist()

	// Creating a profile
	inputCreate := &user_profile.CreateMyProfileParams{
		Body:      bodyBasic,
		Namespace: integration.NamespaceTest,
	}
	created, errCreate := userProfileService.CreateMyProfileShort(inputCreate)
	if errCreate != nil {
		assert.FailNow(t, errCreate.Error())
	}
	t.Logf("Profile: %v created", created.UserID)

	// Getting a profile
	inputGet := &user_profile.PublicGetUserProfileInfoParams{
		Namespace: integration.NamespaceTest,
		UserID:    created.UserID,
	}
	get, errGet := userProfileService.PublicGetUserProfileInfoShort(inputGet)
	if errGet != nil {
		assert.FailNow(t, errGet.Error())
	}
	t.Logf("Profile: %v get from namespace: %v", get.UserID, get.Namespace)

	// Updating a profile
	inputUpdate := &user_profile.PublicUpdateUserProfileParams{
		Body:      bodyBasicUpdate,
		Namespace: integration.NamespaceTest,
		UserID:    created.UserID,
	}
	updated, errUpdate := userProfileService.PublicUpdateUserProfileShort(inputUpdate)
	if errUpdate != nil {
		assert.FailNow(t, errUpdate.Error())
	}
	t.Logf("Profile: %v updated", updated.UserID)

	// Deleting a profile
	inputDelete := &user_profile.DeleteUserProfileParams{
		Namespace: integration.NamespaceTest,
		UserID:    created.UserID,
	}
	deleted, errDelete := userProfileService.DeleteUserProfileShort(inputDelete)
	if errDelete != nil {
		assert.FailNow(t, errDelete.Error())
	}
	t.Logf("Profile: %v deleted", created.UserID)

	assert.Nil(t, errCreate, "err should be nil")
	assert.NotNil(t, created, "response should not be nil")
	assert.Nil(t, errGet, "err should be nil")
	assert.NotNil(t, get, "response should not be nil")
	assert.Nil(t, errUpdate, "err should be nil")
	assert.NotNil(t, updated, "response should not be nil")
	assert.Nil(t, errDelete, "err should be nil")
	assert.NotNil(t, deleted, "response should not be nil")
}

func checkProfileExist() {
	inputGet := &user_profile.GetMyProfileInfoParams{
		Namespace: integration.NamespaceTest,
	}
	existingProfile, err := userProfileService.GetMyProfileInfoShort(inputGet)
	if err != nil {
		logrus.Error("existing profile not found")
	}
	if existingProfile != nil {
		inputDelete := &user_profile.DeleteUserProfileParams{
			Namespace: integration.NamespaceTest,
			UserID:    existingProfile.UserID,
		}
		deleted, errDelete := userProfileService.DeleteUserProfileShort(inputDelete)
		if errDelete != nil {
			logrus.Error(errDelete.Error())
		}
		logrus.Infof("Existing Profile: %v deleted", deleted.UserID)
	}
}
