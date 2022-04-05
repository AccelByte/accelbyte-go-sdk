// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package social

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime/client"
)

type SlotConfigService struct {
	Client          *socialclient.JusticeSocialService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetNamespaceSlotConfigShort instead
func (s *SlotConfigService) GetNamespaceSlotConfig(input *slot_config.GetNamespaceSlotConfigParams) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.GetNamespaceSlotConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateNamespaceSlotConfigShort instead
func (s *SlotConfigService) UpdateNamespaceSlotConfig(input *slot_config.UpdateNamespaceSlotConfigParams) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.UpdateNamespaceSlotConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteNamespaceSlotConfigShort instead
func (s *SlotConfigService) DeleteNamespaceSlotConfig(input *slot_config.DeleteNamespaceSlotConfigParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.SlotConfig.DeleteNamespaceSlotConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetUserSlotConfigShort instead
func (s *SlotConfigService) GetUserSlotConfig(input *slot_config.GetUserSlotConfigParams) (*socialclientmodels.UserSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.GetUserSlotConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateUserSlotConfigShort instead
func (s *SlotConfigService) UpdateUserSlotConfig(input *slot_config.UpdateUserSlotConfigParams) (*socialclientmodels.UserSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.UpdateUserSlotConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteUserSlotConfigShort instead
func (s *SlotConfigService) DeleteUserSlotConfig(input *slot_config.DeleteUserSlotConfigParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.SlotConfig.DeleteUserSlotConfig(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (s *SlotConfigService) GetNamespaceSlotConfigShort(input *slot_config.GetNamespaceSlotConfigParams) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.GetNamespaceSlotConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SlotConfigService) UpdateNamespaceSlotConfigShort(input *slot_config.UpdateNamespaceSlotConfigParams) (*socialclientmodels.NamespaceSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.UpdateNamespaceSlotConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SlotConfigService) DeleteNamespaceSlotConfigShort(input *slot_config.DeleteNamespaceSlotConfigParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.SlotConfig.DeleteNamespaceSlotConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (s *SlotConfigService) GetUserSlotConfigShort(input *slot_config.GetUserSlotConfigParams) (*socialclientmodels.UserSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.GetUserSlotConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SlotConfigService) UpdateUserSlotConfigShort(input *slot_config.UpdateUserSlotConfigParams) (*socialclientmodels.UserSlotConfigInfo, error) {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := s.Client.SlotConfig.UpdateUserSlotConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (s *SlotConfigService) DeleteUserSlotConfigShort(input *slot_config.DeleteUserSlotConfigParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.SlotConfig.DeleteUserSlotConfigShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}
