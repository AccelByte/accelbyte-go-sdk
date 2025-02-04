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

// RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd represents the RetrieveLatestPoliciesByNamespaceAndCountryPublic1 command
var RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd = &cobra.Command{
	Use:   "retrieveLatestPoliciesByNamespaceAndCountryPublic1",
	Short: "Retrieve latest policies by namespace and country public 1",
	Long:  `Retrieve latest policies by namespace and country public 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesWithNamespaceV2Service := &legal.PoliciesWithNamespaceV2Service{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		clientId, _ := cmd.Flags().GetString("clientId")
		input := &policies_with_namespace_v2.RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params{
			CountryCode: countryCode,
			Namespace:   namespace,
			ClientID:    clientId,
		}
		ok, errOK := policiesWithNamespaceV2Service.RetrieveLatestPoliciesByNamespaceAndCountryPublic1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd.Flags().String("countryCode", "", "Country code")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd.MarkFlagRequired("countryCode")
	RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd.MarkFlagRequired("namespace")
	RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd.Flags().String("clientId", "", "Client id")
	_ = RetrieveLatestPoliciesByNamespaceAndCountryPublic1Cmd.MarkFlagRequired("clientId")
}
