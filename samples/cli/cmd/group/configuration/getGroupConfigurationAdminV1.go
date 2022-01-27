// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupConfigurationAdminV1Cmd represents the getGroupConfigurationAdminV1 command
var getGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "getGroupConfigurationAdminV1",
	Short: "Get group configuration admin V1",
	Long:  `Get group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.GetGroupConfigurationAdminV1Params{
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.GetGroupConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGroupConfigurationAdminV1Cmd)
	getGroupConfigurationAdminV1Cmd.Flags().StringP("configurationCode", "ce", " ", "Configuration code")
	_ = getGroupConfigurationAdminV1Cmd.MarkFlagRequired("configurationCode")
	getGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
