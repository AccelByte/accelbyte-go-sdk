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

// RestoreDLCItemConfigHistoryCmd represents the RestoreDLCItemConfigHistory command
var RestoreDLCItemConfigHistoryCmd = &cobra.Command{
	Use:   "restoreDLCItemConfigHistory",
	Short: "Restore DLC item config history",
	Long:  `Restore DLC item config history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &dlc.RestoreDLCItemConfigHistoryParams{
			ID:        id_,
			Namespace: namespace,
		}
		errNoContent := dlcService.RestoreDLCItemConfigHistoryShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RestoreDLCItemConfigHistoryCmd.Flags().String("id", "", "Id")
	_ = RestoreDLCItemConfigHistoryCmd.MarkFlagRequired("id")
	RestoreDLCItemConfigHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = RestoreDLCItemConfigHistoryCmd.MarkFlagRequired("namespace")
}
