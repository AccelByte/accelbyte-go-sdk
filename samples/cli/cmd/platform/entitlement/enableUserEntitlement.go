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

// enableUserEntitlementCmd represents the enableUserEntitlement command
var enableUserEntitlementCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.EnableUserEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(enableUserEntitlementCmd)
	enableUserEntitlementCmd.Flags().StringP("entitlementId", "ed", " ", "Entitlement id")
	_ = enableUserEntitlementCmd.MarkFlagRequired("entitlementId")
	enableUserEntitlementCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = enableUserEntitlementCmd.MarkFlagRequired("namespace")
	enableUserEntitlementCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = enableUserEntitlementCmd.MarkFlagRequired("userId")
}
