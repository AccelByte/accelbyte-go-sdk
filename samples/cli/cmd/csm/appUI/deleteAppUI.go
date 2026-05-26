// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appUI

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_ui"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAppUICmd represents the DeleteAppUI command
var DeleteAppUICmd = &cobra.Command{
	Use:   "deleteAppUI",
	Short: "Delete app UI",
	Long:  `Delete app UI`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appUIService := &csm.AppUIService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		appUiName, _ := cmd.Flags().GetString("appUiName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_ui.DeleteAppUIParams{
			AppUIName: appUiName,
			Namespace: namespace,
		}
		errNoContent := appUIService.DeleteAppUIShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAppUICmd.Flags().String("appUiName", "", "App ui name")
	_ = DeleteAppUICmd.MarkFlagRequired("appUiName")
	DeleteAppUICmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppUICmd.MarkFlagRequired("namespace")
}
