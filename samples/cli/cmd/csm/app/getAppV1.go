// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app

import (
	app_ "github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAppV1Cmd represents the GetAppV1 command
var GetAppV1Cmd = &cobra.Command{
	Use:   "getAppV1",
	Short: "Get app V1",
	Long:  `Get app V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appService := &csm.AppService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_.GetAppV1Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appService.GetAppV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppV1Cmd.Flags().String("app", "", "App")
	_ = GetAppV1Cmd.MarkFlagRequired("app")
	GetAppV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppV1Cmd.MarkFlagRequired("namespace")
}
