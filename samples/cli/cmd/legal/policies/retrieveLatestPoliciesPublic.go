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

// retrieveLatestPoliciesPublicCmd represents the retrieveLatestPoliciesPublic command
var retrieveLatestPoliciesPublicCmd = &cobra.Command{
	Use:   "retrieveLatestPoliciesPublic",
	Short: "Retrieve latest policies public",
	Long:  `Retrieve latest policies public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		alwaysIncludeDefault, _ := cmd.Flags().GetBool("alwaysIncludeDefault")
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		policyType, _ := cmd.Flags().GetString("policyType")
		tags, _ := cmd.Flags().GetString("tags")
		input := &policies.RetrieveLatestPoliciesPublicParams{
			Namespace:            namespace,
			AlwaysIncludeDefault: &alwaysIncludeDefault,
			DefaultOnEmpty:       &defaultOnEmpty,
			PolicyType:           &policyType,
			Tags:                 &tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policiesService.RetrieveLatestPoliciesPublic(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveLatestPoliciesPublicCmd)
	retrieveLatestPoliciesPublicCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = retrieveLatestPoliciesPublicCmd.MarkFlagRequired("namespace")
	retrieveLatestPoliciesPublicCmd.Flags().BoolP("alwaysIncludeDefault", "a", false, "Always include default")
	retrieveLatestPoliciesPublicCmd.Flags().BoolP("defaultOnEmpty", "d", false, "Default on empty")
	retrieveLatestPoliciesPublicCmd.Flags().StringP("policyType", "p", " ", "Policy type")
	retrieveLatestPoliciesPublicCmd.Flags().StringP("tags", "t", " ", "Tags")
}
