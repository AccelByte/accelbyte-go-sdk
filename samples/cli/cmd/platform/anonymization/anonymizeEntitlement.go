// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// anonymizeEntitlementCmd represents the anonymizeEntitlement command
var anonymizeEntitlementCmd = &cobra.Command{
	Use:   "anonymizeEntitlement",
	Short: "Anonymize entitlement",
	Long:  `Anonymize entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizeEntitlementParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := anonymizationService.AnonymizeEntitlement(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(anonymizeEntitlementCmd)
	anonymizeEntitlementCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = anonymizeEntitlementCmd.MarkFlagRequired("namespace")
	anonymizeEntitlementCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = anonymizeEntitlementCmd.MarkFlagRequired("userId")
}
