// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteAppV2Cmd represents the DeleteAppV2 command
var DeleteAppV2Cmd = &cobra.Command{
	Use:   "deleteAppV2",
	Short: "Delete app V2",
	Long:  `Delete app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		forced, _ := cmd.Flags().GetString("forced")
		input := &app_v2.DeleteAppV2Params{
			App:       app,
			Namespace: namespace,
			Forced:    &forced,
		}
		errNoContent := appV2Service.DeleteAppV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAppV2Cmd.Flags().String("app", "", "App")
	_ = DeleteAppV2Cmd.MarkFlagRequired("app")
	DeleteAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAppV2Cmd.MarkFlagRequired("namespace")
	DeleteAppV2Cmd.Flags().String("forced", "", "Forced")
}
