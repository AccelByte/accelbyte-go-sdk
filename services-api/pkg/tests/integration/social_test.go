// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration_test

import (
	"bytes"
	"os"
	"testing"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
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
		TokenRepository: tokenRepository,
	}
	statCodeSocial = "123gosdkstat"
	tagsSocial     []string
	setBy          = socialclientmodels.StatCreateSetByCLIENT
	bodyStatSocial = &socialclientmodels.StatCreate{
		DefaultValue:  &integration.EmptyFloat,
		Description:   integration.EmptyString,
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

func TestIntegrationDeleteStat(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Delete a statistic
	inputStat := &stat_configuration.DeleteStatParams{
		Namespace: integration.NamespaceTest,
		StatCode:  statCodeSocial,
	}

	err := statConfigurationService.DeleteStatShort(inputStat)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
}

func TestIntegrationCreateStat(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Create a statistic
	tagsSocial = append(tagsSocial, tag)
	inputStat := &stat_configuration.CreateStatParams{
		Body:      bodyStatSocial,
		Namespace: integration.NamespaceTest,
	}

	ok, err := statConfigurationService.CreateStatShort(inputStat)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationGetStat(t *testing.T) {
	// Login User - Arrange
	Init()

	tagsSocial = append(tagsSocial, tag)

	// CASE Get a statistic by its Stat Code
	inputStat := &stat_configuration.GetStatParams{
		Namespace: integration.NamespaceTest,
		StatCode:  statCodeSocial,
	}

	ok, errOk := statConfigurationService.GetStatShort(inputStat)
	// ESAC

	// Assert
	assert.Nil(t, errOk, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationGetStats(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Get all statistics
	inputStat := &stat_configuration.GetStatsParams{
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
	}

	ok, err := statConfigurationService.GetStatsShort(inputStat)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationQueryStats(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Query statistics by keyword
	inputStat := &stat_configuration.QueryStatsParams{
		Keyword:   statCodeSocial,
		Limit:     nil,
		Namespace: integration.NamespaceTest,
		Offset:    nil,
	}

	ok, err := statConfigurationService.QueryStatsShort(inputStat)
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationUpdateStat(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Update a statistic
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
	// ESAC

	// Assert
	assert.Nil(t, err, "err should be nil")
	assert.NotNil(t, ok, "response should not be nil")
}

func TestIntegrationExportStat(t *testing.T) {
	// Login User - Arrange
	Init()

	// CASE Stat export
	inputExportStat := &stat_configuration.ExportStatsParams{
		Namespace: integration.NamespaceTest,
	}

	writer := bytes.NewBuffer(nil)
	okExport, errExport := statConfigurationService.ExportStatsShort(inputExportStat, writer)
	// ESAC

	// Assert
	assert.Nil(t, errExport, "err should be nil")
	assert.NotNil(t, okExport, "should not be nil")

	// Arrange
	fileName := "test.json"
	file, err := utils.ConvertByteToFile(okExport, writer, fileName)
	if err != nil {
		t.Fatal(err.Error())
	}
	defer func() {
		_ = os.Remove(fileName)
	}()

	// CASE Stat import
	inputImportStat := &stat_configuration.ImportStatsParams{
		File:            file,
		Namespace:       integration.NamespaceTest,
		ReplaceExisting: nil,
	}

	okImport, errImport := statConfigurationService.ImportStatsShort(inputImportStat)
	// ESAC

	// Assert
	assert.Nil(t, errImport, "err should be nil")
	assert.NotNil(t, okImport, "err should not be nil")
}
