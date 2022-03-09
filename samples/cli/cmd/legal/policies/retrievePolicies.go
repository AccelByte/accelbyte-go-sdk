// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrievePoliciesCmd represents the RetrievePolicies command
var RetrievePoliciesCmd = &cobra.Command{
	Use:   "retrievePolicies",
	Short: "Retrieve policies",
	Long:  `Retrieve policies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		input := &policies.RetrievePoliciesParams{
			CountryCode: countryCode,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policiesService.RetrievePolicies(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	RetrievePoliciesCmd.Flags().StringP("countryCode", "", "", "Country code")
	_ = RetrievePoliciesCmd.MarkFlagRequired("countryCode")
}
