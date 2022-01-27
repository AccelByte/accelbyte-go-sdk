// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package orderDedicated

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// syncOrdersCmd represents the syncOrders command
var syncOrdersCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderDedicatedService.SyncOrders(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(syncOrdersCmd)
	syncOrdersCmd.Flags().StringP("nextEvaluatedKey", "ny", " ", "Next evaluated key")
	syncOrdersCmd.Flags().StringP("end", "ed", " ", "End")
	_ = syncOrdersCmd.MarkFlagRequired("end")
	syncOrdersCmd.Flags().StringP("start", "st", " ", "Start")
	_ = syncOrdersCmd.MarkFlagRequired("start")
}
