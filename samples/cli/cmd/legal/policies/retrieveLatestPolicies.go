// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policies

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policiesService.RetrieveLatestPolicies(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	RetrieveLatestPoliciesCmd.Flags().StringP("countryCode", "", "", "Country code")
	_ = RetrieveLatestPoliciesCmd.MarkFlagRequired("countryCode")
	RetrieveLatestPoliciesCmd.Flags().BoolP("defaultOnEmpty", "", false, "Default on empty")
	RetrieveLatestPoliciesCmd.Flags().StringP("policyType", "", "", "Policy type")
	RetrieveLatestPoliciesCmd.Flags().StringP("tags", "", "", "Tags")
}
