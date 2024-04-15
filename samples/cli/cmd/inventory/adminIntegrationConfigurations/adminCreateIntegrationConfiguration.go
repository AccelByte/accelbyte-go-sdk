// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminIntegrationConfigurations

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_integration_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/inventory"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCreateIntegrationConfigurationCmd represents the AdminCreateIntegrationConfiguration command
var AdminCreateIntegrationConfigurationCmd = &cobra.Command{
	Use:   "adminCreateIntegrationConfiguration",
	Short: "Admin create integration configuration",
	Long:  `Admin create integration configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminIntegrationConfigurationsService := &inventory.AdminIntegrationConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsCreateIntegrationConfigurationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_integration_configurations.AdminCreateIntegrationConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := adminIntegrationConfigurationsService.AdminCreateIntegrationConfigurationShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateIntegrationConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminCreateIntegrationConfigurationCmd.MarkFlagRequired("body")
	AdminCreateIntegrationConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateIntegrationConfigurationCmd.MarkFlagRequired("namespace")
}
