// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package watchdogs

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/watchdogs"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// WatchdogConnectCmd represents the WatchdogConnect command
var WatchdogConnectCmd = &cobra.Command{
	Use:   "watchdogConnect",
	Short: "Watchdog connect",
	Long:  `Watchdog connect`,
	RunE: func(cmd *cobra.Command, args []string) error {
		watchdogsService := &ams.WatchdogsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		watchdogID, _ := cmd.Flags().GetString("watchdogID")
		input := &watchdogs.WatchdogConnectParams{
			Namespace:  namespace,
			WatchdogID: watchdogID,
		}
		errOK := watchdogsService.WatchdogConnectShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	WatchdogConnectCmd.Flags().String("namespace", "", "Namespace")
	_ = WatchdogConnectCmd.MarkFlagRequired("namespace")
	WatchdogConnectCmd.Flags().String("watchdogID", "", "Watchdog ID")
	_ = WatchdogConnectCmd.MarkFlagRequired("watchdogID")
}
