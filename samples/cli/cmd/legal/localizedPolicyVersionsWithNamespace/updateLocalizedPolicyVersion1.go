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

// UpdateLocalizedPolicyVersion1Cmd represents the UpdateLocalizedPolicyVersion1 command
var UpdateLocalizedPolicyVersion1Cmd = &cobra.Command{
	Use:   "updateLocalizedPolicyVersion1",
	Short: "Update localized policy version 1",
	Long:  `Update localized policy version 1`,
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
		input := &localized_policy_versions_with_namespace.UpdateLocalizedPolicyVersion1Params{
			Body:                     body,
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		ok, err := localizedPolicyVersionsWithNamespaceService.UpdateLocalizedPolicyVersion1Short(input)
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
	UpdateLocalizedPolicyVersion1Cmd.Flags().String("body", "", "Body")
	UpdateLocalizedPolicyVersion1Cmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = UpdateLocalizedPolicyVersion1Cmd.MarkFlagRequired("localizedPolicyVersionId")
	UpdateLocalizedPolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateLocalizedPolicyVersion1Cmd.MarkFlagRequired("namespace")
}
