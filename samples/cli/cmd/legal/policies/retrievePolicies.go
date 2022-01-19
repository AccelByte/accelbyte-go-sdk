// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrievePoliciesCmd represents the retrievePolicies command
var retrievePoliciesCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrievePoliciesCmd)
	retrievePoliciesCmd.Flags().StringP("countryCode", "c", " ", "Country code")
	_ = retrievePoliciesCmd.MarkFlagRequired("countryCode")
}
