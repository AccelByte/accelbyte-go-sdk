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

// getUserAppEntitlementByAppIdCmd represents the getUserAppEntitlementByAppId command
var getUserAppEntitlementByAppIdCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserAppEntitlementByAppID(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserAppEntitlementByAppIdCmd)
	getUserAppEntitlementByAppIdCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserAppEntitlementByAppIdCmd.MarkFlagRequired("namespace")
	getUserAppEntitlementByAppIdCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserAppEntitlementByAppIdCmd.MarkFlagRequired("userId")
	getUserAppEntitlementByAppIdCmd.Flags().BoolP("activeOnly", "a", false, "Active only")
	getUserAppEntitlementByAppIdCmd.Flags().StringP("appId", "a", " ", "App id")
	_ = getUserAppEntitlementByAppIdCmd.MarkFlagRequired("appId")
}
