// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type UserProfileService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserProfileInfoByPublicIDShort instead
func (u *UserProfileService) GetUserProfileInfoByPublicID(input *user_profile.GetUserProfileInfoByPublicIDParams) (*basicclientmodels.UserProfileInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetUserProfileInfoByPublicID(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use AdminGetUserProfilePublicInfoByIdsShort instead
func (u *UserProfileService) AdminGetUserProfilePublicInfoByIds(input *user_profile.AdminGetUserProfilePublicInfoByIdsParams) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := u.Client.UserProfile.AdminGetUserProfilePublicInfoByIds(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetUserProfileInfoShort instead
func (u *UserProfileService) GetUserProfileInfo(input *user_profile.GetUserProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetUserProfileInfo(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserProfileShort instead
func (u *UserProfileService) UpdateUserProfile(input *user_profile.UpdateUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateUserProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteUserProfileShort instead
func (u *UserProfileService) DeleteUserProfile(input *user_profile.DeleteUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.DeleteUserProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetCustomAttributesInfoShort instead
func (u *UserProfileService) GetCustomAttributesInfo(input *user_profile.GetCustomAttributesInfoParams) (map[string]interface{}, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetCustomAttributesInfo(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateCustomAttributesPartiallyShort instead
func (u *UserProfileService) UpdateCustomAttributesPartially(input *user_profile.UpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateCustomAttributesPartially(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetPrivateCustomAttributesInfoShort instead
func (u *UserProfileService) GetPrivateCustomAttributesInfo(input *user_profile.GetPrivateCustomAttributesInfoParams) (map[string]interface{}, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetPrivateCustomAttributesInfo(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdatePrivateCustomAttributesPartiallyShort instead
func (u *UserProfileService) UpdatePrivateCustomAttributesPartially(input *user_profile.UpdatePrivateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdatePrivateCustomAttributesPartially(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserProfileStatusShort instead
func (u *UserProfileService) UpdateUserProfileStatus(input *user_profile.UpdateUserProfileStatusParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateUserProfileStatus(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserProfilePublicInfoByIdsShort instead
func (u *UserProfileService) PublicGetUserProfilePublicInfoByIds(input *user_profile.PublicGetUserProfilePublicInfoByIdsParams) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	ok, badRequest, err := u.Client.UserProfile.PublicGetUserProfilePublicInfoByIds(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserProfileInfoByPublicIDShort instead
func (u *UserProfileService) PublicGetUserProfileInfoByPublicID(input *user_profile.PublicGetUserProfileInfoByPublicIDParams) (*basicclientmodels.UserProfilePublicInfo, error) {
	ok, badRequest, notFound, err := u.Client.UserProfile.PublicGetUserProfileInfoByPublicID(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetMyProfileInfoShort instead
func (u *UserProfileService) GetMyProfileInfo(input *user_profile.GetMyProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetMyProfileInfo(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateMyProfileShort instead
func (u *UserProfileService) UpdateMyProfile(input *user_profile.UpdateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateMyProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateMyProfileShort instead
func (u *UserProfileService) CreateMyProfile(input *user_profile.CreateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, err := u.Client.UserProfile.CreateMyProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetMyZipCodeShort instead
func (u *UserProfileService) GetMyZipCode(input *user_profile.GetMyZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := u.Client.UserProfile.GetMyZipCode(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateMyZipCodeShort instead
func (u *UserProfileService) UpdateMyZipCode(input *user_profile.UpdateMyZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := u.Client.UserProfile.UpdateMyZipCode(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserProfileInfoShort instead
func (u *UserProfileService) PublicGetUserProfileInfo(input *user_profile.PublicGetUserProfileInfoParams) (*basicclientmodels.UserProfileInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicGetUserProfileInfo(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicUpdateUserProfileShort instead
func (u *UserProfileService) PublicUpdateUserProfile(input *user_profile.PublicUpdateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicUpdateUserProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicCreateUserProfileShort instead
func (u *UserProfileService) PublicCreateUserProfile(input *user_profile.PublicCreateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := u.Client.UserProfile.PublicCreateUserProfile(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use PublicGetCustomAttributesInfoShort instead
func (u *UserProfileService) PublicGetCustomAttributesInfo(input *user_profile.PublicGetCustomAttributesInfoParams) (map[string]interface{}, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, err := u.Client.UserProfile.PublicGetCustomAttributesInfo(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicUpdateCustomAttributesPartiallyShort instead
func (u *UserProfileService) PublicUpdateCustomAttributesPartially(input *user_profile.PublicUpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicUpdateCustomAttributesPartially(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetUserProfilePublicInfoShort instead
func (u *UserProfileService) PublicGetUserProfilePublicInfo(input *user_profile.PublicGetUserProfilePublicInfoParams) (*basicclientmodels.UserProfilePublicInfo, error) {
	ok, badRequest, notFound, err := u.Client.UserProfile.PublicGetUserProfilePublicInfo(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicUpdateUserProfileStatusShort instead
func (u *UserProfileService) PublicUpdateUserProfileStatus(input *user_profile.PublicUpdateUserProfileStatusParams) (*basicclientmodels.UserProfileInfo, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicUpdateUserProfileStatus(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetUserProfileInfoByPublicIDShort(input *user_profile.GetUserProfileInfoByPublicIDParams) (*basicclientmodels.UserProfileInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.GetUserProfileInfoByPublicIDShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) AdminGetUserProfilePublicInfoByIdsShort(input *user_profile.AdminGetUserProfilePublicInfoByIdsParams) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.AdminGetUserProfilePublicInfoByIdsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetUserProfileInfoShort(input *user_profile.GetUserProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.GetUserProfileInfoShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateUserProfileShort(input *user_profile.UpdateUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.UpdateUserProfileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) DeleteUserProfileShort(input *user_profile.DeleteUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.DeleteUserProfileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetCustomAttributesInfoShort(input *user_profile.GetCustomAttributesInfoParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.GetCustomAttributesInfoShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateCustomAttributesPartiallyShort(input *user_profile.UpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.UpdateCustomAttributesPartiallyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetPrivateCustomAttributesInfoShort(input *user_profile.GetPrivateCustomAttributesInfoParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.GetPrivateCustomAttributesInfoShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdatePrivateCustomAttributesPartiallyShort(input *user_profile.UpdatePrivateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.UpdatePrivateCustomAttributesPartiallyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateUserProfileStatusShort(input *user_profile.UpdateUserProfileStatusParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.UpdateUserProfileStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfilePublicInfoByIdsShort(input *user_profile.PublicGetUserProfilePublicInfoByIdsParams) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	ok, err := u.Client.UserProfile.PublicGetUserProfilePublicInfoByIdsShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfileInfoByPublicIDShort(input *user_profile.PublicGetUserProfileInfoByPublicIDParams) (*basicclientmodels.UserProfilePublicInfo, error) {
	ok, err := u.Client.UserProfile.PublicGetUserProfileInfoByPublicIDShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetMyProfileInfoShort(input *user_profile.GetMyProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.GetMyProfileInfoShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateMyProfileShort(input *user_profile.UpdateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.UpdateMyProfileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) CreateMyProfileShort(input *user_profile.CreateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := u.Client.UserProfile.CreateMyProfileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (u *UserProfileService) GetMyZipCodeShort(input *user_profile.GetMyZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.GetMyZipCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateMyZipCodeShort(input *user_profile.UpdateMyZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.UpdateMyZipCodeShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfileInfoShort(input *user_profile.PublicGetUserProfileInfoParams) (*basicclientmodels.UserProfileInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.PublicGetUserProfileInfoShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicUpdateUserProfileShort(input *user_profile.PublicUpdateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.PublicUpdateUserProfileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicCreateUserProfileShort(input *user_profile.PublicCreateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := u.Client.UserProfile.PublicCreateUserProfileShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (u *UserProfileService) PublicGetCustomAttributesInfoShort(input *user_profile.PublicGetCustomAttributesInfoParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.PublicGetCustomAttributesInfoShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicUpdateCustomAttributesPartiallyShort(input *user_profile.PublicUpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.PublicUpdateCustomAttributesPartiallyShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfilePublicInfoShort(input *user_profile.PublicGetUserProfilePublicInfoParams) (*basicclientmodels.UserProfilePublicInfo, error) {
	ok, err := u.Client.UserProfile.PublicGetUserProfilePublicInfoShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicUpdateUserProfileStatusShort(input *user_profile.PublicUpdateUserProfileStatusParams) (*basicclientmodels.UserProfileInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(u.TokenRepository, nil, security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  u.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := u.Client.UserProfile.PublicUpdateUserProfileStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
