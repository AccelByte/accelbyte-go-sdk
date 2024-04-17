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

// AdminUpdateIntegrationConfigurationCmd represents the AdminUpdateIntegrationConfiguration command
var AdminUpdateIntegrationConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateIntegrationConfiguration",
	Short: "Admin update integration configuration",
	Long:  `Admin update integration configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminIntegrationConfigurationsService := &inventory.AdminIntegrationConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsUpdateIntegrationConfigurationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		integrationConfigurationId, _ := cmd.Flags().GetString("integrationConfigurationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_integration_configurations.AdminUpdateIntegrationConfigurationParams{
			Body:                       body,
			IntegrationConfigurationID: integrationConfigurationId,
			Namespace:                  namespace,
		}
		ok, errOK := adminIntegrationConfigurationsService.AdminUpdateIntegrationConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateIntegrationConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateIntegrationConfigurationCmd.MarkFlagRequired("body")
	AdminUpdateIntegrationConfigurationCmd.Flags().String("integrationConfigurationId", "", "Integration configuration id")
	_ = AdminUpdateIntegrationConfigurationCmd.MarkFlagRequired("integrationConfigurationId")
	AdminUpdateIntegrationConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateIntegrationConfigurationCmd.MarkFlagRequired("namespace")
}
