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

// RetrieveLatestPoliciesCmd represents the RetrieveLatestPolicies command
var RetrieveLatestPoliciesCmd = &cobra.Command{
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
		ok, err := policiesService.RetrieveLatestPoliciesShort(input)
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
	RetrieveLatestPoliciesCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrieveLatestPoliciesCmd.MarkFlagRequired("countryCode")
	RetrieveLatestPoliciesCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	RetrieveLatestPoliciesCmd.Flags().String("policyType", "", "Policy type")
	RetrieveLatestPoliciesCmd.Flags().String("tags", "", "Tags")
}
