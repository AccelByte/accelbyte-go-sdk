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

// revokeUserEntitlementCmd represents the revokeUserEntitlement command
var revokeUserEntitlementCmd = &cobra.Command{
	Use:   "revokeUserEntitlement",
	Short: "Revoke user entitlement",
	Long:  `Revoke user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.RevokeUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.RevokeUserEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(revokeUserEntitlementCmd)
	revokeUserEntitlementCmd.Flags().StringP("entitlementId", "e", " ", "Entitlement id")
	_ = revokeUserEntitlementCmd.MarkFlagRequired("entitlementId")
	revokeUserEntitlementCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = revokeUserEntitlementCmd.MarkFlagRequired("namespace")
	revokeUserEntitlementCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = revokeUserEntitlementCmd.MarkFlagRequired("userId")
}
