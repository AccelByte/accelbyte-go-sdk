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

// PublicGetMyAppEntitlementOwnershipByAppIdCmd represents the PublicGetMyAppEntitlementOwnershipByAppId command
var PublicGetMyAppEntitlementOwnershipByAppIdCmd = &cobra.Command{
	Use:   "publicGetMyAppEntitlementOwnershipByAppId",
	Short: "Public get my app entitlement ownership by app id",
	Long:  `Public get my app entitlement ownership by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appId, _ := cmd.Flags().GetString("appId")
		input := &entitlement.PublicGetMyAppEntitlementOwnershipByAppIDParams{
			Namespace: namespace,
			AppID:     appId,
		}
		ok, err := entitlementService.PublicGetMyAppEntitlementOwnershipByAppIDShort(input)
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
	PublicGetMyAppEntitlementOwnershipByAppIdCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMyAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("namespace")
	PublicGetMyAppEntitlementOwnershipByAppIdCmd.Flags().String("appId", "", "App id")
	_ = PublicGetMyAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("appId")
}
