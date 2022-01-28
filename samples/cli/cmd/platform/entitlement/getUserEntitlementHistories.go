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

// GetUserEntitlementHistoriesCmd represents the GetUserEntitlementHistories command
var GetUserEntitlementHistoriesCmd = &cobra.Command{
	Use:   "getUserEntitlementHistories",
	Short: "Get user entitlement histories",
	Long:  `Get user entitlement histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.GetUserEntitlementHistoriesParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetUserEntitlementHistories(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetUserEntitlementHistoriesCmd.Flags().StringP("entitlementId", "", " ", "Entitlement id")
	_ = GetUserEntitlementHistoriesCmd.MarkFlagRequired("entitlementId")
	GetUserEntitlementHistoriesCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetUserEntitlementHistoriesCmd.MarkFlagRequired("namespace")
	GetUserEntitlementHistoriesCmd.Flags().StringP("userId", "", " ", "User id")
	_ = GetUserEntitlementHistoriesCmd.MarkFlagRequired("userId")
}
