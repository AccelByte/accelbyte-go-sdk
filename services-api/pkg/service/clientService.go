// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type ClientService struct {
	TokenRepository repository.TokenRepository
	IamClient       *iamclient.JusticeIamService
}

func (clientService *ClientService) AdminAddClientPermissionsV3(clientID string, namespace string, acccountcommonClientPermissionsV3 iamclientmodels.AccountcommonClientPermissionsV3) error {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &clients.AdminAddClientPermissionsV3Params{
		Body:      &acccountcommonClientPermissionsV3,
		ClientID:  clientID,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := clientService.IamClient.Clients.AdminAddClientPermissionsV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (clientService *ClientService) AdminCreateClientV3(namespace string, clientmodelClientCreationV3Request iamclientmodels.ClientmodelClientCreationV3Request) (*iamclientmodels.ClientmodelClientV3Response, error) {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &clients.AdminCreateClientV3Params{
		Body:      &clientmodelClientCreationV3Request,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, conflict, err := clientService.IamClient.Clients.AdminCreateClientV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (clientService *ClientService) AdminDeleteClientPermissionV3(action int64, clientID string, namespace string, resource string) error {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &clients.AdminDeleteClientPermissionV3Params{
		Action:    action,
		ClientID:  clientID,
		Namespace: namespace,
		Resource:  resource,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := clientService.IamClient.Clients.AdminDeleteClientPermissionV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (clientService *ClientService) AdminDeleteClientV3(clientID, namespace string) error {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &clients.AdminDeleteClientV3Params{
		ClientID:  clientID,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := clientService.IamClient.Clients.AdminDeleteClientV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (clientService *ClientService) AdminGetClientsByNamespaceV3(after *string, before *string, limit *int64, namespace string) (*iamclientmodels.ClientmodelClientsV3Response, error) {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &clients.AdminGetClientsByNamespaceV3Params{
		After:     after,
		Before:    before,
		Limit:     limit,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, err := clientService.IamClient.Clients.AdminGetClientsByNamespaceV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if err != nil {
		return nil, err
	}
	return ok.GetPayload(), nil

}

func (clientService *ClientService) AdminGetClientsbyNamespacebyIDV3(clientID string, namespace string) (*iamclientmodels.ClientmodelClientV3Response, error) {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &clients.AdminGetClientsbyNamespacebyIDV3Params{
		ClientID:  clientID,
		Namespace: namespace,
	}

	ok, badRequest, unauthorized, forbidden, notFound, err := clientService.IamClient.Clients.AdminGetClientsbyNamespacebyIDV3(params, client.BearerToken(*accessToken.AccessToken))

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
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (clientService *ClientService) AdminUpdateClientPermissionV3(clientID string, namespace string, accountcommonClientPermissionsV3 *iamclientmodels.AccountcommonClientPermissionsV3) error {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	params := &clients.AdminUpdateClientPermissionV3Params{
		Body:      accountcommonClientPermissionsV3,
		ClientID:  clientID,
		Namespace: namespace,
	}
	_, badRequest, unauthorized, forbidden, notFound, err := clientService.IamClient.Clients.AdminUpdateClientPermissionV3(params, client.BearerToken(*accessToken.AccessToken))
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
	if forbidden != nil {
		errorMsg, _ := json.Marshal(*forbidden.GetPayload())
		logrus.Error(string(errorMsg))
		return forbidden
	}
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		return err
	}
	return nil
}

func (clientService *ClientService) AdminUpdateClientV3(clientID string, namespace string, clientmodelClientUpdateV3Request *iamclientmodels.ClientmodelClientUpdateV3Request) (*iamclientmodels.ClientmodelClientV3Response, error) {
	accessToken, err := clientService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &clients.AdminUpdateClientV3Params{
		Body:      clientmodelClientUpdateV3Request,
		ClientID:  clientID,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := clientService.IamClient.Clients.AdminUpdateClientV3(params, client.BearerToken(*accessToken.AccessToken))
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
		return nil, err
	}
	return ok.GetPayload(), nil
}
