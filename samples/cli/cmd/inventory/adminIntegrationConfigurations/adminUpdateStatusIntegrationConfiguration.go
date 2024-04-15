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

// AdminUpdateStatusIntegrationConfigurationCmd represents the AdminUpdateStatusIntegrationConfiguration command
var AdminUpdateStatusIntegrationConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateStatusIntegrationConfiguration",
	Short: "Admin update status integration configuration",
	Long:  `Admin update status integration configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminIntegrationConfigurationsService := &inventory.AdminIntegrationConfigurationsService{
			Client:          factory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsUpdateStatusIntegrationConfigurationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		integrationConfigurationId, _ := cmd.Flags().GetString("integrationConfigurationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_integration_configurations.AdminUpdateStatusIntegrationConfigurationParams{
			Body:                       body,
			IntegrationConfigurationID: integrationConfigurationId,
			Namespace:                  namespace,
		}
		ok, errOK := adminIntegrationConfigurationsService.AdminUpdateStatusIntegrationConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateStatusIntegrationConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateStatusIntegrationConfigurationCmd.MarkFlagRequired("body")
	AdminUpdateStatusIntegrationConfigurationCmd.Flags().String("integrationConfigurationId", "", "Integration configuration id")
	_ = AdminUpdateStatusIntegrationConfigurationCmd.MarkFlagRequired("integrationConfigurationId")
	AdminUpdateStatusIntegrationConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateStatusIntegrationConfigurationCmd.MarkFlagRequired("namespace")
}
