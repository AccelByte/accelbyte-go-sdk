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
		ok, err := paymentService.QueryPaymentNotificationsShort(input)
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
	QueryPaymentNotificationsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryPaymentNotificationsCmd.MarkFlagRequired("namespace")
	QueryPaymentNotificationsCmd.Flags().StringP("endDate", "", "", "End date")
	QueryPaymentNotificationsCmd.Flags().StringP("externalId", "", "", "External id")
	QueryPaymentNotificationsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryPaymentNotificationsCmd.Flags().StringP("notificationSource", "", "", "Notification source")
	QueryPaymentNotificationsCmd.Flags().StringP("notificationType", "", "", "Notification type")
	QueryPaymentNotificationsCmd.Flags().Int32P("offset", "", 0, "Offset")
	QueryPaymentNotificationsCmd.Flags().StringP("paymentOrderNo", "", "", "Payment order no")
	QueryPaymentNotificationsCmd.Flags().StringP("startDate", "", "", "Start date")
	QueryPaymentNotificationsCmd.Flags().StringP("status", "", "", "Status")
}
