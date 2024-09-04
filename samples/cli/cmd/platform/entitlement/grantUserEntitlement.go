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

// GrantUserEntitlementCmd represents the GrantUserEntitlement command
var GrantUserEntitlementCmd = &cobra.Command{
	Use:   "grantUserEntitlement",
	Short: "Grant user entitlement",
	Long:  `Grant user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*platformclientmodels.EntitlementGrant
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.GrantUserEntitlementParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := entitlementService.GrantUserEntitlementShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	GrantUserEntitlementCmd.Flags().String("body", "", "Body")
	_ = GrantUserEntitlementCmd.MarkFlagRequired("body")
	GrantUserEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = GrantUserEntitlementCmd.MarkFlagRequired("namespace")
	GrantUserEntitlementCmd.Flags().String("userId", "", "User id")
	_ = GrantUserEntitlementCmd.MarkFlagRequired("userId")
}
