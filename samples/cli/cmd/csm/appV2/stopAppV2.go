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

// StopAppV2Cmd represents the StopAppV2 command
var StopAppV2Cmd = &cobra.Command{
	Use:   "stopAppV2",
	Short: "Stop app V2",
	Long:  `Stop app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.StopAppV2Params{
			App:       app,
			Namespace: namespace,
		}
		errAccepted := appV2Service.StopAppV2Short(input)
		if errAccepted != nil {
			logrus.Error(errAccepted)

			return errAccepted
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	StopAppV2Cmd.Flags().String("app", "", "App")
	_ = StopAppV2Cmd.MarkFlagRequired("app")
	StopAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = StopAppV2Cmd.MarkFlagRequired("namespace")
}
