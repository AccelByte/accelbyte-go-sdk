// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPolicies

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// OldPartialUpdatePolicyCmd represents the OldPartialUpdatePolicy command
var OldPartialUpdatePolicyCmd = &cobra.Command{
	Use:   "oldPartialUpdatePolicy",
	Short: "Old partial update policy",
	Long:  `Old partial update policy`,
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
		input := &base_legal_policies.OldPartialUpdatePolicyParams{
			Body:         body,
			BasePolicyID: basePolicyId,
		}
		ok, errOK := baseLegalPoliciesService.OldPartialUpdatePolicyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	OldPartialUpdatePolicyCmd.Flags().String("body", "", "Body")
	OldPartialUpdatePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = OldPartialUpdatePolicyCmd.MarkFlagRequired("basePolicyId")
}
