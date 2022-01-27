// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publishPolicyVersionCmd represents the publishPolicyVersion command
var publishPolicyVersionCmd = &cobra.Command{
	Use:   "publishPolicyVersion",
	Short: "Publish policy version",
	Long:  `Publish policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		shouldNotify, _ := cmd.Flags().GetBool("shouldNotify")
		input := &policy_versions.PublishPolicyVersionParams{
			PolicyVersionID: policyVersionId,
			ShouldNotify:    &shouldNotify,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := policyVersionsService.PublishPolicyVersion(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publishPolicyVersionCmd)
	publishPolicyVersionCmd.Flags().StringP("policyVersionId", "pd", " ", "Policy version id")
	_ = publishPolicyVersionCmd.MarkFlagRequired("policyVersionId")
	publishPolicyVersionCmd.Flags().BoolP("shouldNotify", "sy", false, "Should notify")
}
