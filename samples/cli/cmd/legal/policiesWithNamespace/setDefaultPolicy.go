// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policiesWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SetDefaultPolicyCmd represents the SetDefaultPolicy command
var SetDefaultPolicyCmd = &cobra.Command{
	Use:   "setDefaultPolicy",
	Short: "Set default policy",
	Long:  `Set default policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesWithNamespaceService := &legal.PoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyId, _ := cmd.Flags().GetString("policyId")
		input := &policies_with_namespace.SetDefaultPolicyParams{
			Namespace: namespace,
			PolicyID:  policyId,
		}
		errOK := policiesWithNamespaceService.SetDefaultPolicyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SetDefaultPolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = SetDefaultPolicyCmd.MarkFlagRequired("namespace")
	SetDefaultPolicyCmd.Flags().String("policyId", "", "Policy id")
	_ = SetDefaultPolicyCmd.MarkFlagRequired("policyId")
}
