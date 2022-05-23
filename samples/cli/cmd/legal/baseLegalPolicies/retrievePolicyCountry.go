// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPolicies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrievePolicyCountryCmd represents the RetrievePolicyCountry command
var RetrievePolicyCountryCmd = &cobra.Command{
	Use:   "retrievePolicyCountry",
	Short: "Retrieve policy country",
	Long:  `Retrieve policy country`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		input := &base_legal_policies.RetrievePolicyCountryParams{
			BasePolicyID: basePolicyId,
			CountryCode:  countryCode,
		}
		ok, err := baseLegalPoliciesService.RetrievePolicyCountryShort(input)
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
	RetrievePolicyCountryCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrievePolicyCountryCmd.MarkFlagRequired("basePolicyId")
	RetrievePolicyCountryCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrievePolicyCountryCmd.MarkFlagRequired("countryCode")
}
