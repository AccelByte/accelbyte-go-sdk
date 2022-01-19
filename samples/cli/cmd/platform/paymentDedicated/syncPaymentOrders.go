// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// syncPaymentOrdersCmd represents the syncPaymentOrders command
var syncPaymentOrdersCmd = &cobra.Command{
	Use:   "syncPaymentOrders",
	Short: "Sync payment orders",
	Long:  `Sync payment orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentDedicatedService := &platform.PaymentDedicatedService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		end, _ := cmd.Flags().GetString("end")
		start, _ := cmd.Flags().GetString("start")
		nextEvaluatedKey, _ := cmd.Flags().GetString("nextEvaluatedKey")
		input := &payment_dedicated.SyncPaymentOrdersParams{
			NextEvaluatedKey: &nextEvaluatedKey,
			End:              end,
			Start:            start,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentDedicatedService.SyncPaymentOrders(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(syncPaymentOrdersCmd)
	syncPaymentOrdersCmd.Flags().StringP("nextEvaluatedKey", "n", " ", "Next evaluated key")
	syncPaymentOrdersCmd.Flags().StringP("end", "e", " ", "End")
	_ = syncPaymentOrdersCmd.MarkFlagRequired("end")
	syncPaymentOrdersCmd.Flags().StringP("start", "s", " ", "Start")
	_ = syncPaymentOrdersCmd.MarkFlagRequired("start")
}
