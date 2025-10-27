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

// OldRetrieveAllPolicyTypesCmd represents the OldRetrieveAllPolicyTypes command
var OldRetrieveAllPolicyTypesCmd = &cobra.Command{
	Use:   "oldRetrieveAllPolicyTypes",
	Short: "Old retrieve all policy types",
	Long:  `Old retrieve all policy types`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &base_legal_policies.OldRetrieveAllPolicyTypesParams{
			Offset: &offset,
			Limit:  limit,
		}
		ok, errOK := baseLegalPoliciesService.OldRetrieveAllPolicyTypesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	OldRetrieveAllPolicyTypesCmd.Flags().Int32("offset", 0, "Offset")
	OldRetrieveAllPolicyTypesCmd.Flags().Int32("limit", 20, "Limit")
	_ = OldRetrieveAllPolicyTypesCmd.MarkFlagRequired("limit")
}
