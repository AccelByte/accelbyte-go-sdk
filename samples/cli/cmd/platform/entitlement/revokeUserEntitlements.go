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

// revokeUserEntitlementsCmd represents the revokeUserEntitlements command
var revokeUserEntitlementsCmd = &cobra.Command{
	Use:   "revokeUserEntitlements",
	Short: "Revoke user entitlements",
	Long:  `Revoke user entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		entitlementIds, _ := cmd.Flags().GetString("entitlementIds")
		input := &entitlement.RevokeUserEntitlementsParams{
			Namespace:      namespace,
			UserID:         userId,
			EntitlementIds: entitlementIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.RevokeUserEntitlements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(revokeUserEntitlementsCmd)
	revokeUserEntitlementsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = revokeUserEntitlementsCmd.MarkFlagRequired("namespace")
	revokeUserEntitlementsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = revokeUserEntitlementsCmd.MarkFlagRequired("userId")
	revokeUserEntitlementsCmd.Flags().StringP("entitlementIds", "e", " ", "Entitlement ids")
	_ = revokeUserEntitlementsCmd.MarkFlagRequired("entitlementIds")
}
