// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type BasicUserProfileService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (b *BasicUserProfileService) CreateMyProfile(namespace string, body *basicclientmodels.UserProfilePrivateCreate) (*basicclientmodels.UserProfilePrivateInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", namespace)
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.CreateMyProfileParams{
		Body:      body,
		Namespace: namespace,
	}
	created, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		b.Client.UserProfile.CreateMyProfile(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) DeleteUserProfile(namespace, userId string) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.DeleteUserProfileParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.DeleteUserProfile(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) EnableUserProfileStatus(namespace, userId string, body *basicclientmodels.UserProfileStatusUpdate) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.EnableUserProfileStatusParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.EnableUserProfileStatus(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) GetCustomAttributesInfo(namespace, userId string) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetCustomAttributesInfoParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.GetCustomAttributesInfo(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) GetCustomAttributesInfo1(namespace, userId string) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetCustomAttributesInfo1Params{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, notFound, err :=
		b.Client.UserProfile.GetCustomAttributesInfo1(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) GetMyProfileInfo(namespace string) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetMyProfileInfoParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.GetMyProfileInfo(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) GetPrivateCustomAttributesInfo(namespace, userId string) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetPrivateCustomAttributesInfoParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.GetPrivateCustomAttributesInfo(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) GetUserProfileInfo(namespace, userId string) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetUserProfileInfoParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.GetUserProfileInfo(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) GetUserZipCode(namespace string) (*basicclientmodels.UserZipCode, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.GetUserZipCodeParams{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, err :=
		b.Client.UserProfile.GetUserZipCode(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) PublicCreateUserProfile(namespace, userId string, body *basicclientmodels.UserProfileCreate) (*basicclientmodels.UserProfileInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", namespace)
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.PublicCreateUserProfileParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	created, badRequest, unauthorized, forbidden, conflict, err :=
		b.Client.UserProfile.PublicCreateUserProfile(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) PublicEnableUserProfileStatus(namespace, userId string, body *basicclientmodels.UserProfileStatusUpdate) (*basicclientmodels.UserProfileInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", namespace)
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.PublicEnableUserProfileStatusParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.PublicEnableUserProfileStatus(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) PublicGetUserProfileInfo(namespace, userId string) (*basicclientmodels.UserProfileInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", namespace)
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.PublicGetUserProfileInfoParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.PublicGetUserProfileInfo(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) PublicGetUserProfilePublicInfo(namespace, userId string) (*basicclientmodels.UserProfilePublicInfo, error) {
	logrus.Infof("Invoke CreateProfile with parameter %s", namespace)
	_, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.PublicGetUserProfilePublicInfoParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, notFound, err :=
		b.Client.UserProfile.PublicGetUserProfilePublicInfo(param)
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

func (b *BasicUserProfileService) PublicGetUserProfilePublicInfoByIds(namespace, userIds string) ([]*basicclientmodels.UserProfilePublicInfo, error) {
	_, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.PublicGetUserProfilePublicInfoByIdsParams{
		Namespace: namespace,
		UserIds:   userIds,
	}
	ok, badRequest, err :=
		b.Client.UserProfile.PublicGetUserProfilePublicInfoByIds(param)
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

func (b *BasicUserProfileService) PublicUpdateUserProfile(namespace, userId string, body *basicclientmodels.UserProfileUpdate) (*basicclientmodels.UserProfileInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.PublicUpdateUserProfileParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.PublicUpdateUserProfile(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) UpdateCustomAttributesPartially(namespace, userId string, body map[string]interface{}) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.UpdateCustomAttributesPartiallyParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.UpdateCustomAttributesPartially(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) UpdateCustomAttributesPartially1(namespace, userId string, body map[string]interface{}) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.UpdateCustomAttributesPartially1Params{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.UpdateCustomAttributesPartially1(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) UpdateMyProfile(namespace string, body *basicclientmodels.UserProfilePrivateUpdate) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.UpdateMyProfileParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.UpdateMyProfile(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) UpdatePrivateCustomAttributesPartially(namespace, userId string, body map[string]interface{}) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.UpdatePrivateCustomAttributesPartiallyParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.UpdatePrivateCustomAttributesPartially(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) UpdateUserProfile(namespace, userId string, body *basicclientmodels.UserProfileAdmin) (*basicclientmodels.UserProfilePrivateInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.UpdateUserProfileParams{
		Body:      body,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.UserProfile.UpdateUserProfile(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicUserProfileService) UpdateUserZipCode(namespace string, userZipCodeUpdate *basicclientmodels.UserZipCodeUpdate) (*basicclientmodels.UserZipCode, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &user_profile.UpdateUserZipCodeParams{
		Namespace:         namespace,
		UserZipCodeUpdate: userZipCodeUpdate,
	}
	ok, badRequest, unauthorized, forbidden, err :=
		b.Client.UserProfile.UpdateUserZipCode(param, client.BearerToken(*accessToken.AccessToken))
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
