// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAppDebugInfoV4Cmd represents the GetAppDebugInfoV4 command
var GetAppDebugInfoV4Cmd = &cobra.Command{
	Use:   "getAppDebugInfoV4",
	Short: "Get app debug info V4",
	Long:  `Get app debug info V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV4Service := &csm.AppV4Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v4.GetAppDebugInfoV4Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV4Service.GetAppDebugInfoV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppDebugInfoV4Cmd.Flags().String("app", "", "App")
	_ = GetAppDebugInfoV4Cmd.MarkFlagRequired("app")
	GetAppDebugInfoV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppDebugInfoV4Cmd.MarkFlagRequired("namespace")
}
