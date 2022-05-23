// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryPaymentOrdersCmd represents the QueryPaymentOrders command
var QueryPaymentOrdersCmd = &cobra.Command{
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
		ok, err := paymentService.QueryPaymentOrdersShort(input)
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
	QueryPaymentOrdersCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryPaymentOrdersCmd.MarkFlagRequired("namespace")
	QueryPaymentOrdersCmd.Flags().String("channel", "", "Channel")
	QueryPaymentOrdersCmd.Flags().String("extTxId", "", "Ext tx id")
	QueryPaymentOrdersCmd.Flags().Int32("limit", 20, "Limit")
	QueryPaymentOrdersCmd.Flags().Int32("offset", 0, "Offset")
	QueryPaymentOrdersCmd.Flags().String("status", "", "Status")
}
