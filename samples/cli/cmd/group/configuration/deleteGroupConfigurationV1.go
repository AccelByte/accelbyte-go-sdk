// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteGroupConfigurationV1Cmd represents the deleteGroupConfigurationV1 command
var deleteGroupConfigurationV1Cmd = &cobra.Command{
	Use:   "deleteGroupConfigurationV1",
	Short: "Delete group configuration V1",
	Long:  `Delete group configuration V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.DeleteGroupConfigurationV1Params{
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := configurationService.DeleteGroupConfigurationV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteGroupConfigurationV1Cmd)
	deleteGroupConfigurationV1Cmd.Flags().StringP("configurationCode", "c", " ", "Configuration code")
	_ = deleteGroupConfigurationV1Cmd.MarkFlagRequired("configurationCode")
	deleteGroupConfigurationV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteGroupConfigurationV1Cmd.MarkFlagRequired("namespace")
}
