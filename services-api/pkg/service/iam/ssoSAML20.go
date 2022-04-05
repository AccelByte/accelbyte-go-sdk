// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_s_a_m_l_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type SSOSAML20Service struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use PlatformAuthenticateSAMLV3HandlerShort instead
func (s *SSOSAML20Service) PlatformAuthenticateSAMLV3Handler(input *s_s_o_s_a_m_l_2_0.PlatformAuthenticateSAMLV3HandlerParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Ssosaml20.PlatformAuthenticateSAMLV3Handler(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}

func (s *SSOSAML20Service) PlatformAuthenticateSAMLV3HandlerShort(input *s_s_o_s_a_m_l_2_0.PlatformAuthenticateSAMLV3HandlerParams) error {
	accessToken, err := s.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = s.Client.Ssosaml20.PlatformAuthenticateSAMLV3HandlerShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}

	return nil
}
