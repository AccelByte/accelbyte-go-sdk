// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PartialUpdatePolicy1Cmd represents the PartialUpdatePolicy1 command
var PartialUpdatePolicy1Cmd = &cobra.Command{
	Use:   "partialUpdatePolicy1",
	Short: "Partial update policy 1",
	Long:  `Partial update policy 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdateBasePolicyRequestV2
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &base_legal_policies_with_namespace.PartialUpdatePolicy1Params{
			Body:         body,
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		ok, err := baseLegalPoliciesWithNamespaceService.PartialUpdatePolicy1Short(input)
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
	PartialUpdatePolicy1Cmd.Flags().String("body", "", "Body")
	PartialUpdatePolicy1Cmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = PartialUpdatePolicy1Cmd.MarkFlagRequired("basePolicyId")
	PartialUpdatePolicy1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PartialUpdatePolicy1Cmd.MarkFlagRequired("namespace")
}
