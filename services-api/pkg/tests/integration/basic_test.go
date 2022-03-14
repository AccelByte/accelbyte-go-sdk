// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"fmt"
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
)

var (
	userProfileService = &basic.UserProfileService{
		Client:          factory.NewBasicClient(&integration.ConfigRepositoryImpl{}),
		TokenRepository: &integration.TokenRepositoryImpl{},
	}
	bodyBasic = &basicclientmodels.UserProfilePrivateCreate{
		AvatarLargeURL:          "https://picsum.photos/200",
		AvatarSmallURL:          "https://picsum.photos/200",
		AvatarURL:               "https://picsum.photos/200",
		CustomAttributes:        nil,
		DateOfBirth:             nil,
		FirstName:               "first",
		Language:                "en",
		LastName:                "last",
		PrivateCustomAttributes: nil,
		TimeZone:                "Asia/Jakarta",
	}
)

// Creating a profile
func TestIntegrationCreateMyProfile(t *testing.T) {
	input := &user_profile.CreateMyProfileParams{
		Body:      bodyBasic,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := userProfileService.CreateMyProfile(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	fmt.Printf(ok.UserID)
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Deleting a profile
func TestIntegrationDeleteUserProfile(t *testing.T) {
	input := &user_profile.CreateMyProfileParams{
		Body:      bodyBasic,
		Namespace: integration.Namespace,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	ok, err := userProfileService.CreateMyProfile(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	fmt.Printf(ok.UserID)

	inputValue := &user_profile.DeleteUserProfileParams{
		Namespace: integration.Namespace,
		UserID:    ok.UserID,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := userProfileService.DeleteUserProfile(inputValue)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
	assert.Equal(t, expected, ok, "the response have different values")
}

// Getting a profile
func TestIntegrationPublicGetUserProfileInfo(t *testing.T) {
	input := &user_profile.CreateMyProfileParams{
		Body:      bodyBasic,
		Namespace: integration.Namespace,
	}
	ok, err := userProfileService.CreateMyProfile(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}
	fmt.Printf(ok.UserID)

	inputValue := &user_profile.PublicGetUserProfileInfoParams{
		Namespace: integration.Namespace,
		UserID:    ok.UserID,
	}
	//lint:ignore SA1019 Ignore the deprecation warnings
	expected, err := userProfileService.PublicGetUserProfileInfo(inputValue)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}

// Updating a profile
func TestIntegrationPublicUpdateUserProfile(t *testing.T) {
	input := &user_profile.CreateMyProfileParams{
		Body:      bodyBasic,
		Namespace: integration.Namespace,
	}
	ok, err := userProfileService.CreateMyProfile(input)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	bodyValue := &basicclientmodels.UserProfileUpdate{
		AvatarLargeURL:   "https://picsum.photos/200",
		AvatarSmallURL:   "https://picsum.photos/200",
		AvatarURL:        "https://picsum.photos/200",
		CustomAttributes: nil,
		DateOfBirth:      nil,
		FirstName:        "firstUpdate",
		Language:         "en",
		LastName:         "secondUpdate",
		TimeZone:         "Asia/Jakarta",
		ZipCode:          "",
	}
	inputValue := &user_profile.PublicUpdateUserProfileParams{
		Body:      bodyValue,
		Namespace: integration.Namespace,
		UserID:    ok.UserID,
	}
	expected, err := userProfileService.PublicUpdateUserProfile(inputValue)
	if err != nil {
		assert.FailNow(t, err.Error())
	}

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, expected, "response should not be nil")
}
