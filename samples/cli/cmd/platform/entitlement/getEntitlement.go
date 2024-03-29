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
		ok, errOK := entitlementService.GetEntitlementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEntitlementCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = GetEntitlementCmd.MarkFlagRequired("entitlementId")
	GetEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEntitlementCmd.MarkFlagRequired("namespace")
}
