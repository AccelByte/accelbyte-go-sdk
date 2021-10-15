package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SlotConfigService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

func (s *SlotConfigService) GetNamespaceSlotConfig(input *slot_config.GetNamespaceSlotConfigParams) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.SlotConfig.GetNamespaceSlotConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) UpdateNamespaceSlotConfig(input *slot_config.UpdateNamespaceSlotConfigParams) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.SlotConfig.UpdateNamespaceSlotConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) DeleteNamespaceSlotConfig(input *slot_config.DeleteNamespaceSlotConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.SlotConfig.DeleteNamespaceSlotConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *SlotConfigService) GetUserSlotConfig(input *slot_config.GetUserSlotConfigParams) (*socialclientmodels.UserSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.SlotConfig.GetUserSlotConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) UpdateUserSlotConfig(input *slot_config.UpdateUserSlotConfigParams) (*socialclientmodels.UserSlotConfigInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := s.Client.SlotConfig.UpdateUserSlotConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotConfigService) DeleteUserSlotConfig(input *slot_config.DeleteUserSlotConfigParams) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = s.Client.SlotConfig.DeleteUserSlotConfig(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
