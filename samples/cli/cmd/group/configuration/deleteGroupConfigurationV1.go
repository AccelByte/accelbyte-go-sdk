// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteGroupConfigurationV1Cmd represents the DeleteGroupConfigurationV1 command
var DeleteGroupConfigurationV1Cmd = &cobra.Command{
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
		errNoContent := configurationService.DeleteGroupConfigurationV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGroupConfigurationV1Cmd.Flags().String("configurationCode", "", "Configuration code")
	_ = DeleteGroupConfigurationV1Cmd.MarkFlagRequired("configurationCode")
	DeleteGroupConfigurationV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupConfigurationV1Cmd.MarkFlagRequired("namespace")
}
