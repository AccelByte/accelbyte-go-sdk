// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package basic

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

type MiscService struct {
	Client          *basicclient.JusticeBasicService
	TokenRepository repository.TokenRepository
}

func (m *MiscService) AddCountryGroup(input *misc.AddCountryGroupParams) (*basicclientmodels.AddCountryGroupResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err :=
		m.Client.Misc.AddCountryGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MiscService) DeleteCountryGroup(input *misc.DeleteCountryGroupParams) error {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	badRequest, unauthorized, forbidden, notFound, err :=
		m.Client.Misc.DeleteCountryGroup(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MiscService) GetCountries(input *misc.GetCountriesParams) ([]*basicclientmodels.CountryObject, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err :=
		m.Client.Misc.GetCountries(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MiscService) GetCountryGroups(input *misc.GetCountryGroupsParams) ([]*basicclientmodels.RetrieveCountryGroupResponse, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		m.Client.Misc.GetCountryGroups(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MiscService) GetLanguages(input *misc.GetLanguagesParams) (map[string]interface{}, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err :=
		m.Client.Misc.GetLanguages(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MiscService) GetTimeZones(input *misc.GetTimeZonesParams) ([]string, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err :=
		m.Client.Misc.GetTimeZones(input, client.BearerToken(*accessToken.AccessToken))
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

func (m *MiscService) PublicGetCountries(input *misc.PublicGetCountriesParams) ([]*basicclientmodels.CountryObject, error) {
	_, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err :=
		m.Client.Misc.PublicGetCountries(input)
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

func (m *MiscService) PublicGetLanguages(input *misc.PublicGetLanguagesParams) (map[string]interface{}, error) {
	_, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err :=
		m.Client.Misc.PublicGetLanguages(input)
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

func (m *MiscService) PublicGetTimeZones(input *misc.PublicGetTimeZonesParams) ([]string, error) {
	_, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, err :=
		m.Client.Misc.PublicGetTimeZones(input)
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

func (m *MiscService) UpdateCountryGroup(input *misc.UpdateCountryGroupParams) (*basicclientmodels.CountryGroupObject, error) {
	accessToken, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err :=
		m.Client.Misc.UpdateCountryGroup(input, client.BearerToken(*accessToken.AccessToken))
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
