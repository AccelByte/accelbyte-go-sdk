// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package ugc

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type AnonymizationService struct {
	Client          *ugcclient.JusticeUgcService
	TokenRepository repository.TokenRepository
}

// AdminDeleteAllUserChannels deletes all user channel
func (u *AnonymizationService) AdminDeleteAllUserChannels(input *anonymization.AdminDeleteAllUserChannelsParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.Anonymization.AdminDeleteAllUserChannels(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteAllUserContents deletes all user content
func (u *AnonymizationService) AdminDeleteAllUserContents(input *anonymization.AdminDeleteAllUserContentsParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.Anonymization.AdminDeleteAllUserContents(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteAllUserGroup deletes all user group
func (u *AnonymizationService) AdminDeleteAllUserGroup(input *anonymization.AdminDeleteAllUserGroupParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.Anonymization.AdminDeleteAllUserGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// AdminDeleteAllUserStates removes all user related state likes downloads followers following
func (u *AnonymizationService) AdminDeleteAllUserStates(input *anonymization.AdminDeleteAllUserStatesParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, unauthorized, internalServer, err := u.Client.Anonymization.AdminDeleteAllUserStates(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// DeleteAllUserChannel deletes all user channel
func (u *AnonymizationService) DeleteAllUserChannel(input *anonymization.DeleteAllUserChannelParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.Anonymization.DeleteAllUserChannel(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// DeleteAllUserContents deletes all user content
func (u *AnonymizationService) DeleteAllUserContents(input *anonymization.DeleteAllUserContentsParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.Anonymization.DeleteAllUserContents(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// DeleteAllUserGroup deletes all user group
func (u *AnonymizationService) DeleteAllUserGroup(input *anonymization.DeleteAllUserGroupParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, unauthorized, notFound, internalServer, err := u.Client.Anonymization.DeleteAllUserGroup(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

// DeleteAllUserStates removes all user related state likes downloads followers following
func (u *AnonymizationService) DeleteAllUserStates(input *anonymization.DeleteAllUserStatesParams) error {
	token, err := u.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	_, badRequest, unauthorized, internalServer, err := u.Client.Anonymization.DeleteAllUserStates(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return unauthorized
	}
	if internalServer != nil {
		errorMsg, _ := json.Marshal(*internalServer.GetPayload())
		logrus.Error(string(errorMsg))
		return internalServer
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}
