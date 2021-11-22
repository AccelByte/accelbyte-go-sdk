package repository

import "client/pkg/models"

type ConfigRepositoryImpl struct {
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return models.ClientId
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return models.ClientSecret
}

// Empty string will use default base URL provided by SDK

func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return models.JusticeBaseURL
}
