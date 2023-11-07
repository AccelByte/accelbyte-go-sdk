// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
)

type AdminContentV2Service struct {
	Client           *ugcclient.JusticeUgcService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *AdminContentV2Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use AdminGetContentByChannelIDV2Short instead.
func (aaa *AdminContentV2Service) AdminGetContentByChannelIDV2(input *admin_content_v2.AdminGetContentByChannelIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.AdminContentV2.AdminGetContentByChannelIDV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminCreateContentV2Short instead.
func (aaa *AdminContentV2Service) AdminCreateContentV2(input *admin_content_v2.AdminCreateContentV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := aaa.Client.AdminContentV2.AdminCreateContentV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteOfficialContentV2Short instead.
func (aaa *AdminContentV2Service) AdminDeleteOfficialContentV2(input *admin_content_v2.AdminDeleteOfficialContentV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminDeleteOfficialContentV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUpdateOfficialContentV2Short instead.
func (aaa *AdminContentV2Service) AdminUpdateOfficialContentV2(input *admin_content_v2.AdminUpdateOfficialContentV2Params) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.AdminContentV2.AdminUpdateOfficialContentV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUpdateOfficialContentFileLocationShort instead.
func (aaa *AdminContentV2Service) AdminUpdateOfficialContentFileLocation(input *admin_content_v2.AdminUpdateOfficialContentFileLocationParams) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminUpdateOfficialContentFileLocation(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGenerateOfficialContentUploadURLV2Short instead.
func (aaa *AdminContentV2Service) AdminGenerateOfficialContentUploadURLV2(input *admin_content_v2.AdminGenerateOfficialContentUploadURLV2Params) (*ugcclientmodels.ModelsGenerateContentUploadURLResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.AdminContentV2.AdminGenerateOfficialContentUploadURLV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminListContentV2Short instead.
func (aaa *AdminContentV2Service) AdminListContentV2(input *admin_content_v2.AdminListContentV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.AdminContentV2.AdminListContentV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminBulkGetContentByIDsV2Short instead.
func (aaa *AdminContentV2Service) AdminBulkGetContentByIDsV2(input *admin_content_v2.AdminBulkGetContentByIDsV2Params) ([]*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, forbidden, internalServerError, err := aaa.Client.AdminContentV2.AdminBulkGetContentByIDsV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
	}
	if forbidden != nil {
		return nil, forbidden
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetContentByShareCodeV2Short instead.
func (aaa *AdminContentV2Service) AdminGetContentByShareCodeV2(input *admin_content_v2.AdminGetContentByShareCodeV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminGetContentByShareCodeV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use AdminGetContentByContentIDV2Short instead.
func (aaa *AdminContentV2Service) AdminGetContentByContentIDV2(input *admin_content_v2.AdminGetContentByContentIDV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminGetContentByContentIDV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUpdateScreenshotsV2Short instead.
func (aaa *AdminContentV2Service) AdminUpdateScreenshotsV2(input *admin_content_v2.AdminUpdateScreenshotsV2Params) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminUpdateScreenshotsV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUploadContentScreenshotV2Short instead.
func (aaa *AdminContentV2Service) AdminUploadContentScreenshotV2(input *admin_content_v2.AdminUploadContentScreenshotV2Params) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminUploadContentScreenshotV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

	return created.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminDeleteContentScreenshotV2Short instead.
func (aaa *AdminContentV2Service) AdminDeleteContentScreenshotV2(input *admin_content_v2.AdminDeleteContentScreenshotV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminDeleteContentScreenshotV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return badRequest
	}
	if unauthorized != nil {
		return unauthorized
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

// Deprecated: 2022-01-10 - please use AdminDeleteUserContentV2Short instead.
func (aaa *AdminContentV2Service) AdminDeleteUserContentV2(input *admin_content_v2.AdminDeleteUserContentV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminDeleteUserContentV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUpdateUserContentV2Short instead.
func (aaa *AdminContentV2Service) AdminUpdateUserContentV2(input *admin_content_v2.AdminUpdateUserContentV2Params) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.AdminContentV2.AdminUpdateUserContentV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUpdateUserContentFileLocationShort instead.
func (aaa *AdminContentV2Service) AdminUpdateUserContentFileLocation(input *admin_content_v2.AdminUpdateUserContentFileLocationParams) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminUpdateUserContentFileLocation(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGenerateUserContentUploadURLV2Short instead.
func (aaa *AdminContentV2Service) AdminGenerateUserContentUploadURLV2(input *admin_content_v2.AdminGenerateUserContentUploadURLV2Params) (*ugcclientmodels.ModelsGenerateContentUploadURLResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.AdminContentV2.AdminGenerateUserContentUploadURLV2(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if unauthorized != nil {
		return nil, unauthorized
	}
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: 2022-01-10 - please use AdminGetContentByUserIDV2Short instead.
func (aaa *AdminContentV2Service) AdminGetContentByUserIDV2(input *admin_content_v2.AdminGetContentByUserIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminGetContentByUserIDV2(input, client.BearerToken(*token.AccessToken))
	if unauthorized != nil {
		return nil, unauthorized
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

// Deprecated: 2022-01-10 - please use AdminUpdateContentHideStatusV2Short instead.
func (aaa *AdminContentV2Service) AdminUpdateContentHideStatusV2(input *admin_content_v2.AdminUpdateContentHideStatusV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.AdminContentV2.AdminUpdateContentHideStatusV2(input, client.BearerToken(*token.AccessToken))
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
	if internalServerError != nil {
		return nil, internalServerError
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminGetContentByChannelIDV2Short(input *admin_content_v2.AdminGetContentByChannelIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminGetContentByChannelIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminCreateContentV2Short(input *admin_content_v2.AdminCreateContentV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
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

	created, err := aaa.Client.AdminContentV2.AdminCreateContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminDeleteOfficialContentV2Short(input *admin_content_v2.AdminDeleteOfficialContentV2Params) error {
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

	_, err := aaa.Client.AdminContentV2.AdminDeleteOfficialContentV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminContentV2Service) AdminUpdateOfficialContentV2Short(input *admin_content_v2.AdminUpdateOfficialContentV2Params) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminUpdateOfficialContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminUpdateOfficialContentFileLocationShort(input *admin_content_v2.AdminUpdateOfficialContentFileLocationParams) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminUpdateOfficialContentFileLocationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminGenerateOfficialContentUploadURLV2Short(input *admin_content_v2.AdminGenerateOfficialContentUploadURLV2Params) (*ugcclientmodels.ModelsGenerateContentUploadURLResponse, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminGenerateOfficialContentUploadURLV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminListContentV2Short(input *admin_content_v2.AdminListContentV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminListContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminBulkGetContentByIDsV2Short(input *admin_content_v2.AdminBulkGetContentByIDsV2Params) ([]*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminBulkGetContentByIDsV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminGetContentByShareCodeV2Short(input *admin_content_v2.AdminGetContentByShareCodeV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminGetContentByShareCodeV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminGetContentByContentIDV2Short(input *admin_content_v2.AdminGetContentByContentIDV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminGetContentByContentIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminUpdateScreenshotsV2Short(input *admin_content_v2.AdminUpdateScreenshotsV2Params) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminUpdateScreenshotsV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminUploadContentScreenshotV2Short(input *admin_content_v2.AdminUploadContentScreenshotV2Params) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
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

	created, err := aaa.Client.AdminContentV2.AdminUploadContentScreenshotV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminDeleteContentScreenshotV2Short(input *admin_content_v2.AdminDeleteContentScreenshotV2Params) error {
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

	_, err := aaa.Client.AdminContentV2.AdminDeleteContentScreenshotV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminContentV2Service) AdminDeleteUserContentV2Short(input *admin_content_v2.AdminDeleteUserContentV2Params) error {
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

	_, err := aaa.Client.AdminContentV2.AdminDeleteUserContentV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *AdminContentV2Service) AdminUpdateUserContentV2Short(input *admin_content_v2.AdminUpdateUserContentV2Params) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminUpdateUserContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminUpdateUserContentFileLocationShort(input *admin_content_v2.AdminUpdateUserContentFileLocationParams) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminUpdateUserContentFileLocationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminGenerateUserContentUploadURLV2Short(input *admin_content_v2.AdminGenerateUserContentUploadURLV2Params) (*ugcclientmodels.ModelsGenerateContentUploadURLResponse, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminGenerateUserContentUploadURLV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminGetContentByUserIDV2Short(input *admin_content_v2.AdminGetContentByUserIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminGetContentByUserIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *AdminContentV2Service) AdminUpdateContentHideStatusV2Short(input *admin_content_v2.AdminUpdateContentHideStatusV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
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

	ok, err := aaa.Client.AdminContentV2.AdminUpdateContentHideStatusV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
