// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reporting

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime/client"
)

type AdminExtensionCategoriesandAutoModerationActionsService struct {
	Client                 *reportingclient.JusticeReportingService
	ConfigRepository       repository.ConfigRepository
	TokenRepository        repository.TokenRepository
	RefreshTokenRepository repository.RefreshTokenRepository
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) GetAuthSession() auth.Session {
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

// Deprecated: 2022-01-10 - please use AdminFindActionListShort instead.
func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminFindActionList(input *admin_extension_categories_and_auto_moderation_actions.AdminFindActionListParams) (*reportingclientmodels.RestapiActionListAPIResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminFindActionList(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminCreateModActionShort instead.
func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminCreateModAction(input *admin_extension_categories_and_auto_moderation_actions.AdminCreateModActionParams) (*reportingclientmodels.RestapiActionAPIResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, internalServerError, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminCreateModAction(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminFindExtensionCategoryListShort instead.
func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminFindExtensionCategoryList(input *admin_extension_categories_and_auto_moderation_actions.AdminFindExtensionCategoryListParams) (*reportingclientmodels.RestapiExtensionCategoryListAPIResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, internalServerError, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminFindExtensionCategoryList(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminCreateExtensionCategoryShort instead.
func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminCreateExtensionCategory(input *admin_extension_categories_and_auto_moderation_actions.AdminCreateExtensionCategoryParams) (*reportingclientmodels.RestapiExtensionCategoryAPIResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, internalServerError, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminCreateExtensionCategory(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminFindActionListShort(input *admin_extension_categories_and_auto_moderation_actions.AdminFindActionListParams) (*reportingclientmodels.RestapiActionListAPIResponse, error) {
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

	ok, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminFindActionListShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminCreateModActionShort(input *admin_extension_categories_and_auto_moderation_actions.AdminCreateModActionParams) (*reportingclientmodels.RestapiActionAPIResponse, error) {
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

	created, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminCreateModActionShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminFindExtensionCategoryListShort(input *admin_extension_categories_and_auto_moderation_actions.AdminFindExtensionCategoryListParams) (*reportingclientmodels.RestapiExtensionCategoryListAPIResponse, error) {
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

	ok, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminFindExtensionCategoryListShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminExtensionCategoriesandAutoModerationActionsService) AdminCreateExtensionCategoryShort(input *admin_extension_categories_and_auto_moderation_actions.AdminCreateExtensionCategoryParams) (*reportingclientmodels.RestapiExtensionCategoryAPIResponse, error) {
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

	created, err := aaa.Client.AdminExtensionCategoriesAndAutoModerationActions.AdminCreateExtensionCategoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}
