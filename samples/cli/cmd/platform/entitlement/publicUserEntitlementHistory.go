// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUserEntitlementHistoryCmd represents the PublicUserEntitlementHistory command
var PublicUserEntitlementHistoryCmd = &cobra.Command{
	Use:   "publicUserEntitlementHistory",
	Short: "Public user entitlement history",
	Long:  `Public user entitlement history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endDate, _ := cmd.Flags().GetString("endDate")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		startDate, _ := cmd.Flags().GetString("startDate")
		input := &entitlement.PublicUserEntitlementHistoryParams{
			Namespace:        namespace,
			UserID:           userId,
			EndDate:          &endDate,
			EntitlementClazz: &entitlementClazz,
			Limit:            &limit,
			Offset:           &offset,
			StartDate:        &startDate,
		}
		ok, errOK := entitlementService.PublicUserEntitlementHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicUserEntitlementHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUserEntitlementHistoryCmd.MarkFlagRequired("namespace")
	PublicUserEntitlementHistoryCmd.Flags().String("userId", "", "User id")
	_ = PublicUserEntitlementHistoryCmd.MarkFlagRequired("userId")
	PublicUserEntitlementHistoryCmd.Flags().String("endDate", "", "End date")
	PublicUserEntitlementHistoryCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	PublicUserEntitlementHistoryCmd.Flags().Int32("limit", 20, "Limit")
	PublicUserEntitlementHistoryCmd.Flags().Int32("offset", 0, "Offset")
	PublicUserEntitlementHistoryCmd.Flags().String("startDate", "", "Start date")
}
