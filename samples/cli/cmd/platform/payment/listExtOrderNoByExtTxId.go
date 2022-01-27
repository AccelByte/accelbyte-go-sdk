// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package payment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listExtOrderNoByExtTxIdCmd represents the listExtOrderNoByExtTxId command
var listExtOrderNoByExtTxIdCmd = &cobra.Command{
	Use:   "listExtOrderNoByExtTxId",
	Short: "List ext order no by ext tx id",
	Long:  `List ext order no by ext tx id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		extTxId, _ := cmd.Flags().GetString("extTxId")
		input := &payment.ListExtOrderNoByExtTxIDParams{
			Namespace: namespace,
			ExtTxID:   extTxId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.ListExtOrderNoByExtTxID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listExtOrderNoByExtTxIdCmd)
	listExtOrderNoByExtTxIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = listExtOrderNoByExtTxIdCmd.MarkFlagRequired("namespace")
	listExtOrderNoByExtTxIdCmd.Flags().StringP("extTxId", "ed", " ", "Ext tx id")
	_ = listExtOrderNoByExtTxIdCmd.MarkFlagRequired("extTxId")
}
