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

// RetrieveAllPoliciesFromBasePolicyCmd represents the RetrieveAllPoliciesFromBasePolicy command
var RetrieveAllPoliciesFromBasePolicyCmd = &cobra.Command{
	Use:   "retrieveAllPoliciesFromBasePolicy",
	Short: "Retrieve all policies from base policy",
	Long:  `Retrieve all policies from base policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.RetrieveAllPoliciesFromBasePolicyParams{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveAllPoliciesFromBasePolicyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllPoliciesFromBasePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrieveAllPoliciesFromBasePolicyCmd.MarkFlagRequired("basePolicyId")
	RetrieveAllPoliciesFromBasePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllPoliciesFromBasePolicyCmd.MarkFlagRequired("namespace")
}
