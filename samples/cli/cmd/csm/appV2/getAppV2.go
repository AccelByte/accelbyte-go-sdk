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

// GetAppV2Cmd represents the GetAppV2 command
var GetAppV2Cmd = &cobra.Command{
	Use:   "getAppV2",
	Short: "Get app V2",
	Long:  `Get app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.GetAppV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV2Service.GetAppV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppV2Cmd.Flags().String("app", "", "App")
	_ = GetAppV2Cmd.MarkFlagRequired("app")
	GetAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppV2Cmd.MarkFlagRequired("namespace")
}
