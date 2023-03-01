// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersionsWithNamespace

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/localized_policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateLocalizedPolicyVersion1Cmd represents the CreateLocalizedPolicyVersion1 command
var CreateLocalizedPolicyVersion1Cmd = &cobra.Command{
	Use:   "createLocalizedPolicyVersion1",
	Short: "Create localized policy version 1",
	Long:  `Create localized policy version 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.CreateLocalizedPolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions_with_namespace.CreateLocalizedPolicyVersion1Params{
			Body:            body,
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		created, errCreated := localizedPolicyVersionsWithNamespaceService.CreateLocalizedPolicyVersion1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateLocalizedPolicyVersion1Cmd.Flags().String("body", "", "Body")
	CreateLocalizedPolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateLocalizedPolicyVersion1Cmd.MarkFlagRequired("namespace")
	CreateLocalizedPolicyVersion1Cmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = CreateLocalizedPolicyVersion1Cmd.MarkFlagRequired("policyVersionId")
}
