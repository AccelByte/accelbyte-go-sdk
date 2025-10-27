// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policiesWithNamespaceV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies_with_namespace_v2"
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
		policiesWithNamespaceV2Service := &legal.PoliciesWithNamespaceV2Service{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &policies_with_namespace_v2.RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
			CountryCode: countryCode,
			Namespace:   namespace,
			ClientID:    clientId,
		}
		ok, errOK := policiesWithNamespaceV2Service.RetrieveLatestPoliciesByNamespaceAndCountryPublicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("countryCode")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("namespace")
	RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.Flags().String("clientId", "", "Client id")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd.MarkFlagRequired("clientId")
}
