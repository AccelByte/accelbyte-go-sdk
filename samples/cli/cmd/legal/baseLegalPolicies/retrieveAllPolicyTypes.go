// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPolicies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllPolicyTypesCmd represents the RetrieveAllPolicyTypes command
var RetrieveAllPolicyTypesCmd = &cobra.Command{
	Use:   "retrieveAllPolicyTypes",
	Short: "Retrieve all policy types",
	Long:  `Retrieve all policy types`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &base_legal_policies.RetrieveAllPolicyTypesParams{
			Offset: &offset,
			Limit:  limit,
		}
		ok, errOK := baseLegalPoliciesService.RetrieveAllPolicyTypesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllPolicyTypesCmd.Flags().Int32("offset", 0, "Offset")
	RetrieveAllPolicyTypesCmd.Flags().Int32("limit", 20, "Limit")
	_ = RetrieveAllPolicyTypesCmd.MarkFlagRequired("limit")
}
