// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package entitlement

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeUserEntitlementCmd represents the RevokeUserEntitlement command
var RevokeUserEntitlementCmd = &cobra.Command{
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
	RevokeUserEntitlementCmd.Flags().StringP("entitlementId", "", "", "Entitlement id")
	_ = RevokeUserEntitlementCmd.MarkFlagRequired("entitlementId")
	RevokeUserEntitlementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RevokeUserEntitlementCmd.MarkFlagRequired("namespace")
	RevokeUserEntitlementCmd.Flags().StringP("userId", "", "", "User id")
	_ = RevokeUserEntitlementCmd.MarkFlagRequired("userId")
}
