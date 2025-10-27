// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersions

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// OldPublishPolicyVersionCmd represents the OldPublishPolicyVersion command
var OldPublishPolicyVersionCmd = &cobra.Command{
	Use:   "oldPublishPolicyVersion",
	Short: "Old publish policy version",
	Long:  `Old publish policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		shouldNotify, _ := cmd.Flags().GetBool("shouldNotify")
		input := &policy_versions.OldPublishPolicyVersionParams{
			PolicyVersionID: policyVersionId,
			ShouldNotify:    &shouldNotify,
		}
		errOK := policyVersionsService.OldPublishPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	OldPublishPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = OldPublishPolicyVersionCmd.MarkFlagRequired("policyVersionId")
	OldPublishPolicyVersionCmd.Flags().Bool("shouldNotify", false, "Should notify")
}
