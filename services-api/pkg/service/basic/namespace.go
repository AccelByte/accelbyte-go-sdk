// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type NamespaceService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetNamespacesShort instead
func (n *NamespaceService) GetNamespaces(input *namespace.GetNamespacesParams) ([]*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, err := n.Client.Namespace.GetNamespaces(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateNamespaceShort instead
func (n *NamespaceService) CreateNamespace(input *namespace.CreateNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := n.Client.Namespace.CreateNamespace(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use GetNamespaceShort instead
func (n *NamespaceService) GetNamespace(input *namespace.GetNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Namespace.GetNamespace(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteNamespaceShort instead
func (n *NamespaceService) DeleteNamespace(input *namespace.DeleteNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, err := n.Client.Namespace.DeleteNamespace(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateNamespaceShort instead
func (n *NamespaceService) UpdateNamespace(input *namespace.UpdateNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, err := n.Client.Namespace.UpdateNamespace(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetNamespacePublisherShort instead
func (n *NamespaceService) GetNamespacePublisher(input *namespace.GetNamespacePublisherParams) (*basicclientmodels.NamespacePublisherInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Namespace.GetNamespacePublisher(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use ChangeNamespaceStatusShort instead
func (n *NamespaceService) ChangeNamespaceStatus(input *namespace.ChangeNamespaceStatusParams) (*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, conflict, err := n.Client.Namespace.ChangeNamespaceStatus(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetNamespacesShort instead
func (n *NamespaceService) PublicGetNamespaces(input *namespace.PublicGetNamespacesParams) ([]*basicclientmodels.NamespaceInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, err := n.Client.Namespace.PublicGetNamespaces(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetNamespacePublisherShort instead
func (n *NamespaceService) PublicGetNamespacePublisher(input *namespace.PublicGetNamespacePublisherParams) (*basicclientmodels.NamespacePublisherInfo, error) {
	token, err := n.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := n.Client.Namespace.PublicGetNamespacePublisher(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) GetNamespacesShort(input *namespace.GetNamespacesParams) ([]*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.GetNamespacesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) CreateNamespaceShort(input *namespace.CreateNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	created, err := n.Client.Namespace.CreateNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (n *NamespaceService) GetNamespaceShort(input *namespace.GetNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.GetNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) DeleteNamespaceShort(input *namespace.DeleteNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.DeleteNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) UpdateNamespaceShort(input *namespace.UpdateNamespaceParams) (*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.UpdateNamespaceShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) GetNamespacePublisherShort(input *namespace.GetNamespacePublisherParams) (*basicclientmodels.NamespacePublisherInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.GetNamespacePublisherShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) ChangeNamespaceStatusShort(input *namespace.ChangeNamespaceStatusParams) (*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.ChangeNamespaceStatusShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) PublicGetNamespacesShort(input *namespace.PublicGetNamespacesParams) ([]*basicclientmodels.NamespaceInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.PublicGetNamespacesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (n *NamespaceService) PublicGetNamespacePublisherShort(input *namespace.PublicGetNamespacePublisherParams) (*basicclientmodels.NamespacePublisherInfo, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(n.TokenRepository, nil, security, "")
	}
	ok, err := n.Client.Namespace.PublicGetNamespacePublisherShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
