// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd represents the RetrieveLatestPoliciesByNamespaceAndCountryPublic command
var RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd = &cobra.Command{
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
		ok, err := policiesService.RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("countryCode")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("namespace")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().Bool("alwaysIncludeDefault", false, "Always include default")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("policyType", "", "Policy type")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("tags", "", "Tags")
}
