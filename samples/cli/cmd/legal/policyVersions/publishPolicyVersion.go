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
		errOK := policyVersionsService.PublishPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublishPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = PublishPolicyVersionCmd.MarkFlagRequired("policyVersionId")
	PublishPolicyVersionCmd.Flags().Bool("shouldNotify", false, "Should notify")
}
