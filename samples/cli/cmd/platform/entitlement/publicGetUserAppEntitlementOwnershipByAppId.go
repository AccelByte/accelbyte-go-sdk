// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserAppEntitlementOwnershipByAppIdCmd represents the publicGetUserAppEntitlementOwnershipByAppId command
var publicGetUserAppEntitlementOwnershipByAppIdCmd = &cobra.Command{
	Use:   "publicGetUserAppEntitlementOwnershipByAppId",
	Short: "Public get user app entitlement ownership by app id",
	Long:  `Public get user app entitlement ownership by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appId, _ := cmd.Flags().GetString("appId")
		input := &entitlement.PublicGetUserAppEntitlementOwnershipByAppIDParams{
			Namespace: namespace,
			UserID:    userId,
			AppID:     appId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetUserAppEntitlementOwnershipByAppID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserAppEntitlementOwnershipByAppIdCmd)
	publicGetUserAppEntitlementOwnershipByAppIdCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("namespace")
	publicGetUserAppEntitlementOwnershipByAppIdCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("userId")
	publicGetUserAppEntitlementOwnershipByAppIdCmd.Flags().StringP("appId", "ad", " ", "App id")
	_ = publicGetUserAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("appId")
}
