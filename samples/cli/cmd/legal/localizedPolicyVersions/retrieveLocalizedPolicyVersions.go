// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package localizedPolicyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveLocalizedPolicyVersionsCmd represents the retrieveLocalizedPolicyVersions command
var retrieveLocalizedPolicyVersionsCmd = &cobra.Command{
	Use:   "retrieveLocalizedPolicyVersions",
	Short: "Retrieve localized policy versions",
	Long:  `Retrieve localized policy versions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &localized_policy_versions.RetrieveLocalizedPolicyVersionsParams{
			PolicyVersionID: policyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := localizedPolicyVersionsService.RetrieveLocalizedPolicyVersions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveLocalizedPolicyVersionsCmd)
	retrieveLocalizedPolicyVersionsCmd.Flags().StringP("policyVersionId", "pd", " ", "Policy version id")
	_ = retrieveLocalizedPolicyVersionsCmd.MarkFlagRequired("policyVersionId")
}
