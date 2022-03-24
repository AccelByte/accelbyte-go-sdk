// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublishPolicyVersionCmd represents the PublishPolicyVersion command
var PublishPolicyVersionCmd = &cobra.Command{
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
		errInput := policyVersionsService.PublishPolicyVersionShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublishPolicyVersionCmd.Flags().StringP("policyVersionId", "", "", "Policy version id")
	_ = PublishPolicyVersionCmd.MarkFlagRequired("policyVersionId")
	PublishPolicyVersionCmd.Flags().BoolP("shouldNotify", "", false, "Should notify")
}
