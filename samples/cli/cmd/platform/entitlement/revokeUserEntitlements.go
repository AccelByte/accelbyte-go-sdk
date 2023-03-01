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

// RevokeUserEntitlementsCmd represents the RevokeUserEntitlements command
var RevokeUserEntitlementsCmd = &cobra.Command{
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
		ok, errOK := entitlementService.RevokeUserEntitlementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RevokeUserEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserEntitlementsCmd.MarkFlagRequired("namespace")
	RevokeUserEntitlementsCmd.Flags().String("userId", "", "User id")
	_ = RevokeUserEntitlementsCmd.MarkFlagRequired("userId")
	RevokeUserEntitlementsCmd.Flags().String("entitlementIds", "", "Entitlement ids")
	_ = RevokeUserEntitlementsCmd.MarkFlagRequired("entitlementIds")
}
