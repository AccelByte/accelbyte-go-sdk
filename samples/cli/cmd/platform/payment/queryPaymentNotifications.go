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

// queryPaymentNotificationsCmd represents the queryPaymentNotifications command
var queryPaymentNotificationsCmd = &cobra.Command{
	Use:   "queryPaymentNotifications",
	Short: "Query payment notifications",
	Long:  `Query payment notifications`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		externalId, _ := cmd.Flags().GetString("externalId")
		limit, _ := cmd.Flags().GetInt32("limit")
		notificationSource, _ := cmd.Flags().GetString("notificationSource")
		notificationType, _ := cmd.Flags().GetString("notificationType")
		offset, _ := cmd.Flags().GetInt32("offset")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		startDate, _ := cmd.Flags().GetString("startDate")
		status, _ := cmd.Flags().GetString("status")
		input := &payment.QueryPaymentNotificationsParams{
			Namespace:          namespace,
			EndDate:            &endDate,
			ExternalID:         &externalId,
			Limit:              &limit,
			NotificationSource: &notificationSource,
			NotificationType:   &notificationType,
			Offset:             &offset,
			PaymentOrderNo:     &paymentOrderNo,
			StartDate:          &startDate,
			Status:             &status,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := paymentService.QueryPaymentNotifications(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryPaymentNotificationsCmd)
	queryPaymentNotificationsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryPaymentNotificationsCmd.MarkFlagRequired("namespace")
	queryPaymentNotificationsCmd.Flags().StringP("endDate", "e", " ", "End date")
	queryPaymentNotificationsCmd.Flags().StringP("externalId", "e", " ", "External id")
	queryPaymentNotificationsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryPaymentNotificationsCmd.Flags().StringP("notificationSource", "n", " ", "Notification source")
	queryPaymentNotificationsCmd.Flags().StringP("notificationType", "n", " ", "Notification type")
	queryPaymentNotificationsCmd.Flags().Int32P("offset", "o", 0, "Offset")
	queryPaymentNotificationsCmd.Flags().StringP("paymentOrderNo", "p", " ", "Payment order no")
	queryPaymentNotificationsCmd.Flags().StringP("startDate", "s", " ", "Start date")
	queryPaymentNotificationsCmd.Flags().StringP("status", "s", " ", "Status")
}
