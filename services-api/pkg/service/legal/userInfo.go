package legal

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/user_info"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type UserInfoService struct {
	Client          *legalclient.JusticeLegalService
	TokenRepository repository.TokenRepository
}

// GetUserInfoStatus is used to get user info cache status
func (u *UserInfoService) GetUserInfoStatus(input *user_info.GetUserInfoStatusParams) ([]*legalclientmodels.RetrieveUserInfoCacheStatusResponse, error) {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	ok, err := u.Client.UserInfo.GetUserInfoStatus(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

// InvalidateUserInfoCache is used to invalidate user info cache
func (u *UserInfoService) InvalidateUserInfoCache(input *user_info.InvalidateUserInfoCacheParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = u.Client.UserInfo.InvalidateUserInfoCache(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// SyncUserInfo is used to invalidate user info cache
func (u *UserInfoService) SyncUserInfo(input *user_info.SyncUserInfoParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, err = u.Client.UserInfo.SyncUserInfo(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
