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

// OldRetrievePolicyCountryCmd represents the OldRetrievePolicyCountry command
var OldRetrievePolicyCountryCmd = &cobra.Command{
	Use:   "oldRetrievePolicyCountry",
	Short: "Old retrieve policy country",
	Long:  `Old retrieve policy country`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		countryCode, _ := cmd.Flags().GetString("countryCode")
		input := &base_legal_policies.OldRetrievePolicyCountryParams{
			BasePolicyID: basePolicyId,
			CountryCode:  countryCode,
		}
		ok, errOK := baseLegalPoliciesService.OldRetrievePolicyCountryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	OldRetrievePolicyCountryCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = OldRetrievePolicyCountryCmd.MarkFlagRequired("basePolicyId")
	OldRetrievePolicyCountryCmd.Flags().String("countryCode", "", "Country code")
	_ = OldRetrievePolicyCountryCmd.MarkFlagRequired("countryCode")
}
