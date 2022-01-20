// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetMyAppEntitlementOwnershipByAppIdCmd represents the publicGetMyAppEntitlementOwnershipByAppId command
var publicGetMyAppEntitlementOwnershipByAppIdCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetMyAppEntitlementOwnershipByAppID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetMyAppEntitlementOwnershipByAppIdCmd)
	publicGetMyAppEntitlementOwnershipByAppIdCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetMyAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("namespace")
	publicGetMyAppEntitlementOwnershipByAppIdCmd.Flags().StringP("appId", "a", " ", "App id")
	_ = publicGetMyAppEntitlementOwnershipByAppIdCmd.MarkFlagRequired("appId")
}