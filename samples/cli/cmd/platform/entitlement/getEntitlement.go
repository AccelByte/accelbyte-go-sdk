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

// GetEntitlementCmd represents the GetEntitlement command
var GetEntitlementCmd = &cobra.Command{
	Use:   "getEntitlement",
	Short: "Get entitlement",
	Long:  `Get entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &entitlement.GetEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.GetEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetEntitlementCmd.Flags().StringP("entitlementId", "", " ", "Entitlement id")
	_ = GetEntitlementCmd.MarkFlagRequired("entitlementId")
	GetEntitlementCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = GetEntitlementCmd.MarkFlagRequired("namespace")
}
