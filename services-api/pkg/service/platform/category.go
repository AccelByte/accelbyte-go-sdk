package platform

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type CategoryService struct {
	Client          *platformclient.JusticePlatformService
	TokenRepository repository.TokenRepository
}

func (c *CategoryService) CreateCategory(input *category.CreateCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	created, badRequest, notFound, conflict, unprocessableEntity, err := c.Client.Category.CreateCategory(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return created.GetPayload(), nil
}

func (c *CategoryService) DeleteCategory(input *category.DeleteCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, notFound, conflict, err := c.Client.Category.DeleteCategory(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
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
	return ok.GetPayload(), nil
}

func (c *CategoryService) DownloadCategories(input *category.DownloadCategoriesParams) ([]*platformclientmodels.HierarchicalCategoryInfo, error) {
	ok, notFound, err := c.Client.Category.DownloadCategories(input)
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

func (c *CategoryService) GetCategory(input *category.GetCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	publicGetCategory, notFound, err := c.Client.Category.GetCategory(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return publicGetCategory.GetPayload(), nil
}

func (c *CategoryService) GetChildCategories(input *category.GetChildCategoriesParams) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.GetChildCategories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) GetDescendantCategories(input *category.GetDescendantCategoriesParams) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.GetDescendantCategories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) GetRootCategories(input *category.GetRootCategoriesParams) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.GetRootCategories(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) ListCategoriesBasic(input *category.ListCategoriesBasicParams) ([]*platformclientmodels.BasicCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, err := c.Client.Category.ListCategoriesBasic(input, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetCategory(input *category.PublicGetCategoryParams) (*platformclientmodels.CategoryInfo, error) {
	ok, notFound, err := c.Client.Category.PublicGetCategory(input)
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

func (c *CategoryService) PublicGetChildCategories(input *category.PublicGetChildCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetChildCategories(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetDescendantCategories(input *category.PublicGetDescendantCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetDescendantCategories(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) PublicGetRootCategories(input *category.PublicGetRootCategoriesParams) ([]*platformclientmodels.CategoryInfo, error) {
	ok, err := c.Client.Category.PublicGetRootCategories(input)
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (c *CategoryService) UpdateCategory(input *category.UpdateCategoryParams) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := c.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := c.Client.Category.UpdateCategory(input, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, conflict
	}
	if unprocessableEntity != nil {
		errorMsg, _ := json.Marshal(*unprocessableEntity.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, unprocessableEntity
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
