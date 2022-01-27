// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package configuration

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateGroupConfigurationAdminV1Cmd represents the updateGroupConfigurationAdminV1 command
var updateGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "updateGroupConfigurationAdminV1",
	Short: "Update group configuration admin V1",
	Long:  `Update group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupConfigurationRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.UpdateGroupConfigurationAdminV1Params{
			Body:              body,
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.UpdateGroupConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateGroupConfigurationAdminV1Cmd)
	updateGroupConfigurationAdminV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateGroupConfigurationAdminV1Cmd.MarkFlagRequired("body")
	updateGroupConfigurationAdminV1Cmd.Flags().StringP("configurationCode", "ce", " ", "Configuration code")
	_ = updateGroupConfigurationAdminV1Cmd.MarkFlagRequired("configurationCode")
	updateGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
