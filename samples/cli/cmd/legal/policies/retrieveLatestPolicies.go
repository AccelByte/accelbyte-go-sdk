// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveLatestPoliciesCmd represents the retrieveLatestPolicies command
var retrieveLatestPoliciesCmd = &cobra.Command{
	Use:   "retrieveLatestPolicies",
	Short: "Retrieve latest policies",
	Long:  `Retrieve latest policies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		policyType, _ := cmd.Flags().GetString("policyType")
		tags, _ := cmd.Flags().GetString("tags")
		input := &policies.RetrieveLatestPoliciesParams{
			CountryCode:    countryCode,
			DefaultOnEmpty: &defaultOnEmpty,
			PolicyType:     &policyType,
			Tags:           &tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policiesService.RetrieveLatestPolicies(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveLatestPoliciesCmd)
	retrieveLatestPoliciesCmd.Flags().StringP("countryCode", "c", " ", "Country code")
	_ = retrieveLatestPoliciesCmd.MarkFlagRequired("countryCode")
	retrieveLatestPoliciesCmd.Flags().BoolP("defaultOnEmpty", "d", false, "Default on empty")
	retrieveLatestPoliciesCmd.Flags().StringP("policyType", "p", " ", "Policy type")
	retrieveLatestPoliciesCmd.Flags().StringP("tags", "t", " ", "Tags")
}