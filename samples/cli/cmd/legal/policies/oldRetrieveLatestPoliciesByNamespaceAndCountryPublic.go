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

// OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd represents the OldRetrieveLatestPoliciesByNamespaceAndCountryPublic command
var OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd = &cobra.Command{
	Use:   "oldRetrieveLatestPoliciesByNamespaceAndCountryPublic",
	Short: "Old retrieve latest policies by namespace and country public",
	Long:  `Old retrieve latest policies by namespace and country public`,
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
		visibleOnly, _ := cmd.Flags().GetBool("visibleOnly")
		input := &policies.OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
			CountryCode:          countryCode,
			Namespace:            namespace,
			AlwaysIncludeDefault: &alwaysIncludeDefault,
			DefaultOnEmpty:       &defaultOnEmpty,
			PolicyType:           &policyType,
			Tags:                 &tags,
			VisibleOnly:          &visibleOnly,
		}
		ok, errOK := policiesService.OldRetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("countryCode", "", "Country code")
	_ = OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("countryCode")
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("namespace", "", "Namespace")
	_ = OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("namespace")
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().Bool("alwaysIncludeDefault", false, "Always include default")
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("policyType", "", "Policy type")
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("tags", "", "Tags")
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().Bool("visibleOnly", false, "Visible only")
}
