// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type UserProfileService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (u *UserProfileService) AdminGetUserProfilePublicInfoByIds(input *user_profile.AdminGetUserProfilePublicInfoByIdsParams) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err := u.Client.UserProfile.AdminGetUserProfilePublicInfoByIds(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetUserProfileInfo(input *user_profile.GetUserProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetUserProfileInfo(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) UpdateUserProfile(input *user_profile.UpdateUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateUserProfile(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) DeleteUserProfile(input *user_profile.DeleteUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.DeleteUserProfile(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) GetCustomAttributesInfo(input *user_profile.GetCustomAttributesInfoParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetCustomAttributesInfo(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) UpdateCustomAttributesPartially(input *user_profile.UpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateCustomAttributesPartially(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) GetPrivateCustomAttributesInfo(input *user_profile.GetPrivateCustomAttributesInfoParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetPrivateCustomAttributesInfo(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) UpdatePrivateCustomAttributesPartially(input *user_profile.UpdatePrivateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdatePrivateCustomAttributesPartially(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) UpdateUserProfileStatus(input *user_profile.UpdateUserProfileStatusParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateUserProfileStatus(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) GetMyProfileInfo(input *user_profile.GetMyProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.GetMyProfileInfo(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) UpdateMyProfile(input *user_profile.UpdateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.UpdateMyProfile(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) CreateMyProfile(input *user_profile.CreateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, err := u.Client.UserProfile.CreateMyProfile(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) GetMyZipCode(input *user_profile.GetMyZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := u.Client.UserProfile.GetMyZipCode(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) UpdateMyZipCode(input *user_profile.UpdateMyZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err := u.Client.UserProfile.UpdateMyZipCode(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) PublicGetUserProfileInfo(input *user_profile.PublicGetUserProfileInfoParams) (*basicclientmodels.UserProfileInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicGetUserProfileInfo(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) PublicUpdateUserProfile(input *user_profile.PublicUpdateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicUpdateUserProfile(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) PublicCreateUserProfile(input *user_profile.PublicCreateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := u.Client.UserProfile.PublicCreateUserProfile(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) PublicGetCustomAttributesInfo(input *user_profile.PublicGetCustomAttributesInfoParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, err := u.Client.UserProfile.PublicGetCustomAttributesInfo(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) PublicUpdateCustomAttributesPartially(input *user_profile.PublicUpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicUpdateCustomAttributesPartially(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) PublicUpdateUserProfileStatus(input *user_profile.PublicUpdateUserProfileStatusParams) (*basicclientmodels.UserProfileInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := u.Client.UserProfile.PublicUpdateUserProfileStatus(input, client.BearerToken(*accessToken.AccessToken))
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

func (u *UserProfileService) AdminGetUserProfilePublicInfoByIdsShort(input *user_profile.AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	ok, err := u.Client.UserProfile.AdminGetUserProfilePublicInfoByIdsShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetUserProfileInfoShort(input *user_profile.GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	ok, err := u.Client.UserProfile.GetUserProfileInfoShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateUserProfileShort(input *user_profile.UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	ok, err := u.Client.UserProfile.UpdateUserProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) DeleteUserProfileShort(input *user_profile.DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	ok, err := u.Client.UserProfile.DeleteUserProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetCustomAttributesInfoShort(input *user_profile.GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (map[string]interface{}, error) {
	ok, err := u.Client.UserProfile.GetCustomAttributesInfoShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateCustomAttributesPartiallyShort(input *user_profile.UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (map[string]interface{}, error) {
	ok, err := u.Client.UserProfile.UpdateCustomAttributesPartiallyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetPrivateCustomAttributesInfoShort(input *user_profile.GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (map[string]interface{}, error) {
	ok, err := u.Client.UserProfile.GetPrivateCustomAttributesInfoShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdatePrivateCustomAttributesPartiallyShort(input *user_profile.UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (map[string]interface{}, error) {
	ok, err := u.Client.UserProfile.UpdatePrivateCustomAttributesPartiallyShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateUserProfileStatusShort(input *user_profile.UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	ok, err := u.Client.UserProfile.UpdateUserProfileStatusShort(input, authInfo)
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

func (u *UserProfileService) GetMyProfileInfoShort(input *user_profile.GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	ok, err := u.Client.UserProfile.GetMyProfileInfoShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateMyProfileShort(input *user_profile.UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	ok, err := u.Client.UserProfile.UpdateMyProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) CreateMyProfileShort(input *user_profile.CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfilePrivateInfo, error) {
	created, err := u.Client.UserProfile.CreateMyProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UserProfileService) GetMyZipCodeShort(input *user_profile.GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserZipCode, error) {
	ok, err := u.Client.UserProfile.GetMyZipCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateMyZipCodeShort(input *user_profile.UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserZipCode, error) {
	ok, err := u.Client.UserProfile.UpdateMyZipCodeShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfileInfoShort(input *user_profile.PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfileInfo, error) {
	ok, err := u.Client.UserProfile.PublicGetUserProfileInfoShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicUpdateUserProfileShort(input *user_profile.PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfileInfo, error) {
	ok, err := u.Client.UserProfile.PublicUpdateUserProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicCreateUserProfileShort(input *user_profile.PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfileInfo, error) {
	created, err := u.Client.UserProfile.PublicCreateUserProfileShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UserProfileService) PublicGetCustomAttributesInfoShort(input *user_profile.PublicGetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (map[string]interface{}, error) {
	ok, err := u.Client.UserProfile.PublicGetCustomAttributesInfoShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicUpdateCustomAttributesPartiallyShort(input *user_profile.PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (map[string]interface{}, error) {
	ok, err := u.Client.UserProfile.PublicUpdateCustomAttributesPartiallyShort(input, authInfo)
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

func (u *UserProfileService) PublicUpdateUserProfileStatusShort(input *user_profile.PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*basicclientmodels.UserProfileInfo, error) {
	ok, err := u.Client.UserProfile.PublicUpdateUserProfileStatusShort(input, authInfo)
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}
