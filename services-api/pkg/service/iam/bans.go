// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

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
	Client          *iamclient.JusticeIamService
	TokenRepository repository.TokenRepository
}

func (b *BansService) AdminGetBannedUsersV3(input *bans.AdminGetBannedUsersV3Params) (*iamclientmodels.ModelGetUserBanV3Response, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, err := b.Client.Bans.AdminGetBannedUsersV3(input, client.BearerToken(*token.AccessToken))
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

func (b *BansService) AdminGetBansTypeV3() (*iamclientmodels.AccountcommonBansV3, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, err := b.Client.Bans.AdminGetBansTypeV3(nil, client.BearerToken(*token.AccessToken))
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

func (b BansService) AdminGetBansTypeWithNamespaceV3(input *bans.AdminGetBansTypeWithNamespaceV3Params) (*iamclientmodels.AccountcommonBansV3, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, err := b.Client.Bans.AdminGetBansTypeWithNamespaceV3(input, client.BearerToken(*token.AccessToken))
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

func (b BansService) AdminGetListBanReasonV3() (*iamclientmodels.AccountcommonBanReasonsV3, error) {
	token, err := b.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, unauthorized, forbidden, err := b.Client.Bans.AdminGetListBanReasonV3(nil, client.BearerToken(*token.AccessToken))
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
