// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package iam

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_s_a_m_l_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type SSOSAML20Service struct {
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

// PlatformAuthenticateSAMLV3 is used to authenticate user platform for SAML protocol
func (s *SSOSAML20Service) PlatformAuthenticateSAMLV3(input *s_s_o_s_a_m_l_2_0.PlatformAuthenticateSAMLV3HandlerParams) (string, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return "", err
	}
	authenticated, err :=
		s.Client.Ssosaml20.PlatformAuthenticateSAMLV3Handler(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return "", err
	}
	return authenticated.Location, nil
}
