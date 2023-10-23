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

// GeDLCDurableRewardShortMapCmd represents the GeDLCDurableRewardShortMap command
var GeDLCDurableRewardShortMapCmd = &cobra.Command{
	Use:   "geDLCDurableRewardShortMap",
	Short: "Ge DLC durable reward short map",
	Long:  `Ge DLC durable reward short map`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		dlcType, _ := cmd.Flags().GetString("dlcType")
		input := &dlc.GeDLCDurableRewardShortMapParams{
			Namespace: namespace,
			DLCType:   dlcType,
		}
		ok, errOK := dlcService.GeDLCDurableRewardShortMapShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GeDLCDurableRewardShortMapCmd.Flags().String("namespace", "", "Namespace")
	_ = GeDLCDurableRewardShortMapCmd.MarkFlagRequired("namespace")
	GeDLCDurableRewardShortMapCmd.Flags().String("dlcType", "", "Dlc type")
	_ = GeDLCDurableRewardShortMapCmd.MarkFlagRequired("dlcType")
}
