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

// UnpublishPolicyVersionCmd represents the UnpublishPolicyVersion command
var UnpublishPolicyVersionCmd = &cobra.Command{
	Use:   "unpublishPolicyVersion",
	Short: "Unpublish policy version",
	Long:  `Unpublish policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &policy_versions_with_namespace.UnpublishPolicyVersionParams{
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		errNoContent := policyVersionsWithNamespaceService.UnpublishPolicyVersionShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UnpublishPolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = UnpublishPolicyVersionCmd.MarkFlagRequired("namespace")
	UnpublishPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = UnpublishPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
