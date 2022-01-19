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

// retrieveLatestPoliciesByNamespaceAndCountryPublicCmd represents the retrieveLatestPoliciesByNamespaceAndCountryPublic command
var retrieveLatestPoliciesByNamespaceAndCountryPublicCmd = &cobra.Command{
	Use:   "retrieveLatestPoliciesByNamespaceAndCountryPublic",
	Short: "Retrieve latest policies by namespace and country public",
	Long:  `Retrieve latest policies by namespace and country public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		alwaysIncludeDefault, _ := cmd.Flags().GetBool("alwaysIncludeDefault")
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		policyType, _ := cmd.Flags().GetString("policyType")
		tags, _ := cmd.Flags().GetString("tags")
		input := &policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
			CountryCode:          countryCode,
			Namespace:            namespace,
			AlwaysIncludeDefault: &alwaysIncludeDefault,
			DefaultOnEmpty:       &defaultOnEmpty,
			PolicyType:           &policyType,
			Tags:                 &tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policiesService.RetrieveLatestPoliciesByNamespaceAndCountryPublic(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveLatestPoliciesByNamespaceAndCountryPublicCmd)
	retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().StringP("countryCode", "c", " ", "Country code")
	_ = retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("countryCode")
	retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("namespace")
	retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().BoolP("alwaysIncludeDefault", "a", false, "Always include default")
	retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().BoolP("defaultOnEmpty", "d", false, "Default on empty")
	retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().StringP("policyType", "p", " ", "Policy type")
	retrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().StringP("tags", "t", " ", "Tags")
}
