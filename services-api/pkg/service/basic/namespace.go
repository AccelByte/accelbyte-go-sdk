// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type NamespaceService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (b *NamespaceService) ChangeNamespaceStatus(input *namespace.ChangeNamespaceStatusParams) (*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		b.Client.Namespace.ChangeNamespaceStatus(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *NamespaceService) CreateNamespace(input *namespace.CreateNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err :=
		b.Client.Namespace.CreateNamespace(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

func (b *NamespaceService) DeleteNamespace(input *namespace.DeleteNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		b.Client.Namespace.DeleteNamespace(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *NamespaceService) GetNamespace(input *namespace.GetNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.Namespace.GetNamespace(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *NamespaceService) GetNamespacePublisher(input *namespace.GetNamespacePublisherParams) (*basicclientmodels.NamespacePublisherInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.Namespace.GetNamespacePublisher(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *NamespaceService) GetNamespaces(input *namespace.GetNamespacesParams) ([]*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err :=
		b.Client.Namespace.GetNamespaces(input, client.BearerToken(*accessToken.AccessToken))
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

func (b *NamespaceService) PublicGetNamespacePublisher(input *namespace.PublicGetNamespacePublisherParams) (*basicclientmodels.NamespacePublisherInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.Namespace.PublicGetNamespacePublisher(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *NamespaceService) PublicGetNamespaces(input *namespace.PublicGetNamespacesParams) ([]*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err :=
		b.Client.Namespace.PublicGetNamespaces(input, client.BearerToken(*accessToken.AccessToken))
	if unauthorized != nil {
		errorMsg, _ := json.Marshal(*unauthorized.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unauthorized
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *NamespaceService) UpdateNamespace(input *namespace.UpdateNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, err :=
		b.Client.Namespace.UpdateNamespace(input, client.BearerToken(*accessToken.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
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
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
