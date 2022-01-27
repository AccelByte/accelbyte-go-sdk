// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrievePolicyVersionsCmd represents the retrievePolicyVersions command
var retrievePolicyVersionsCmd = &cobra.Command{
	Use:   "retrievePolicyVersions",
	Short: "Retrieve policy versions",
	Long:  `Retrieve policy versions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		localeId, _ := cmd.Flags().GetString("localeId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &policy_versions.RetrievePolicyVersionsParams{
			BasePolicyID: &basePolicyId,
			LocaleID:     &localeId,
			Namespace:    &namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policyVersionsService.RetrievePolicyVersions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrievePolicyVersionsCmd)
	retrievePolicyVersionsCmd.Flags().StringP("basePolicyId", "bd", " ", "Base policy id")
	retrievePolicyVersionsCmd.Flags().StringP("localeId", "ld", " ", "Locale id")
	retrievePolicyVersionsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
}
