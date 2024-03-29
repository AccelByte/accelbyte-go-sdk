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

// QueryUserEntitlementsByAppTypeCmd represents the QueryUserEntitlementsByAppType command
var QueryUserEntitlementsByAppTypeCmd = &cobra.Command{
	Use:   "queryUserEntitlementsByAppType",
	Short: "Query user entitlements by app type",
	Long:  `Query user entitlements by app type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appType, _ := cmd.Flags().GetString("appType")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.QueryUserEntitlementsByAppTypeParams{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			Limit:      &limit,
			Offset:     &offset,
			AppType:    appType,
		}
		ok, errOK := entitlementService.QueryUserEntitlementsByAppTypeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryUserEntitlementsByAppTypeCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("namespace")
	QueryUserEntitlementsByAppTypeCmd.Flags().String("userId", "", "User id")
	_ = QueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("userId")
	QueryUserEntitlementsByAppTypeCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryUserEntitlementsByAppTypeCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserEntitlementsByAppTypeCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserEntitlementsByAppTypeCmd.Flags().String("appType", "", "App type")
	_ = QueryUserEntitlementsByAppTypeCmd.MarkFlagRequired("appType")
}
