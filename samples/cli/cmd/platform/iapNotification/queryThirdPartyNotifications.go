// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapNotification

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap_notification"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryThirdPartyNotificationsCmd represents the QueryThirdPartyNotifications command
var QueryThirdPartyNotificationsCmd = &cobra.Command{
	Use:   "queryThirdPartyNotifications",
	Short: "Query third party notifications",
	Long:  `Query third party notifications`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapNotificationService := &platform.IAPNotificationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endDate, _ := cmd.Flags().GetString("endDate")
		externalId, _ := cmd.Flags().GetString("externalId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		source, _ := cmd.Flags().GetString("source")
		startDate, _ := cmd.Flags().GetString("startDate")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		input := &iap_notification.QueryThirdPartyNotificationsParams{
			Namespace:  namespace,
			EndDate:    &endDate,
			ExternalID: &externalId,
			Limit:      &limit,
			Offset:     &offset,
			Source:     &source,
			StartDate:  &startDate,
			Status:     &status,
			Type:       &type_,
		}
		ok, errOK := iapNotificationService.QueryThirdPartyNotificationsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryThirdPartyNotificationsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryThirdPartyNotificationsCmd.MarkFlagRequired("namespace")
	QueryThirdPartyNotificationsCmd.Flags().String("endDate", "", "End date")
	QueryThirdPartyNotificationsCmd.Flags().String("externalId", "", "External id")
	QueryThirdPartyNotificationsCmd.Flags().Int32("limit", 20, "Limit")
	QueryThirdPartyNotificationsCmd.Flags().Int32("offset", 0, "Offset")
	QueryThirdPartyNotificationsCmd.Flags().String("source", "", "Source")
	QueryThirdPartyNotificationsCmd.Flags().String("startDate", "", "Start date")
	QueryThirdPartyNotificationsCmd.Flags().String("status", "", "Status")
	QueryThirdPartyNotificationsCmd.Flags().String("type", "", "Type")
}
