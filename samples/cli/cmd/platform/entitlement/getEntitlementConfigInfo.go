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

// GetEntitlementConfigInfoCmd represents the GetEntitlementConfigInfo command
var GetEntitlementConfigInfoCmd = &cobra.Command{
	Use:   "getEntitlementConfigInfo",
	Short: "Get entitlement config info",
	Long:  `Get entitlement config info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		withoutCache, _ := cmd.Flags().GetBool("withoutCache")
		input := &entitlement.GetEntitlementConfigInfoParams{
			Namespace:    namespace,
			WithoutCache: &withoutCache,
		}
		ok, errOK := entitlementService.GetEntitlementConfigInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetEntitlementConfigInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEntitlementConfigInfoCmd.MarkFlagRequired("namespace")
	GetEntitlementConfigInfoCmd.Flags().Bool("withoutCache", false, "Without cache")
}
