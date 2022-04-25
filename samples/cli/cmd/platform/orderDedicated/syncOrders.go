// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package orderDedicated

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncOrdersCmd represents the SyncOrders command
var SyncOrdersCmd = &cobra.Command{
	Use:   "syncOrders",
	Short: "Sync orders",
	Long:  `Sync orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderDedicatedService := &platform.OrderDedicatedService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		end, _ := cmd.Flags().GetString("end")
		start, _ := cmd.Flags().GetString("start")
		nextEvaluatedKey, _ := cmd.Flags().GetString("nextEvaluatedKey")
		input := &order_dedicated.SyncOrdersParams{
			NextEvaluatedKey: &nextEvaluatedKey,
			End:              end,
			Start:            start,
		}
		ok, err := orderDedicatedService.SyncOrdersShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	SyncOrdersCmd.Flags().StringP("nextEvaluatedKey", "", "", "Next evaluated key")
	SyncOrdersCmd.Flags().StringP("end", "", "", "End")
	_ = SyncOrdersCmd.MarkFlagRequired("end")
	SyncOrdersCmd.Flags().StringP("start", "", "", "Start")
	_ = SyncOrdersCmd.MarkFlagRequired("start")
}
