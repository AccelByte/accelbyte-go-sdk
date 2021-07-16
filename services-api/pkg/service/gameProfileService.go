package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type GameProfileService struct {
	SocialServiceClient *socialclient.JusticeSocialService
	TokenRepository     repository.TokenRepository
}

func (s *GameProfileService) GetUserProfiles(namespace, userId string) ([]*socialclientmodels.GameProfileHeader, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.GetUserProfilesParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.GameProfile.GetUserProfiles(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GameProfileService) GetProfile(namespace, userId, profileId string) (*socialclientmodels.GameProfileInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.GetProfileParams{
		Namespace: namespace,
		ProfileID: profileId,
		UserID:    userId,
	}
	ok, notFound, err := s.SocialServiceClient.GameProfile.GetProfile(params, client.BearerToken(*token.AccessToken))
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

func (s *GameProfileService) PublicGetUserProfiles(namespace, userId string) ([]*socialclientmodels.GameProfileHeader, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.PublicGetUserProfilesParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.GameProfile.PublicGetUserProfiles(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *GameProfileService) PublicCreateProfile(namespace, userId string, content *socialclientmodels.GameProfileRequest) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &game_profile.PublicCreateProfileParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	_, notFound, err := s.SocialServiceClient.GameProfile.PublicCreateProfile(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *GameProfileService) PublicGetProfileAttribute(namespace, userId, attributeName, profileId string) (*socialclientmodels.Attribute, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.PublicGetProfileAttributeParams{
		AttributeName: attributeName,
		Namespace:     namespace,
		ProfileID:     profileId,
		UserID:        userId,
	}
	ok, notFound, err := s.SocialServiceClient.GameProfile.PublicGetProfileAttribute(params, client.BearerToken(*token.AccessToken))
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

func (s *GameProfileService) PublicUpdateAttribute(namespace, userId, attributeName, profileId string, content *socialclientmodels.Attribute) (*socialclientmodels.GameProfileInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.PublicUpdateAttributeParams{
		AttributeName: attributeName,
		Body:          content,
		Namespace:     namespace,
		ProfileID:     profileId,
		UserID:        userId,
	}
	ok, badRequest, notFound, err := s.SocialServiceClient.GameProfile.PublicUpdateAttribute(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
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

func (s *GameProfileService) PublicGetProfile(namespace, userId, profileId string) (*socialclientmodels.GameProfileInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.PublicGetProfileParams{
		Namespace: namespace,
		ProfileID: profileId,
		UserID:    userId,
	}
	ok, notFound, err := s.SocialServiceClient.GameProfile.PublicGetProfile(params, client.BearerToken(*token.AccessToken))
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

func (s *GameProfileService) PublicUpdateProfile(namespace, userId, profileId string, content *socialclientmodels.GameProfileRequest) (*socialclientmodels.GameProfileInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.PublicUpdateProfileParams{
		Body:      content,
		Namespace: namespace,
		ProfileID: profileId,
		UserID:    userId,
	}
	ok, badRequest, notFound, err := s.SocialServiceClient.GameProfile.PublicUpdateProfile(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
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

func (s *GameProfileService) PublicDeleteProfile(namespace, userId, profileId string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &game_profile.PublicDeleteProfileParams{
		Namespace: namespace,
		ProfileID: profileId,
		UserID:    userId,
	}
	_, notFound, err := s.SocialServiceClient.GameProfile.PublicDeleteProfile(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}

	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *GameProfileService) PublicGetUserGameProfiles(namespace string, userIds []string) ([]*socialclientmodels.UserGameProfiles, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &game_profile.PublicGetUserGameProfilesParams{
		Namespace: namespace,
		UserIds:   userIds,
	}
	ok, badRequest, err := s.SocialServiceClient.GameProfile.PublicGetUserGameProfiles(params, client.BearerToken(*token.AccessToken))
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
