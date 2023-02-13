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

// RetrieveAllPolicyTypes1Cmd represents the RetrieveAllPolicyTypes1 command
var RetrieveAllPolicyTypes1Cmd = &cobra.Command{
	Use:   "retrieveAllPolicyTypes1",
	Short: "Retrieve all policy types 1",
	Long:  `Retrieve all policy types 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &base_legal_policies_with_namespace.RetrieveAllPolicyTypes1Params{
			Namespace: namespace,
			Offset:    &offset,
			Limit:     limit,
		}
		ok, err := baseLegalPoliciesWithNamespaceService.RetrieveAllPolicyTypes1Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	RetrieveAllPolicyTypes1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllPolicyTypes1Cmd.MarkFlagRequired("namespace")
	RetrieveAllPolicyTypes1Cmd.Flags().Int32("offset", 0, "Offset")
	RetrieveAllPolicyTypes1Cmd.Flags().Int32("limit", 20, "Limit")
	_ = RetrieveAllPolicyTypes1Cmd.MarkFlagRequired("limit")
}
