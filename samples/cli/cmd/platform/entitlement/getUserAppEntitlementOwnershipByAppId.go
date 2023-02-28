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

// GetUserAppEntitlementOwnershipByAppIdCmd represents the GetUserAppEntitlementOwnershipByAppId command
var GetUserAppEntitlementOwnershipByAppIdCmd = &cobra.Command{
	Use:   "getUserAppEntitlementOwnershipByAppId",
	Short: "Get user app entitlement ownership by app id",
	Long:  `Get user app entitlement ownership by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appId, _ := cmd.Flags().GetString("appId")
		input := &entitlement.GetUserAppEntitlementOwnershipByAppIDParams{
			Namespace: namespace,
			UserID:    userId,
			AppID:     appId,
		}
		ok, errOK := entitlementService.GetUserAppEntitlementOwnershipByAppIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserAppEntitlementOwnershipByAppIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("namespace")
	GetUserAppEntitlementOwnershipByAppIdCmd.Flags().String("userId", "", "User id")
	_ = GetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("userId")
	GetUserAppEntitlementOwnershipByAppIdCmd.Flags().String("appId", "", "App id")
	_ = GetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("appId")
}
