// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryPaymentOrdersCmd represents the queryPaymentOrders command
var queryPaymentOrdersCmd = &cobra.Command{
	Use:   "queryPaymentOrders",
	Short: "Query payment orders",
	Long:  `Query payment orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		channel, _ := cmd.Flags().GetString("channel")
		extTxId, _ := cmd.Flags().GetString("extTxId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		input := &payment.QueryPaymentOrdersParams{
			Namespace: namespace,
			Channel:   &channel,
			ExtTxID:   &extTxId,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.QueryPaymentOrders(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryPaymentOrdersCmd)
	queryPaymentOrdersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryPaymentOrdersCmd.MarkFlagRequired("namespace")
	queryPaymentOrdersCmd.Flags().StringP("channel", "c", " ", "Channel")
	queryPaymentOrdersCmd.Flags().StringP("extTxId", "e", " ", "Ext tx id")
	queryPaymentOrdersCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryPaymentOrdersCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryPaymentOrdersCmd.Flags().StringP("status", "s", " ", "Status")
}
