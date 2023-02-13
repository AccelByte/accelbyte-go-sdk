// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrievePolicyCountry1Cmd represents the RetrievePolicyCountry1 command
var RetrievePolicyCountry1Cmd = &cobra.Command{
	Use:   "retrievePolicyCountry1",
	Short: "Retrieve policy country 1",
	Long:  `Retrieve policy country 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.RetrievePolicyCountry1Params{
			BasePolicyID: basePolicyId,
			CountryCode:  countryCode,
			Namespace:    namespace,
		}
		ok, err := baseLegalPoliciesWithNamespaceService.RetrievePolicyCountry1Short(input)
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
	RetrievePolicyCountry1Cmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrievePolicyCountry1Cmd.MarkFlagRequired("basePolicyId")
	RetrievePolicyCountry1Cmd.Flags().String("countryCode", "", "Country code")
	_ = RetrievePolicyCountry1Cmd.MarkFlagRequired("countryCode")
	RetrievePolicyCountry1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrievePolicyCountry1Cmd.MarkFlagRequired("namespace")
}
