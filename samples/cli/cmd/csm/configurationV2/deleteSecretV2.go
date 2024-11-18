// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteSecretV2Cmd represents the DeleteSecretV2 command
var DeleteSecretV2Cmd = &cobra.Command{
	Use:   "deleteSecretV2",
	Short: "Delete secret V2",
	Long:  `Delete secret V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationV2Service := &csm.ConfigurationV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_v2.DeleteSecretV2Params{
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		errNoContent := configurationV2Service.DeleteSecretV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSecretV2Cmd.Flags().String("app", "", "App")
	_ = DeleteSecretV2Cmd.MarkFlagRequired("app")
	DeleteSecretV2Cmd.Flags().String("configId", "", "Config id")
	_ = DeleteSecretV2Cmd.MarkFlagRequired("configId")
	DeleteSecretV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSecretV2Cmd.MarkFlagRequired("namespace")
}
