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

// GetAppReleaseV1Cmd represents the GetAppReleaseV1 command
var GetAppReleaseV1Cmd = &cobra.Command{
	Use:   "getAppReleaseV1",
	Short: "Get app release V1",
	Long:  `Get app release V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appService := &csm.AppService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_.GetAppReleaseV1Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appService.GetAppReleaseV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppReleaseV1Cmd.Flags().String("app", "", "App")
	_ = GetAppReleaseV1Cmd.MarkFlagRequired("app")
	GetAppReleaseV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppReleaseV1Cmd.MarkFlagRequired("namespace")
}
