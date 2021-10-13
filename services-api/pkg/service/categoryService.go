package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
)

type CategoryService struct {
	OauthService    *iam.OAuth20Service
	PlatformService *platformclient.JusticePlatformService
}

func (categoryService *CategoryService) GetCategory(namespace, categoryPath string, storeId *string) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.GetCategoryParams{
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	publicGetCategory, notFound, err := categoryService.PlatformService.Category.GetCategory(params, client.BearerToken(*token.AccessToken))
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

func (categoryService *CategoryService) UpdateCategory(namespace, storeId, categoryPath string,
	categoryUpdate platformclientmodels.CategoryUpdate) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.UpdateCategoryParams{
		Body:         &categoryUpdate,
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	ok, badRequest, notFound, conflict, unprocessableEntity, err := categoryService.PlatformService.Category.UpdateCategory(params, client.BearerToken(*token.AccessToken))
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

func (categoryService *CategoryService) DeleteCategory(namespace, storeId, categoryPath string) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.DeleteCategoryParams{
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	ok, notFound, conflict, err := categoryService.PlatformService.Category.DeleteCategory(params, client.BearerToken(*token.AccessToken))
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

func (categoryService *CategoryService) ListCategoriesBasic(namespace string, storeId *string) ([]*platformclientmodels.BasicCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.ListCategoriesBasicParams{
		Namespace: namespace,
		StoreID:   storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.ListCategoriesBasic(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) GetDescendantCategories(namespace, categoryPath string, storeId *string) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.GetDescendantCategoriesParams{
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.GetDescendantCategories(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) GetChildCategories(namespace, categoryPath string, storeId *string) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.GetChildCategoriesParams{
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.GetChildCategories(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) GetRootCategories(namespace string, storeId *string) ([]*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.GetRootCategoriesParams{
		Namespace: namespace,
		StoreID:   storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.GetRootCategories(params, client.BearerToken(*token.AccessToken))

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) CreateCategory(namespace, storeId string, categoryCreate platformclientmodels.CategoryCreate) (*platformclientmodels.FullCategoryInfo, error) {
	token, err := categoryService.OauthService.TokenRepository.GetToken()
	if err != nil {
		return nil, err
	}
	params := &category.CreateCategoryParams{
		Body:      &categoryCreate,
		Namespace: namespace,
		StoreID:   storeId,
	}
	createCategory, badRequest, notFound, conflict, unprocessableEntity, err := categoryService.PlatformService.Category.CreateCategory(params, client.BearerToken(*token.AccessToken))

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
	return createCategory.GetPayload(), nil
}

func (categoryService *CategoryService) PublicGetChildCategories(namespace, categoryPath string, storeId *string) ([]*platformclientmodels.CategoryInfo, error) {

	params := &category.PublicGetChildCategoriesParams{
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.PublicGetChildCategories(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) PublicGetCategory(namespace, categoryPath string, storeId, language *string) (*platformclientmodels.CategoryInfo, error) {
	params := &category.PublicGetCategoryParams{
		CategoryPath: categoryPath,
		Language:     language,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	publicGetCategory, notFound, err := categoryService.PlatformService.Category.PublicGetCategory(params)
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

func (categoryService *CategoryService) PublicGetRootCategories(namespace string, storeId *string) ([]*platformclientmodels.CategoryInfo, error) {
	params := &category.PublicGetRootCategoriesParams{
		Namespace: namespace,
		StoreID:   storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.PublicGetRootCategories(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) PublicGetDescendantCategories(namespace, categoryPath string, storeId *string) ([]*platformclientmodels.CategoryInfo, error) {
	params := &category.PublicGetDescendantCategoriesParams{
		CategoryPath: categoryPath,
		Namespace:    namespace,
		StoreID:      storeId,
	}
	categoriesBasic, err := categoryService.PlatformService.Category.PublicGetDescendantCategories(params)

	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return categoriesBasic.GetPayload(), nil
}

func (categoryService *CategoryService) DownloadCategories(namespace string, language, storeId *string) ([]*platformclientmodels.HierarchicalCategoryInfo, error) {
	params := &category.DownloadCategoriesParams{
		Language:  language,
		Namespace: namespace,
		StoreID:   storeId,
	}
	ok, notFound, err := categoryService.PlatformService.Category.DownloadCategories(params)

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
