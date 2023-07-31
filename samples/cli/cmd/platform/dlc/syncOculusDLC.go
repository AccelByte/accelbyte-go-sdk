// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncOculusDLCCmd represents the SyncOculusDLC command
var SyncOculusDLCCmd = &cobra.Command{
	Use:   "syncOculusDLC",
	Short: "Sync oculus DLC",
	Long:  `Sync oculus DLC`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &dlc.SyncOculusDLCParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dlcService.SyncOculusDLCShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SyncOculusDLCCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncOculusDLCCmd.MarkFlagRequired("namespace")
	SyncOculusDLCCmd.Flags().String("userId", "", "User id")
	_ = SyncOculusDLCCmd.MarkFlagRequired("userId")
}
