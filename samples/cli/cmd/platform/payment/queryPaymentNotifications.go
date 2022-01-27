// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package payment

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryPaymentNotificationsCmd represents the QueryPaymentNotifications command
var QueryPaymentNotificationsCmd = &cobra.Command{
	Use:   "QueryPaymentNotifications",
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
	QueryPaymentNotificationsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = QueryPaymentNotificationsCmd.MarkFlagRequired("namespace")
	QueryPaymentNotificationsCmd.Flags().StringP("endDate", "ee", " ", "End date")
	QueryPaymentNotificationsCmd.Flags().StringP("externalId", "ed", " ", "External id")
	QueryPaymentNotificationsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	QueryPaymentNotificationsCmd.Flags().StringP("notificationSource", "ne", " ", "Notification source")
	QueryPaymentNotificationsCmd.Flags().StringP("notificationType", "ne", " ", "Notification type")
	QueryPaymentNotificationsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	QueryPaymentNotificationsCmd.Flags().StringP("paymentOrderNo", "po", " ", "Payment order no")
	QueryPaymentNotificationsCmd.Flags().StringP("startDate", "se", " ", "Start date")
	QueryPaymentNotificationsCmd.Flags().StringP("status", "ss", " ", "Status")
}
