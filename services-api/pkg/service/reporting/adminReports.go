// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reporting

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reports"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminReportsService struct {
	Client                 *reportingclient.JusticeReportingService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *AdminReportsService) GetAuthSession() auth.Session {
	if aaa.RefreshTokenRepository != nil {
		return auth.Session{
			aaa.TokenRepository,
			aaa.ConfigRepository,
			aaa.RefreshTokenRepository,
		}
	}

	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		auth.DefaultRefreshTokenImpl(),
	}
}

// deprecated(2022-01-10): please use ListReportsShort instead.
func (aaa *AdminReportsService) ListReports(input *admin_reports.ListReportsParams) (*reportingclientmodels.RestapiReportListResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, internalServerError, err := aaa.Client.AdminReports.ListReports(input, client.BearerToken(*token.AccessToken))
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use AdminSubmitReportShort instead.
func (aaa *AdminReportsService) AdminSubmitReport(input *admin_reports.AdminSubmitReportParams) (*reportingclientmodels.RestapiSubmitReportResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, conflict, internalServerError, err := aaa.Client.AdminReports.AdminSubmitReport(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if conflict != nil {
		return nil, conflict
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminReportsService) ListReportsShort(input *admin_reports.ListReportsParams) (*reportingclientmodels.RestapiReportListResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	ok, err := aaa.Client.AdminReports.ListReportsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminReportsService) AdminSubmitReportShort(input *admin_reports.AdminSubmitReportParams) (*reportingclientmodels.RestapiSubmitReportResponse, error) {
	authInfoWriter := input.AuthInfoWriter
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(aaa.GetAuthSession(), security, "")
	}
	if input.RetryPolicy == nil {
		input.RetryPolicy = &utils.Retry{
			MaxTries:   utils.MaxTries,
			Backoff:    utils.NewConstantBackoff(0),
			Transport:  aaa.Client.Runtime.Transport,
			RetryCodes: utils.RetryCodes,
		}
	}

	created, err := aaa.Client.AdminReports.AdminSubmitReportShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
