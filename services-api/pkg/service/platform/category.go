// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
)

type CategoryService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

// Deprecated: Use GetRootCategoriesShort instead
func (c *CategoryService) GetRootCategories(input *category.GetRootCategoriesParams) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.GetRootCategories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use CreateCategoryShort instead
func (c *CategoryService) CreateCategory(input *category.CreateCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, err := c.Client.Category.CreateCategory(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

// Deprecated: Use ListCategoriesBasicShort instead
func (c *CategoryService) ListCategoriesBasic(input *category.ListCategoriesBasicParams) ([]*platformclientmodels.BasicCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.ListCategoriesBasic(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetCategoryShort instead
func (c *CategoryService) GetCategory(input *category.GetCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, err := c.Client.Category.GetCategory(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use UpdateCategoryShort instead
func (c *CategoryService) UpdateCategory(input *category.UpdateCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := c.Client.Category.UpdateCategory(input, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		return nil, badRequest
	}
	if notFound != nil {
		return nil, notFound
	}
	if conflict != nil {
		return nil, conflict
	}
	if unprocessableEntity != nil {
		return nil, unprocessableEntity
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DeleteCategoryShort instead
func (c *CategoryService) DeleteCategory(input *category.DeleteCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := c.Client.Category.DeleteCategory(input, client.BearerToken(*token.AccessToken))
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

// Deprecated: Use GetChildCategoriesShort instead
func (c *CategoryService) GetChildCategories(input *category.GetChildCategoriesParams) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.GetChildCategories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use GetDescendantCategoriesShort instead
func (c *CategoryService) GetDescendantCategories(input *category.GetDescendantCategoriesParams) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.GetDescendantCategories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetRootCategoriesShort instead
func (c *CategoryService) PublicGetRootCategories(input *category.PublicGetRootCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetRootCategories(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use DownloadCategoriesShort instead
func (c *CategoryService) DownloadCategories(input *category.DownloadCategoriesParams) ([]*platformclientmodels.HierarchicalCategoryInfo, error) {
	ok, notFound, err := c.Client.Category.DownloadCategories(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetCategoryShort instead
func (c *CategoryService) PublicGetCategory(input *category.PublicGetCategoryParams) (*platformclientmodels.CategoryInfo, error) {
	ok, notFound, err := c.Client.Category.PublicGetCategory(input)
	if notFound != nil {
		return nil, notFound
	}
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetChildCategoriesShort instead
func (c *CategoryService) PublicGetChildCategories(input *category.PublicGetChildCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetChildCategories(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

// Deprecated: Use PublicGetDescendantCategoriesShort instead
func (c *CategoryService) PublicGetDescendantCategories(input *category.PublicGetDescendantCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetDescendantCategories(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) GetRootCategoriesShort(input *category.GetRootCategoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.GetRootCategoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) CreateCategoryShort(input *category.CreateCategoryParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	created, err := c.Client.Category.CreateCategoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return created.GetPayload(), nil
}

func (c *CategoryService) ListCategoriesBasicShort(input *category.ListCategoriesBasicParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.BasicCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.ListCategoriesBasicShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) GetCategoryShort(input *category.GetCategoryParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.GetCategoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) UpdateCategoryShort(input *category.UpdateCategoryParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.UpdateCategoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) DeleteCategoryShort(input *category.DeleteCategoryParams, authInfoWriter runtime.ClientAuthInfoWriter) (*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.DeleteCategoryShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) GetChildCategoriesShort(input *category.GetChildCategoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.GetChildCategoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) GetDescendantCategoriesShort(input *category.GetDescendantCategoriesParams, authInfoWriter runtime.ClientAuthInfoWriter) ([]*platformclientmodels.FullCategoryInfo, error) {
	if authInfoWriter == nil {
		security := [][]string{
			{"bearer"},
		}
		authInfoWriter = auth.AuthInfoWriter(c.TokenRepository, nil, security, "")
	}
	ok, err := c.Client.Category.GetDescendantCategoriesShort(input, authInfoWriter)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetRootCategoriesShort(input *category.PublicGetRootCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetRootCategoriesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) DownloadCategoriesShort(input *category.DownloadCategoriesParams) ([]*platformclientmodels.HierarchicalCategoryInfo, error) {
	ok, err := c.Client.Category.DownloadCategoriesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetCategoryShort(input *category.PublicGetCategoryParams) (*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetCategoryShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetChildCategoriesShort(input *category.PublicGetChildCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetChildCategoriesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetDescendantCategoriesShort(input *category.PublicGetDescendantCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetDescendantCategoriesShort(input)
	if err != nil {
		return nil, err
	}

	return ok.GetPayload(), nil
}
