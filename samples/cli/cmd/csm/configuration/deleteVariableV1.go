// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteVariableV1Cmd represents the DeleteVariableV1 command
var DeleteVariableV1Cmd = &cobra.Command{
	Use:   "deleteVariableV1",
	Short: "Delete variable V1",
	Long:  `Delete variable V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.DeleteVariableV1Params{
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		errNoContent := configurationService.DeleteVariableV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteVariableV1Cmd.Flags().String("app", "", "App")
	_ = DeleteVariableV1Cmd.MarkFlagRequired("app")
	DeleteVariableV1Cmd.Flags().String("configId", "", "Config id")
	_ = DeleteVariableV1Cmd.MarkFlagRequired("configId")
	DeleteVariableV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteVariableV1Cmd.MarkFlagRequired("namespace")
}
