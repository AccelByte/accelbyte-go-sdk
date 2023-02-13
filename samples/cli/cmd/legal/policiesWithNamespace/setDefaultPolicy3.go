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

// SetDefaultPolicy3Cmd represents the SetDefaultPolicy3 command
var SetDefaultPolicy3Cmd = &cobra.Command{
	Use:   "setDefaultPolicy3",
	Short: "Set default policy 3",
	Long:  `Set default policy 3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesWithNamespaceService := &legal.PoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyId, _ := cmd.Flags().GetString("policyId")
		input := &policies_with_namespace.SetDefaultPolicy3Params{
			Namespace: namespace,
			PolicyID:  policyId,
		}
		errInput := policiesWithNamespaceService.SetDefaultPolicy3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SetDefaultPolicy3Cmd.Flags().String("namespace", "", "Namespace")
	_ = SetDefaultPolicy3Cmd.MarkFlagRequired("namespace")
	SetDefaultPolicy3Cmd.Flags().String("policyId", "", "Policy id")
	_ = SetDefaultPolicy3Cmd.MarkFlagRequired("policyId")
}
