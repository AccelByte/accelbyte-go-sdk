// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appStatusProgressV4

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_status_progress_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAppStatusProgressV4Cmd represents the GetAppStatusProgressV4 command
var GetAppStatusProgressV4Cmd = &cobra.Command{
	Use:   "getAppStatusProgressV4",
	Short: "Get app status progress V4",
	Long:  `Get app status progress V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appStatusProgressV4Service := &csm.AppStatusProgressV4Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_status_progress_v4.GetAppStatusProgressV4Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appStatusProgressV4Service.GetAppStatusProgressV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAppStatusProgressV4Cmd.Flags().String("app", "", "App")
	_ = GetAppStatusProgressV4Cmd.MarkFlagRequired("app")
	GetAppStatusProgressV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppStatusProgressV4Cmd.MarkFlagRequired("namespace")
}
