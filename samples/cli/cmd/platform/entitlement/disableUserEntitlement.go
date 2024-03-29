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

// DisableUserEntitlementCmd represents the DisableUserEntitlement command
var DisableUserEntitlementCmd = &cobra.Command{
	Use:   "disableUserEntitlement",
	Short: "Disable user entitlement",
	Long:  `Disable user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.DisableUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := entitlementService.DisableUserEntitlementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DisableUserEntitlementCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = DisableUserEntitlementCmd.MarkFlagRequired("entitlementId")
	DisableUserEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = DisableUserEntitlementCmd.MarkFlagRequired("namespace")
	DisableUserEntitlementCmd.Flags().String("userId", "", "User id")
	_ = DisableUserEntitlementCmd.MarkFlagRequired("userId")
}
