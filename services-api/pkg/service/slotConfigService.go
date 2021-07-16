package service

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SlotConfigService struct {
	SocialServiceClient *socialclient.JusticeSocialService
	TokenRepository     repository.TokenRepository
}

func (s *SlotConfigService) GetNamespaceSlotConfig(namespace string) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot_config.GetNamespaceSlotConfigParams{
		Namespace: namespace,
	}
	ok, err := s.SocialServiceClient.SlotConfig.GetNamespaceSlotConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) UpdateNamespaceSlotConfig(namespace string, content *socialclientmodels.SlotConfigUpdate) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot_config.UpdateNamespaceSlotConfigParams{
		Body:      content,
		Namespace: namespace,
	}
	ok, err := s.SocialServiceClient.SlotConfig.UpdateNamespaceSlotConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) DeleteNamespaceSlotConfig(namespace string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &slot_config.DeleteNamespaceSlotConfigParams{
		Namespace: namespace,
	}
	_, err = s.SocialServiceClient.SlotConfig.DeleteNamespaceSlotConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *SlotConfigService) GetUserSlotConfig(namespace, userId string) (*socialclientmodels.UserSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot_config.GetUserSlotConfigParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.SlotConfig.GetUserSlotConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) UpdateUserSlotConfig(namespace, userId string, content *socialclientmodels.SlotConfigUpdate) (*socialclientmodels.UserSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot_config.UpdateUserSlotConfigParams{
		Body:      content,
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.SlotConfig.UpdateUserSlotConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) DeleteUserSlotConfig(namespace, userId string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &slot_config.DeleteUserSlotConfigParams{
		Namespace: namespace,
		UserID:    userId,
	}
	_, err = s.SocialServiceClient.SlotConfig.DeleteUserSlotConfig(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
