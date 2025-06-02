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

// GetDLCItemConfigHistoryCmd represents the GetDLCItemConfigHistory command
var GetDLCItemConfigHistoryCmd = &cobra.Command{
	Use:   "getDLCItemConfigHistory",
	Short: "Get DLC item config history",
	Long:  `Get DLC item config history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		dlcId, _ := cmd.Flags().GetString("dlcId")
		input := &dlc.GetDLCItemConfigHistoryParams{
			Namespace: namespace,
			DLCID:     dlcId,
		}
		ok, errOK := dlcService.GetDLCItemConfigHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetDLCItemConfigHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = GetDLCItemConfigHistoryCmd.MarkFlagRequired("namespace")
	GetDLCItemConfigHistoryCmd.Flags().String("dlcId", "", "Dlc id")
	_ = GetDLCItemConfigHistoryCmd.MarkFlagRequired("dlcId")
}
