// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type MiscService struct {
	Client                 *basicclient.JusticeBasicService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (m *MiscService) GetAuthSession() auth.Session {
	if m.RefreshTokenRepository != nil {
		return auth.Session{
			m.TokenRepository,
			m.ConfigRepository,
			m.RefreshTokenRepository,
		}
	}

	return auth.Session{
		m.TokenRepository,
		m.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// Deprecated: Use GetCountriesShort instead
func (m *MiscService) GetCountries(input *misc.GetCountriesParams) ([]*basicclientmodels.CountryObject, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := m.Client.Misc.GetCountries(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetCountryGroupsShort instead
func (m *MiscService) GetCountryGroups(input *misc.GetCountryGroupsParams) ([]*basicclientmodels.RetrieveCountryGroupResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := m.Client.Misc.GetCountryGroups(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use AddCountryGroupShort instead
func (m *MiscService) AddCountryGroup(input *misc.AddCountryGroupParams) (*basicclientmodels.AddCountryGroupResponse, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, forbidden, conflict, err := m.Client.Misc.AddCountryGroup(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use UpdateCountryGroupShort instead
func (m *MiscService) UpdateCountryGroup(input *misc.UpdateCountryGroupParams) (*basicclientmodels.CountryGroupObject, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, err := m.Client.Misc.UpdateCountryGroup(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use DeleteCountryGroupShort instead
func (m *MiscService) DeleteCountryGroup(input *misc.DeleteCountryGroupParams) error {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, forbidden, notFound, err := m.Client.Misc.DeleteCountryGroup(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
	}
	if forbidden != nil {
		return forbidden
	}
	if notFound != nil {
		return notFound
	}
	if err != nil {
		return err
	}

	return nil
}

// Deprecated: Use GetLanguagesShort instead
func (m *MiscService) GetLanguages(input *misc.GetLanguagesParams) (map[string]interface{}, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := m.Client.Misc.GetLanguages(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetTimeZonesShort instead
func (m *MiscService) GetTimeZones(input *misc.GetTimeZonesParams) ([]string, error) {
	token, err := m.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, err := m.Client.Misc.GetTimeZones(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetTimeShort instead
func (m *MiscService) PublicGetTime(input *misc.PublicGetTimeParams) (*basicclientmodels.RetrieveTimeResponse, error) {
	ok, err := m.Client.Misc.PublicGetTime(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetCountriesShort instead
func (m *MiscService) PublicGetCountries(input *misc.PublicGetCountriesParams) ([]*basicclientmodels.CountryObject, error) {
	ok, badRequest, err := m.Client.Misc.PublicGetCountries(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetLanguagesShort instead
func (m *MiscService) PublicGetLanguages(input *misc.PublicGetLanguagesParams) (map[string]interface{}, error) {
	ok, badRequest, err := m.Client.Misc.PublicGetLanguages(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetTimeZonesShort instead
func (m *MiscService) PublicGetTimeZones(input *misc.PublicGetTimeZonesParams) ([]string, error) {
	ok, badRequest, err := m.Client.Misc.PublicGetTimeZones(input)
	if badRequest != nil {
		return nil, badRequest
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) GetCountriesShort(input *misc.GetCountriesParams) ([]*basicclientmodels.CountryObject, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Misc.GetCountriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) GetCountryGroupsShort(input *misc.GetCountryGroupsParams) ([]*basicclientmodels.RetrieveCountryGroupResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Misc.GetCountryGroupsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) AddCountryGroupShort(input *misc.AddCountryGroupParams) (*basicclientmodels.AddCountryGroupResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := m.Client.Misc.AddCountryGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (m *MiscService) UpdateCountryGroupShort(input *misc.UpdateCountryGroupParams) (*basicclientmodels.CountryGroupObject, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Misc.UpdateCountryGroupShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) DeleteCountryGroupShort(input *misc.DeleteCountryGroupParams) error {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	_, err := m.Client.Misc.DeleteCountryGroupShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (m *MiscService) GetLanguagesShort(input *misc.GetLanguagesParams) (map[string]interface{}, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Misc.GetLanguagesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) GetTimeZonesShort(input *misc.GetTimeZonesParams) ([]string, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(m.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  m.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := m.Client.Misc.GetTimeZonesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) PublicGetTimeShort(input *misc.PublicGetTimeParams) (*basicclientmodels.RetrieveTimeResponse, error) {
	ok, err := m.Client.Misc.PublicGetTimeShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) PublicGetCountriesShort(input *misc.PublicGetCountriesParams) ([]*basicclientmodels.CountryObject, error) {
	ok, err := m.Client.Misc.PublicGetCountriesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) PublicGetLanguagesShort(input *misc.PublicGetLanguagesParams) (map[string]interface{}, error) {
	ok, err := m.Client.Misc.PublicGetLanguagesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (m *MiscService) PublicGetTimeZonesShort(input *misc.PublicGetTimeZonesParams) ([]string, error) {
	ok, err := m.Client.Misc.PublicGetTimeZonesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
