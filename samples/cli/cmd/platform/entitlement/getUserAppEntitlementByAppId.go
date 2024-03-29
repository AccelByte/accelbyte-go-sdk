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

// GetUserAppEntitlementByAppIdCmd represents the GetUserAppEntitlementByAppId command
var GetUserAppEntitlementByAppIdCmd = &cobra.Command{
	Use:   "getUserAppEntitlementByAppId",
	Short: "Get user app entitlement by app id",
	Long:  `Get user app entitlement by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appId, _ := cmd.Flags().GetString("appId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &entitlement.GetUserAppEntitlementByAppIDParams{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			AppID:      appId,
		}
		ok, errOK := entitlementService.GetUserAppEntitlementByAppIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserAppEntitlementByAppIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserAppEntitlementByAppIdCmd.MarkFlagRequired("namespace")
	GetUserAppEntitlementByAppIdCmd.Flags().String("userId", "", "User id")
	_ = GetUserAppEntitlementByAppIdCmd.MarkFlagRequired("userId")
	GetUserAppEntitlementByAppIdCmd.Flags().Bool("activeOnly", false, "Active only")
	GetUserAppEntitlementByAppIdCmd.Flags().String("appId", "", "App id")
	_ = GetUserAppEntitlementByAppIdCmd.MarkFlagRequired("appId")
}
