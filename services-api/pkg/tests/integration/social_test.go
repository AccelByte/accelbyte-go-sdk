// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/auth"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

var (
	statConfigurationService = &social.StatConfigurationService{
		Client:          factory.NewSocialClient(auth.DefaultConfigRepositoryImpl()),
		TokenRepository: auth.DefaultTokenRepositoryImpl(),
	}
	statCodeSocial = "123gosdkstat"
	tagsSocial     []string
	emptyFloat     = float64(1)
	setBy          = socialclientmodels.StatCreateSetByCLIENT
	bodyStatSocial = &socialclientmodels.StatCreate{
		DefaultValue:  &emptyFloat,
		Description:   emptyString,
		IncrementOnly: false,
		Maximum:       0,
		Minimum:       0,
		Name:          &statCodeSocial,
		SetAsGlobal:   false,
		SetBy:         &setBy,
		StatCode:      &statCodeSocial,
		Tags:          tagsSocial,
	}
)

// Deleting a statistic
func TestIntegrationDeleteStat(t *testing.T) {
	Init()
	inputStat := &stat_configuration.DeleteStatParams{
		Namespace: integration.NamespaceTest,
		StatCode:  statCodeSocial,
	}
	err := statConfigurationService.DeleteStatShort(inputStat)

	assert.Nil(t, err, "err should be nil")
}

// Creating a statistic
func TestIntegrationCreateStat(t *testing.T) {
	Init()
	tagsSocial = append(tagsSocial, tag)
	inputStat := &stat_configuration.CreateStatParams{
		Body:      bodyStatSocial,
		Namespace: integration.NamespaceTest,
	}
	ok, err := statConfigurationService.CreateStatShort(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting a statistic by its Stat Code
func TestIntegrationGetStat(t *testing.T) {
	Init()
	tagsSocial = append(tagsSocial, tag)

	inputStat := &stat_configuration.GetStatParams{
		Namespace: integration.NamespaceTest,
		StatCode:  statCodeSocial,
	}
	ok, errOk := statConfigurationService.GetStatShort(inputStat)

	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Getting all statistics
func TestIntegrationGetStats(t *testing.T) {
	Init()
	inputStat := &stat_configuration.GetStatsParams{
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
	}
	ok, err := statConfigurationService.GetStatsShort(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Querying statistics by keyword
func TestIntegrationQueryStats(t *testing.T) {
	Init()
	inputStat := &stat_configuration.QueryStatsParams{
		Keyword:   statCodeSocial,
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
	}
	ok, err := statConfigurationService.QueryStatsShort(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

// Updating a statistic
func TestIntegrationUpdateStat(t *testing.T) {
	Init()
	bodyStatUpdate := &socialclientmodels.StatUpdate{
		Description: "",
		Name:        statCodeSocial,
		Tags:        nil,
	}
	inputStat := &stat_configuration.UpdateStatParams{
		Body:      bodyStatUpdate,
		Namespace: integration.NamespaceTest,
		StatCode:  statCodeSocial,
	}
	ok, err := statConfigurationService.UpdateStatShort(inputStat)

	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}
