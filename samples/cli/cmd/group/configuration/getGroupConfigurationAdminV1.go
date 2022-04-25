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

// GetGroupConfigurationAdminV1Cmd represents the GetGroupConfigurationAdminV1 command
var GetGroupConfigurationAdminV1Cmd = &cobra.Command{
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
		ok, err := configurationService.GetGroupConfigurationAdminV1Short(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetGroupConfigurationAdminV1Cmd.Flags().StringP("configurationCode", "", "", "Configuration code")
	_ = GetGroupConfigurationAdminV1Cmd.MarkFlagRequired("configurationCode")
	GetGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
