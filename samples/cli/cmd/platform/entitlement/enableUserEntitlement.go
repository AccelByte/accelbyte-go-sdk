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

// EnableUserEntitlementCmd represents the EnableUserEntitlement command
var EnableUserEntitlementCmd = &cobra.Command{
	Use:   "enableUserEntitlement",
	Short: "Enable user entitlement",
	Long:  `Enable user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.EnableUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := entitlementService.EnableUserEntitlementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	EnableUserEntitlementCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = EnableUserEntitlementCmd.MarkFlagRequired("entitlementId")
	EnableUserEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = EnableUserEntitlementCmd.MarkFlagRequired("namespace")
	EnableUserEntitlementCmd.Flags().String("userId", "", "User id")
	_ = EnableUserEntitlementCmd.MarkFlagRequired("userId")
}
