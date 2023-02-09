// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reporting

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_moderation_rule"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminModerationRuleService struct {
	Client                 *reportingclient.JusticeReportingService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *AdminModerationRuleService) GetAuthSession() auth.Session {
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

// deprecated(2022-01-10): please use CreateModerationRuleShort instead.
func (aaa *AdminModerationRuleService) CreateModerationRule(input *admin_moderation_rule.CreateModerationRuleParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, conflict, internalServerError, err := aaa.Client.AdminModerationRule.CreateModerationRule(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if conflict != nil {
		return conflict
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use UpdateModerationRuleShort instead.
func (aaa *AdminModerationRuleService) UpdateModerationRule(input *admin_moderation_rule.UpdateModerationRuleParams) (*reportingclientmodels.RestapiModerationRuleResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, internalServerError, err := aaa.Client.AdminModerationRule.UpdateModerationRule(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
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

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use DeleteModerationRuleShort instead.
func (aaa *AdminModerationRuleService) DeleteModerationRule(input *admin_moderation_rule.DeleteModerationRuleParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, internalServerError, err := aaa.Client.AdminModerationRule.DeleteModerationRule(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use UpdateModerationRuleStatusShort instead.
func (aaa *AdminModerationRuleService) UpdateModerationRuleStatus(input *admin_moderation_rule.UpdateModerationRuleStatusParams) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, notFound, internalServerError, err := aaa.Client.AdminModerationRule.UpdateModerationRuleStatus(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if notFound != nil {
		return notFound
	}
	if internalServerError != nil {
		return internalServerError
	}
	if err != nil {
		return err
	}

	return nil
}

// deprecated(2022-01-10): please use GetModerationRulesShort instead.
func (aaa *AdminModerationRuleService) GetModerationRules(input *admin_moderation_rule.GetModerationRulesParams) (*reportingclientmodels.RestapiModerationRulesList, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, internalServerError, err := aaa.Client.AdminModerationRule.GetModerationRules(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// deprecated(2022-01-10): please use GetModerationRuleDetailsShort instead.
func (aaa *AdminModerationRuleService) GetModerationRuleDetails(input *admin_moderation_rule.GetModerationRuleDetailsParams) (*reportingclientmodels.RestapiModerationRuleResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, internalServerError, err := aaa.Client.AdminModerationRule.GetModerationRuleDetails(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminModerationRuleService) CreateModerationRuleShort(input *admin_moderation_rule.CreateModerationRuleParams) error {
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

	_, err := aaa.Client.AdminModerationRule.CreateModerationRuleShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminModerationRuleService) UpdateModerationRuleShort(input *admin_moderation_rule.UpdateModerationRuleParams) (*reportingclientmodels.RestapiModerationRuleResponse, error) {
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

	ok, err := aaa.Client.AdminModerationRule.UpdateModerationRuleShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminModerationRuleService) DeleteModerationRuleShort(input *admin_moderation_rule.DeleteModerationRuleParams) error {
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

	_, err := aaa.Client.AdminModerationRule.DeleteModerationRuleShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminModerationRuleService) UpdateModerationRuleStatusShort(input *admin_moderation_rule.UpdateModerationRuleStatusParams) error {
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

	_, err := aaa.Client.AdminModerationRule.UpdateModerationRuleStatusShort(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminModerationRuleService) GetModerationRulesShort(input *admin_moderation_rule.GetModerationRulesParams) (*reportingclientmodels.RestapiModerationRulesList, error) {
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

	ok, err := aaa.Client.AdminModerationRule.GetModerationRulesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminModerationRuleService) GetModerationRuleDetailsShort(input *admin_moderation_rule.GetModerationRuleDetailsParams) (*reportingclientmodels.RestapiModerationRuleResponse, error) {
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

	ok, err := aaa.Client.AdminModerationRule.GetModerationRuleDetailsShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
