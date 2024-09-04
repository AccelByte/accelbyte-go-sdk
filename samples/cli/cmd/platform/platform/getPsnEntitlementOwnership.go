// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"encoding/json"

	platform_ "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/platform"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPsnEntitlementOwnershipCmd represents the GetPsnEntitlementOwnership command
var GetPsnEntitlementOwnershipCmd = &cobra.Command{
	Use:   "getPsnEntitlementOwnership",
	Short: "Get psn entitlement ownership",
	Long:  `Get psn entitlement ownership`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformService := &platform.PlatformService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PsnEntitlementOwnershipRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		entitlementLabel, _ := cmd.Flags().GetString("entitlementLabel")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_.GetPsnEntitlementOwnershipParams{
			Body:             body,
			EntitlementLabel: entitlementLabel,
			Namespace:        namespace,
		}
		ok, errOK := platformService.GetPsnEntitlementOwnershipShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPsnEntitlementOwnershipCmd.Flags().String("body", "", "Body")
	_ = GetPsnEntitlementOwnershipCmd.MarkFlagRequired("body")
	GetPsnEntitlementOwnershipCmd.Flags().String("entitlementLabel", "", "Entitlement label")
	_ = GetPsnEntitlementOwnershipCmd.MarkFlagRequired("entitlementLabel")
	GetPsnEntitlementOwnershipCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPsnEntitlementOwnershipCmd.MarkFlagRequired("namespace")
}
