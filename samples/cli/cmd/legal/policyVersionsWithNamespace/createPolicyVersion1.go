// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersionsWithNamespace

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreatePolicyVersion1Cmd represents the CreatePolicyVersion1 command
var CreatePolicyVersion1Cmd = &cobra.Command{
	Use:   "createPolicyVersion1",
	Short: "Create policy version 1",
	Long:  `Create policy version 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyId, _ := cmd.Flags().GetString("policyId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.CreatePolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policy_versions_with_namespace.CreatePolicyVersion1Params{
			Body:      body,
			Namespace: namespace,
			PolicyID:  policyId,
		}
		created, errCreated := policyVersionsWithNamespaceService.CreatePolicyVersion1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreatePolicyVersion1Cmd.Flags().String("body", "", "Body")
	CreatePolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreatePolicyVersion1Cmd.MarkFlagRequired("namespace")
	CreatePolicyVersion1Cmd.Flags().String("policyId", "", "Policy id")
	_ = CreatePolicyVersion1Cmd.MarkFlagRequired("policyId")
}
