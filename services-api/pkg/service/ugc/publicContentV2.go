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
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/go-openapi/runtime/client"
)

type PublicContentV2Service struct {
	Client           *ugcclient.JusticeUgcService
	ConfigRepository repository.ConfigRepository
	TokenRepository  repository.TokenRepository
}

func (aaa *PublicContentV2Service) GetAuthSession() auth.Session {
	return auth.Session{
		aaa.TokenRepository,
		aaa.ConfigRepository,
		nil,
	}
}

// Deprecated: 2022-01-10 - please use PublicGetContentByChannelIDV2Short instead.
func (aaa *PublicContentV2Service) PublicGetContentByChannelIDV2(input *public_content_v2.PublicGetContentByChannelIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.PublicGetContentByChannelIDV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicListContentV2Short instead.
func (aaa *PublicContentV2Service) PublicListContentV2(input *public_content_v2.PublicListContentV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.PublicListContentV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicBulkGetContentByIDV2Short instead.
func (aaa *PublicContentV2Service) PublicBulkGetContentByIDV2(input *public_content_v2.PublicBulkGetContentByIDV2Params) ([]*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.PublicBulkGetContentByIDV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicGetContentByShareCodeV2Short instead.
func (aaa *PublicContentV2Service) PublicGetContentByShareCodeV2(input *public_content_v2.PublicGetContentByShareCodeV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.PublicGetContentByShareCodeV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicGetContentByIDV2Short instead.
func (aaa *PublicContentV2Service) PublicGetContentByIDV2(input *public_content_v2.PublicGetContentByIDV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.PublicGetContentByIDV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicCreateContentV2Short instead.
func (aaa *PublicContentV2Service) PublicCreateContentV2(input *public_content_v2.PublicCreateContentV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.PublicCreateContentV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicUpdateContentByShareCodeV2Short instead.
func (aaa *PublicContentV2Service) PublicUpdateContentByShareCodeV2(input *public_content_v2.PublicUpdateContentByShareCodeV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, conflict, internalServerError, err := aaa.Client.PublicContentV2.PublicUpdateContentByShareCodeV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicDeleteContentByShareCodeV2Short instead.
func (aaa *PublicContentV2Service) PublicDeleteContentByShareCodeV2(input *public_content_v2.PublicDeleteContentByShareCodeV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.PublicDeleteContentByShareCodeV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicDeleteContentV2Short instead.
func (aaa *PublicContentV2Service) PublicDeleteContentV2(input *public_content_v2.PublicDeleteContentV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.PublicDeleteContentV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicUpdateContentV2Short instead.
func (aaa *PublicContentV2Service) PublicUpdateContentV2(input *public_content_v2.PublicUpdateContentV2Params) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.PublicUpdateContentV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicUpdateContentFileLocationShort instead.
func (aaa *PublicContentV2Service) PublicUpdateContentFileLocation(input *public_content_v2.PublicUpdateContentFileLocationParams) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, forbidden, notFound, internalServerError, err := aaa.Client.PublicContentV2.PublicUpdateContentFileLocation(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicGenerateContentUploadURLV2Short instead.
func (aaa *PublicContentV2Service) PublicGenerateContentUploadURLV2(input *public_content_v2.PublicGenerateContentUploadURLV2Params) (*ugcclientmodels.ModelsGenerateContentUploadURLResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.PublicGenerateContentUploadURLV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use PublicGetContentByUserIDV2Short instead.
func (aaa *PublicContentV2Service) PublicGetContentByUserIDV2(input *public_content_v2.PublicGetContentByUserIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.PublicGetContentByUserIDV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use UpdateScreenshotsV2Short instead.
func (aaa *PublicContentV2Service) UpdateScreenshotsV2(input *public_content_v2.UpdateScreenshotsV2Params) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.UpdateScreenshotsV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use UploadContentScreenshotV2Short instead.
func (aaa *PublicContentV2Service) UploadContentScreenshotV2(input *public_content_v2.UploadContentScreenshotV2Params) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, unauthorized, internalServerError, err := aaa.Client.PublicContentV2.UploadContentScreenshotV2(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: 2022-01-10 - please use DeleteContentScreenshotV2Short instead.
func (aaa *PublicContentV2Service) DeleteContentScreenshotV2(input *public_content_v2.DeleteContentScreenshotV2Params) error {
	token, err := aaa.TokenRepository.GetToken()
	if err != nil {
		return err
	}
	_, badRequest, unauthorized, notFound, internalServerError, err := aaa.Client.PublicContentV2.DeleteContentScreenshotV2(input, client.BearerToken(*token.AccessToken))
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

func (aaa *PublicContentV2Service) PublicGetContentByChannelIDV2Short(input *public_content_v2.PublicGetContentByChannelIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicGetContentByChannelIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicListContentV2Short(input *public_content_v2.PublicListContentV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicListContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicBulkGetContentByIDV2Short(input *public_content_v2.PublicBulkGetContentByIDV2Params) ([]*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicBulkGetContentByIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicGetContentByShareCodeV2Short(input *public_content_v2.PublicGetContentByShareCodeV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicGetContentByShareCodeV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicGetContentByIDV2Short(input *public_content_v2.PublicGetContentByIDV2Params) (*ugcclientmodels.ModelsContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicGetContentByIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicCreateContentV2Short(input *public_content_v2.PublicCreateContentV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
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

	created, err := aaa.Client.PublicContentV2.PublicCreateContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicUpdateContentByShareCodeV2Short(input *public_content_v2.PublicUpdateContentByShareCodeV2Params) (*ugcclientmodels.ModelsCreateContentResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicUpdateContentByShareCodeV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicDeleteContentByShareCodeV2Short(input *public_content_v2.PublicDeleteContentByShareCodeV2Params) error {
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

	_, err := aaa.Client.PublicContentV2.PublicDeleteContentByShareCodeV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicContentV2Service) PublicDeleteContentV2Short(input *public_content_v2.PublicDeleteContentV2Params) error {
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

	_, err := aaa.Client.PublicContentV2.PublicDeleteContentV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}

func (aaa *PublicContentV2Service) PublicUpdateContentV2Short(input *public_content_v2.PublicUpdateContentV2Params) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicUpdateContentV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicUpdateContentFileLocationShort(input *public_content_v2.PublicUpdateContentFileLocationParams) (*ugcclientmodels.ModelsUpdateContentResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicUpdateContentFileLocationShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicGenerateContentUploadURLV2Short(input *public_content_v2.PublicGenerateContentUploadURLV2Params) (*ugcclientmodels.ModelsGenerateContentUploadURLResponse, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicGenerateContentUploadURLV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) PublicGetContentByUserIDV2Short(input *public_content_v2.PublicGetContentByUserIDV2Params) (*ugcclientmodels.ModelsPaginatedContentDownloadResponseV2, error) {
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

	ok, err := aaa.Client.PublicContentV2.PublicGetContentByUserIDV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) UpdateScreenshotsV2Short(input *public_content_v2.UpdateScreenshotsV2Params) (*ugcclientmodels.ModelsUpdateScreenshotResponse, error) {
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

	ok, err := aaa.Client.PublicContentV2.UpdateScreenshotsV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (aaa *PublicContentV2Service) UploadContentScreenshotV2Short(input *public_content_v2.UploadContentScreenshotV2Params) (*ugcclientmodels.ModelsCreateScreenshotResponse, error) {
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

	created, err := aaa.Client.PublicContentV2.UploadContentScreenshotV2Short(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (aaa *PublicContentV2Service) DeleteContentScreenshotV2Short(input *public_content_v2.DeleteContentScreenshotV2Params) error {
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

	_, err := aaa.Client.PublicContentV2.DeleteContentScreenshotV2Short(input, authInfoWriter)
	if err != nil {
		return err
	}

	return nil
}
