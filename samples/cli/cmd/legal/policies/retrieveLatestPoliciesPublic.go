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

// RetrieveLatestPoliciesPublicCmd represents the RetrieveLatestPoliciesPublic command
var RetrieveLatestPoliciesPublicCmd = &cobra.Command{
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
		ok, err := policiesService.RetrieveLatestPoliciesPublicShort(input)
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
	RetrieveLatestPoliciesPublicCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RetrieveLatestPoliciesPublicCmd.MarkFlagRequired("namespace")
	RetrieveLatestPoliciesPublicCmd.Flags().BoolP("alwaysIncludeDefault", "", false, "Always include default")
	RetrieveLatestPoliciesPublicCmd.Flags().BoolP("defaultOnEmpty", "", false, "Default on empty")
	RetrieveLatestPoliciesPublicCmd.Flags().StringP("policyType", "", "", "Policy type")
	RetrieveLatestPoliciesPublicCmd.Flags().StringP("tags", "", "", "Tags")
}
