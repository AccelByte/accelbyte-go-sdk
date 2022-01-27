// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policies

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updatePolicyCmd represents the updatePolicy command
var updatePolicyCmd = &cobra.Command{
	Use:   "updatePolicy",
	Short: "Update policy",
	Long:  `Update policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdatePolicyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policies.UpdatePolicyParams{
			Body:     body,
			PolicyID: policyId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := policiesService.UpdatePolicy(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updatePolicyCmd)
	updatePolicyCmd.Flags().StringP("body", "by", " ", "Body")
	updatePolicyCmd.Flags().StringP("policyId", "pd", " ", "Policy id")
	_ = updatePolicyCmd.MarkFlagRequired("policyId")
}
