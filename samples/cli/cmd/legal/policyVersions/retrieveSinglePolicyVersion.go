// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveSinglePolicyVersionCmd represents the retrieveSinglePolicyVersion command
var retrieveSinglePolicyVersionCmd = &cobra.Command{
	Use:   "retrieveSinglePolicyVersion",
	Short: "Retrieve single policy version",
	Long:  `Retrieve single policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &policy_versions.RetrieveSinglePolicyVersionParams{
			PolicyID:  policyId,
			VersionID: &versionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := policyVersionsService.RetrieveSinglePolicyVersion(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveSinglePolicyVersionCmd)
	retrieveSinglePolicyVersionCmd.Flags().StringP("policyId", "p", " ", "Policy id")
	_ = retrieveSinglePolicyVersionCmd.MarkFlagRequired("policyId")
	retrieveSinglePolicyVersionCmd.Flags().StringP("versionId", "v", " ", "Version id")
}