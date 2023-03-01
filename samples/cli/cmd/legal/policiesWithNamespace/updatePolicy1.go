// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policiesWithNamespace

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePolicy1Cmd represents the UpdatePolicy1 command
var UpdatePolicy1Cmd = &cobra.Command{
	Use:   "updatePolicy1",
	Short: "Update policy 1",
	Long:  `Update policy 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesWithNamespaceService := &legal.PoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyId, _ := cmd.Flags().GetString("policyId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdatePolicyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policies_with_namespace.UpdatePolicy1Params{
			Body:      body,
			Namespace: namespace,
			PolicyID:  policyId,
		}
		errOK := policiesWithNamespaceService.UpdatePolicy1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpdatePolicy1Cmd.Flags().String("body", "", "Body")
	UpdatePolicy1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePolicy1Cmd.MarkFlagRequired("namespace")
	UpdatePolicy1Cmd.Flags().String("policyId", "", "Policy id")
	_ = UpdatePolicy1Cmd.MarkFlagRequired("policyId")
}
