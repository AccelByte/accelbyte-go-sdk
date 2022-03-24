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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RefundOrderCmd represents the RefundOrder command
var RefundOrderCmd = &cobra.Command{
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
		ok, err := orderService.RefundOrderShort(input)
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
	RefundOrderCmd.Flags().StringP("body", "", "", "Body")
	RefundOrderCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RefundOrderCmd.MarkFlagRequired("namespace")
	RefundOrderCmd.Flags().StringP("orderNo", "", "", "Order no")
	_ = RefundOrderCmd.MarkFlagRequired("orderNo")
}
