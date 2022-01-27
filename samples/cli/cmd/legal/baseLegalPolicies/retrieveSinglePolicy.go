// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package baseLegalPolicies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveSinglePolicyCmd represents the retrieveSinglePolicy command
var retrieveSinglePolicyCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveSinglePolicyCmd)
	retrieveSinglePolicyCmd.Flags().StringP("basePolicyId", "bd", " ", "Base policy id")
	_ = retrieveSinglePolicyCmd.MarkFlagRequired("basePolicyId")
}
