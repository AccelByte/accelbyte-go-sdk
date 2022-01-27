// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package order

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// refundOrderCmd represents the refundOrder command
var refundOrderCmd = &cobra.Command{
	Use:   "refundOrder",
	Short: "Refund order",
	Long:  `Refund order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OrderRefundCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.RefundOrderParams{
			Body:      body,
			Namespace: namespace,
			OrderNo:   orderNo,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := orderService.RefundOrder(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(refundOrderCmd)
	refundOrderCmd.Flags().StringP("body", "by", " ", "Body")
	refundOrderCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = refundOrderCmd.MarkFlagRequired("namespace")
	refundOrderCmd.Flags().StringP("orderNo", "oo", " ", "Order no")
	_ = refundOrderCmd.MarkFlagRequired("orderNo")
}
