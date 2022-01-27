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

// publicGetUserEntitlementCmd represents the publicGetUserEntitlement command
var publicGetUserEntitlementCmd = &cobra.Command{
	Use:   "publicGetUserEntitlement",
	Short: "Public get user entitlement",
	Long:  `Public get user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.PublicGetUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.PublicGetUserEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserEntitlementCmd)
	publicGetUserEntitlementCmd.Flags().StringP("entitlementId", "ed", " ", "Entitlement id")
	_ = publicGetUserEntitlementCmd.MarkFlagRequired("entitlementId")
	publicGetUserEntitlementCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetUserEntitlementCmd.MarkFlagRequired("namespace")
	publicGetUserEntitlementCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicGetUserEntitlementCmd.MarkFlagRequired("userId")
}
