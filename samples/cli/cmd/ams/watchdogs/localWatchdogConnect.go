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

// LocalWatchdogConnectCmd represents the LocalWatchdogConnect command
var LocalWatchdogConnectCmd = &cobra.Command{
	Use:   "localWatchdogConnect",
	Short: "Local watchdog connect",
	Long:  `Local watchdog connect`,
	RunE: func(cmd *cobra.Command, args []string) error {
		watchdogsService := &ams.WatchdogsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		watchdogID, _ := cmd.Flags().GetString("watchdogID")
		input := &watchdogs.LocalWatchdogConnectParams{
			Namespace:  namespace,
			WatchdogID: watchdogID,
		}
		errOK := watchdogsService.LocalWatchdogConnectShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	LocalWatchdogConnectCmd.Flags().String("namespace", "", "Namespace")
	_ = LocalWatchdogConnectCmd.MarkFlagRequired("namespace")
	LocalWatchdogConnectCmd.Flags().String("watchdogID", "", "Watchdog ID")
	_ = LocalWatchdogConnectCmd.MarkFlagRequired("watchdogID")
}
