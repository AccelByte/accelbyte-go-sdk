// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateGroupConfigurationGlobalRuleAdminV1Cmd represents the UpdateGroupConfigurationGlobalRuleAdminV1 command
var UpdateGroupConfigurationGlobalRuleAdminV1Cmd = &cobra.Command{
	Use:   "updateGroupConfigurationGlobalRuleAdminV1",
	Short: "Update group configuration global rule admin V1",
	Long:  `Update group configuration global rule admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupConfigurationGlobalRulesRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		allowedAction, _ := cmd.Flags().GetString("allowedAction")
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.UpdateGroupConfigurationGlobalRuleAdminV1Params{
			Body:              body,
			AllowedAction:     allowedAction,
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		ok, errOK := configurationService.UpdateGroupConfigurationGlobalRuleAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("body")
	UpdateGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("allowedAction", "", "Allowed action")
	_ = UpdateGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("allowedAction")
	UpdateGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("configurationCode", "", "Configuration code")
	_ = UpdateGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("configurationCode")
	UpdateGroupConfigurationGlobalRuleAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGroupConfigurationGlobalRuleAdminV1Cmd.MarkFlagRequired("namespace")
}
