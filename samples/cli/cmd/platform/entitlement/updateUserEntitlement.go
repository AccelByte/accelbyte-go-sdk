// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// UpdateUserEntitlementCmd represents the UpdateUserEntitlement command
var UpdateUserEntitlementCmd = &cobra.Command{
	Use:   "updateUserEntitlement",
	Short: "Update user entitlement",
	Long:  `Update user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.EntitlementUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &entitlement.UpdateUserEntitlementParams{
			Body:          body,
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := entitlementService.UpdateUserEntitlement(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	UpdateUserEntitlementCmd.Flags().StringP("body", "", "", "Body")
	UpdateUserEntitlementCmd.Flags().StringP("entitlementId", "", "", "Entitlement id")
	_ = UpdateUserEntitlementCmd.MarkFlagRequired("entitlementId")
	UpdateUserEntitlementCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateUserEntitlementCmd.MarkFlagRequired("namespace")
	UpdateUserEntitlementCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateUserEntitlementCmd.MarkFlagRequired("userId")
}
