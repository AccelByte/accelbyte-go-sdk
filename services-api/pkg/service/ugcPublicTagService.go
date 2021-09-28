// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	nr "github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type PublicTagConfigService struct {
	UgcServiceClient *ugcclient.JusticeUgcService
	TokenRepository  repository.TokenRepository
}

// GetTag gets tags
func (u *PublicTagConfigService) GetTag(namespace string, limit, offset *string) (*ugcclientmodels.ModelsPaginatedGetTagResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &nr.GetTagParams{
		Limit:     limit,
		Namespace: namespace,
		Offset:    offset,
	}
	ok, unauthorized, notFound, internalServer, err := u.UgcServiceClient.NrPublicTag.GetTag(params, client.BearerToken(*token.AccessToken))
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
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, internalServer
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
