// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePlatformEntitlementConfigCmd represents the UpdatePlatformEntitlementConfig command
var UpdatePlatformEntitlementConfigCmd = &cobra.Command{
	Use:   "updatePlatformEntitlementConfig",
	Short: "Update platform entitlement config",
	Long:  `Update platform entitlement config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platform, _ := cmd.Flags().GetString("platform")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.EntitlementPlatformConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &entitlement.UpdatePlatformEntitlementConfigParams{
			Body:      body,
			Namespace: namespace,
			Platform:  platform,
		}
		ok, errOK := entitlementService.UpdatePlatformEntitlementConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePlatformEntitlementConfigCmd.Flags().String("body", "", "Body")
	UpdatePlatformEntitlementConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePlatformEntitlementConfigCmd.MarkFlagRequired("namespace")
	UpdatePlatformEntitlementConfigCmd.Flags().String("platform", "", "Platform")
	_ = UpdatePlatformEntitlementConfigCmd.MarkFlagRequired("platform")
}
