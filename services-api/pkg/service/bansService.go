// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type BansService struct {
	iamClient       *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (bansService *BansService) AdminGetBannedUsersV3(activeOnly *bool, banType *string, limit *int64, namespace string, offset *int64) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	token, err := bansService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &bans.AdminGetBannedUsersV3Params{
		ActiveOnly: activeOnly,
		BanType:    banType,
		Limit:      limit,
		Namespace:  namespace,
		Offset:     offset,
	}
	ok, unauthorized, forbidden, err := bansService.iamClient.Bans.AdminGetBannedUsersV3(params, client.BearerToken(*token.AccessToken))
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

func (bansService *BansService) AdminGetBansTypeV3() (*iamclientmodels.AccountcommonBansV3, error) {
	token, err := bansService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, err := bansService.iamClient.Bans.AdminGetBansTypeV3(nil, client.BearerToken(*token.AccessToken))
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

func (bansService BansService) AdminGetBansTypeWithNamespaceV3(namespace string) (*iamclientmodels.AccountcommonBansV3, error) {
	token, err := bansService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &bans.AdminGetBansTypeWithNamespaceV3Params{
		Namespace: namespace,
	}
	ok, unauthorized, forbidden, err := bansService.iamClient.Bans.AdminGetBansTypeWithNamespaceV3(params, client.BearerToken(*token.AccessToken))
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

func (bansService BansService) AdminGetListBanReasonV3() (*iamclientmodels.AccountcommonBanReasonsV3, error) {
	token, err := bansService.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, err := bansService.iamClient.Bans.AdminGetListBanReasonV3(nil, client.BearerToken(*token.AccessToken))
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
