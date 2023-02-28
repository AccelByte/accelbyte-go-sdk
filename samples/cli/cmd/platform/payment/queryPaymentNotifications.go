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

// QueryPaymentNotificationsCmd represents the QueryPaymentNotifications command
var QueryPaymentNotificationsCmd = &cobra.Command{
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
		ok, errOK := paymentService.QueryPaymentNotificationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryPaymentNotificationsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryPaymentNotificationsCmd.MarkFlagRequired("namespace")
	QueryPaymentNotificationsCmd.Flags().String("endDate", "", "End date")
	QueryPaymentNotificationsCmd.Flags().String("externalId", "", "External id")
	QueryPaymentNotificationsCmd.Flags().Int32("limit", 20, "Limit")
	QueryPaymentNotificationsCmd.Flags().String("notificationSource", "", "Notification source")
	QueryPaymentNotificationsCmd.Flags().String("notificationType", "", "Notification type")
	QueryPaymentNotificationsCmd.Flags().Int32("offset", 0, "Offset")
	QueryPaymentNotificationsCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	QueryPaymentNotificationsCmd.Flags().String("startDate", "", "Start date")
	QueryPaymentNotificationsCmd.Flags().String("status", "", "Status")
}
