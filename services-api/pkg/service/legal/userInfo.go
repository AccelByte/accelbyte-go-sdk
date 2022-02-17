// Copyright (c) 2018 - 2021
// AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/user_info"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
)

type UserInfoService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetUserInfoStatusShort instead
func (u *UserInfoService) GetUserInfoStatus(input *user_info.GetUserInfoStatusParams) ([]*legalclientmodels.RetrieveUserInfoCacheStatusResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserInfo.GetUserInfoStatus(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

// Deprecated: Use SyncUserInfoShort instead
func (u *UserInfoService) SyncUserInfo(input *user_info.SyncUserInfoParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UserInfo.SyncUserInfo(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

// Deprecated: Use InvalidateUserInfoCacheShort instead
func (u *UserInfoService) InvalidateUserInfoCache(input *user_info.InvalidateUserInfoCacheParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UserInfo.InvalidateUserInfoCache(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (u *UserInfoService) GetUserInfoStatusShort(input *user_info.GetUserInfoStatusParams) ([]*legalclientmodels.RetrieveUserInfoCacheStatusResponse, error) {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := u.Client.UserInfo.GetUserInfoStatusShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (u *UserInfoService) SyncUserInfoShort(input *user_info.SyncUserInfoParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UserInfo.SyncUserInfoShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}

func (u *UserInfoService) InvalidateUserInfoCacheShort(input *user_info.InvalidateUserInfoCacheParams) error {
	accessToken, err := u.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, err = u.Client.UserInfo.InvalidateUserInfoCacheShort(input, client.BearerToken(*accessToken.AccessToken))
	if err != nil {
		return err
	}
	return nil
}
