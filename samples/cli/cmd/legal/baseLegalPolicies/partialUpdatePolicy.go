// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package baseLegalPolicies

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// partialUpdatePolicyCmd represents the partialUpdatePolicy command
var partialUpdatePolicyCmd = &cobra.Command{
	Use:   "partialUpdatePolicy",
	Short: "Partial update policy",
	Long:  `Partial update policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdateBasePolicyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &base_legal_policies.PartialUpdatePolicyParams{
			Body:         body,
			BasePolicyID: basePolicyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := baseLegalPoliciesService.PartialUpdatePolicy(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(partialUpdatePolicyCmd)
	partialUpdatePolicyCmd.Flags().StringP("body", "by", " ", "Body")
	partialUpdatePolicyCmd.Flags().StringP("basePolicyId", "bd", " ", "Base policy id")
	_ = partialUpdatePolicyCmd.MarkFlagRequired("basePolicyId")
}
