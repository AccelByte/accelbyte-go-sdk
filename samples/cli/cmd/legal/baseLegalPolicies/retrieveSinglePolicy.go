// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package baseLegalPolicies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
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
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		input := &base_legal_policies.RetrieveSinglePolicyParams{
			BasePolicyID: basePolicyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := baseLegalPoliciesService.RetrieveSinglePolicy(input)
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
	RetrieveSinglePolicyCmd.Flags().StringP("basePolicyId", "", "", "Base policy id")
	_ = RetrieveSinglePolicyCmd.MarkFlagRequired("basePolicyId")
}
