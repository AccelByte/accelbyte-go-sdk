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

// EnableEntitlementOriginFeatureCmd represents the EnableEntitlementOriginFeature command
var EnableEntitlementOriginFeatureCmd = &cobra.Command{
	Use:   "enableEntitlementOriginFeature",
	Short: "Enable entitlement origin feature",
	Long:  `Enable entitlement origin feature`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &entitlement.EnableEntitlementOriginFeatureParams{
			Namespace: namespace,
		}
		ok, errOK := entitlementService.EnableEntitlementOriginFeatureShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	EnableEntitlementOriginFeatureCmd.Flags().String("namespace", "", "Namespace")
	_ = EnableEntitlementOriginFeatureCmd.MarkFlagRequired("namespace")
}
