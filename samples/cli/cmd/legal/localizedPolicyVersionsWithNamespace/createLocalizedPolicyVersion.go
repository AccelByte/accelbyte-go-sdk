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

// CreateLocalizedPolicyVersionCmd represents the CreateLocalizedPolicyVersion command
var CreateLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "createLocalizedPolicyVersion",
	Short: "Create localized policy version",
	Long:  `Create localized policy version`,
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
		input := &localized_policy_versions_with_namespace.CreateLocalizedPolicyVersionParams{
			Body:            body,
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		created, errCreated := localizedPolicyVersionsWithNamespaceService.CreateLocalizedPolicyVersionShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	CreateLocalizedPolicyVersionCmd.Flags().String("body", "", "Body")
	CreateLocalizedPolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateLocalizedPolicyVersionCmd.MarkFlagRequired("namespace")
	CreateLocalizedPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = CreateLocalizedPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
