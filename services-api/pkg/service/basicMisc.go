// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type BasicMiscService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (b *BasicMiscService) AddCountryGroup(namespace string, body *basicclientmodels.AddCountryGroupRequest) (*basicclientmodels.AddCountryGroupResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.AddCountryGroupParams{
		Body:      body,
		Namespace: namespace,
	}
	created, badRequest, unauthorized, forbidden, conflict, err :=
		b.Client.Misc.AddCountryGroup(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicMiscService) DeleteCountryGroup(namespace, countryGroupCode string) error {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	param := &misc.DeleteCountryGroupParams{
		CountryGroupCode: countryGroupCode,
		Namespace:        namespace,
	}
	badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.Misc.DeleteCountryGroup(param, client.BearerToken(*accessToken.AccessToken))
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
		logrus.Error(err)
		return err
	}
	return nil
}

func (b *BasicMiscService) GetCountries(namespace string, lang *string) ([]*basicclientmodels.CountryObject, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.GetCountriesParams{
		Lang:      lang,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, err :=
		b.Client.Misc.GetCountries(param, client.BearerToken(*accessToken.AccessToken))
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
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicMiscService) GetCountryGroups(namespace string, groupCode *string) ([]*basicclientmodels.RetrieveCountryGroupResponse, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.GetCountryGroupsParams{
		GroupCode: groupCode,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.Misc.GetCountryGroups(param, client.BearerToken(*accessToken.AccessToken))
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

func (b *BasicMiscService) GetLanguages(namespace string) (map[string]interface{}, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.GetLanguagesParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, err :=
		b.Client.Misc.GetLanguages(param, client.BearerToken(*accessToken.AccessToken))
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
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicMiscService) GetTimeZones(namespace string) ([]string, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.GetTimeZonesParams{
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, err :=
		b.Client.Misc.GetTimeZones(param, client.BearerToken(*accessToken.AccessToken))
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
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicMiscService) PublicGetCountries(namespace string, lang *string) ([]*basicclientmodels.CountryObject, error) {
	_, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.PublicGetCountriesParams{
		Lang:      lang,
		Namespace: namespace,
	}
	ok, badRequest, err :=
		b.Client.Misc.PublicGetCountries(param)
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicMiscService) PublicGetLanguages(namespace string) (map[string]interface{}, error) {
	_, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.PublicGetLanguagesParams{
		Namespace: namespace,
	}
	ok, badRequest, err :=
		b.Client.Misc.PublicGetLanguages(param)
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicMiscService) PublicGetTimeZones(namespace string) ([]string, error) {
	_, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.PublicGetTimeZonesParams{
		Namespace: namespace,
	}
	ok, badRequest, err :=
		b.Client.Misc.PublicGetTimeZones(param)
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (b *BasicMiscService) UpdateCountryGroup(namespace string, body *basicclientmodels.UpdateCountryGroupRequest) (*basicclientmodels.CountryGroupObject, error) {
	accessToken, err := b.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	param := &misc.UpdateCountryGroupParams{
		Body:      body,
		Namespace: namespace,
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		b.Client.Misc.UpdateCountryGroup(param, client.BearerToken(*accessToken.AccessToken))
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
