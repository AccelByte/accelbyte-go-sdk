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

// PublicGetUserAppEntitlementByAppIdCmd represents the PublicGetUserAppEntitlementByAppId command
var PublicGetUserAppEntitlementByAppIdCmd = &cobra.Command{
	Use:   "publicGetUserAppEntitlementByAppId",
	Short: "Public get user app entitlement by app id",
	Long:  `Public get user app entitlement by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appId, _ := cmd.Flags().GetString("appId")
		input := &entitlement.PublicGetUserAppEntitlementByAppIDParams{
			Namespace: namespace,
			UserID:    userId,
			AppID:     appId,
		}
		ok, err := entitlementService.PublicGetUserAppEntitlementByAppIDShort(input, nil)
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
	PublicGetUserAppEntitlementByAppIdCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserAppEntitlementByAppIdCmd.MarkFlagRequired("namespace")
	PublicGetUserAppEntitlementByAppIdCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserAppEntitlementByAppIdCmd.MarkFlagRequired("userId")
	PublicGetUserAppEntitlementByAppIdCmd.Flags().StringP("appId", "", "", "App id")
	_ = PublicGetUserAppEntitlementByAppIdCmd.MarkFlagRequired("appId")
}
