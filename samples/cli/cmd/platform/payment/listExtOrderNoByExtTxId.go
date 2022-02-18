// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package payment

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListExtOrderNoByExtTxIdCmd represents the ListExtOrderNoByExtTxId command
var ListExtOrderNoByExtTxIdCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	ListExtOrderNoByExtTxIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ListExtOrderNoByExtTxIdCmd.MarkFlagRequired("namespace")
	ListExtOrderNoByExtTxIdCmd.Flags().StringP("extTxId", "", "", "Ext tx id")
	_ = ListExtOrderNoByExtTxIdCmd.MarkFlagRequired("extTxId")
}
