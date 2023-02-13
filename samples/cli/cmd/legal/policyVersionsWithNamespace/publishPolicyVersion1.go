// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersionsWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublishPolicyVersion1Cmd represents the PublishPolicyVersion1 command
var PublishPolicyVersion1Cmd = &cobra.Command{
	Use:   "publishPolicyVersion1",
	Short: "Publish policy version 1",
	Long:  `Publish policy version 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		shouldNotify, _ := cmd.Flags().GetBool("shouldNotify")
		input := &policy_versions_with_namespace.PublishPolicyVersion1Params{
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
			ShouldNotify:    &shouldNotify,
		}
		errInput := policyVersionsWithNamespaceService.PublishPolicyVersion1Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublishPolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublishPolicyVersion1Cmd.MarkFlagRequired("namespace")
	PublishPolicyVersion1Cmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = PublishPolicyVersion1Cmd.MarkFlagRequired("policyVersionId")
	PublishPolicyVersion1Cmd.Flags().Bool("shouldNotify", false, "Should notify")
}
