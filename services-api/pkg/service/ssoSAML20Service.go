// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package service

import (
	"errors"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o_s_a_m_l_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/sirupsen/logrus"
	"net/url"
)

type SSOSAML20Service struct {
	IamService       *iamclient.JusticeIamService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

// PlatformAuthenticateSAMLV3 is used to authenticates user platform for SAML protocol
func (ssoSAML20Service *SSOSAML20Service) PlatformAuthenticateSAMLV3(platformId, state, code, error string) (string, error) {
	logrus.Infof("Invoke authenticate: %s %s", platformId, state)
	param := &s_s_o_s_a_m_l_2_0.PlatformAuthenticateSAMLV3HandlerParams{
		PlatformID: platformId,
		State:      state,
		Code:       &code,
		Error:      &error,
	}
	authenticated, err :=
		ssoSAML20Service.IamService.Ssosaml20.PlatformAuthenticateSAMLV3Handler(param, nil)
	if err != nil {
		return "", err
	}
	parsedUrl, err := url.Parse(authenticated.Location)
	if err != nil {
		return "", err
	}
	query, err := url.ParseQuery(parsedUrl.RawQuery)
	if err != nil {
		return "", err
	}
	errorDescParam := query["error_description"]
	if errorDescParam != nil {
		return "", errors.New(errorDescParam[0])
	}
	code = query["code"][0]
	return code, nil
}
