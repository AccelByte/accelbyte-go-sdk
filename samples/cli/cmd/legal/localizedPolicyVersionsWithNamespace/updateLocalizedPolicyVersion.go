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

// UpdateLocalizedPolicyVersionCmd represents the UpdateLocalizedPolicyVersion command
var UpdateLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "updateLocalizedPolicyVersion",
	Short: "Update localized policy version",
	Long:  `Update localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdateLocalizedPolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersionParams{
			Body:                     body,
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		ok, errOK := localizedPolicyVersionsWithNamespaceService.UpdateLocalizedPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateLocalizedPolicyVersionCmd.Flags().String("body", "", "Body")
	UpdateLocalizedPolicyVersionCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = UpdateLocalizedPolicyVersionCmd.MarkFlagRequired("localizedPolicyVersionId")
	UpdateLocalizedPolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateLocalizedPolicyVersionCmd.MarkFlagRequired("namespace")
}
