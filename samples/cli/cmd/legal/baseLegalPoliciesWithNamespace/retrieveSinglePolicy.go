// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveSinglePolicyCmd represents the RetrieveSinglePolicy command
var RetrieveSinglePolicyCmd = &cobra.Command{
	Use:   "retrieveSinglePolicy",
	Short: "Retrieve single policy",
	Long:  `Retrieve single policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.RetrieveSinglePolicyParams{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveSinglePolicyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveSinglePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrieveSinglePolicyCmd.MarkFlagRequired("basePolicyId")
	RetrieveSinglePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSinglePolicyCmd.MarkFlagRequired("namespace")
}
