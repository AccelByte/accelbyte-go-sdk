// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"encoding/json"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type UserProfileService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (u *UserProfileService) CreateMyProfile(input *user_profile.CreateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", input.Namespace)
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		u.Client.UserProfile.CreateMyProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UserProfileService) DeleteUserProfile(input *user_profile.DeleteUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.DeleteUserProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) EnableUserProfileStatus(input *user_profile.EnableUserProfileStatusParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.EnableUserProfileStatus(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetCustomAttributesInfo(input *user_profile.GetCustomAttributesInfoParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.GetCustomAttributesInfo(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetCustomAttributesInfo1(input *user_profile.GetCustomAttributesInfo1Params) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, err :=
		u.Client.UserProfile.GetCustomAttributesInfo1(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetMyProfileInfo(input *user_profile.GetMyProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.GetMyProfileInfo(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetPrivateCustomAttributesInfo(input *user_profile.GetPrivateCustomAttributesInfoParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.GetPrivateCustomAttributesInfo(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetUserProfileInfo(input *user_profile.GetUserProfileInfoParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.GetUserProfileInfo(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) GetUserZipCode(input *user_profile.GetUserZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err :=
		u.Client.UserProfile.GetUserZipCode(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicCreateUserProfile(input *user_profile.PublicCreateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", input.Namespace)
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err :=
		u.Client.UserProfile.PublicCreateUserProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

func (u *UserProfileService) PublicEnableUserProfileStatus(input *user_profile.PublicEnableUserProfileStatusParams) (*basicclientmodels.UserProfileInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", input.Namespace)
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.PublicEnableUserProfileStatus(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfileInfo(input *user_profile.PublicGetUserProfileInfoParams) (*basicclientmodels.UserProfileInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", input.Namespace)
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.PublicGetUserProfileInfo(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfilePublicInfo(input *user_profile.PublicGetUserProfilePublicInfoParams) (*basicclientmodels.UserProfilePublicInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", input.Namespace)
	_, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, err :=
		u.Client.UserProfile.PublicGetUserProfilePublicInfo(input)
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicGetUserProfilePublicInfoByIds(input *user_profile.PublicGetUserProfilePublicInfoByIdsParams) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	_, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err :=
		u.Client.UserProfile.PublicGetUserProfilePublicInfoByIds(input)
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) PublicUpdateUserProfile(input *user_profile.PublicUpdateUserProfileParams) (*basicclientmodels.UserProfileInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.PublicUpdateUserProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateCustomAttributesPartially(input *user_profile.UpdateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.UpdateCustomAttributesPartially(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateCustomAttributesPartially1(input *user_profile.UpdateCustomAttributesPartially1Params) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.UpdateCustomAttributesPartially1(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateMyProfile(input *user_profile.UpdateMyProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.UpdateMyProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdatePrivateCustomAttributesPartially(input *user_profile.UpdatePrivateCustomAttributesPartiallyParams) (map[string]interface{}, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.UpdatePrivateCustomAttributesPartially(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateUserProfile(input *user_profile.UpdateUserProfileParams) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		u.Client.UserProfile.UpdateUserProfile(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserProfileService) UpdateUserZipCode(input *user_profile.UpdateUserZipCodeParams) (*basicclientmodels.UserZipCode, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, err :=
		u.Client.UserProfile.UpdateUserZipCode(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, forbidden
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
