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

// DeleteVariableV2Cmd represents the DeleteVariableV2 command
var DeleteVariableV2Cmd = &cobra.Command{
	Use:   "deleteVariableV2",
	Short: "Delete variable V2",
	Long:  `Delete variable V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationV2Service := &csm.ConfigurationV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_v2.DeleteVariableV2Params{
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		errNoContent := configurationV2Service.DeleteVariableV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteVariableV2Cmd.Flags().String("app", "", "App")
	_ = DeleteVariableV2Cmd.MarkFlagRequired("app")
	DeleteVariableV2Cmd.Flags().String("configId", "", "Config id")
	_ = DeleteVariableV2Cmd.MarkFlagRequired("configId")
	DeleteVariableV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteVariableV2Cmd.MarkFlagRequired("namespace")
}
