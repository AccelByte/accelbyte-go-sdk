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

// UpdatePolicyVersionCmd represents the UpdatePolicyVersion command
var UpdatePolicyVersionCmd = &cobra.Command{
	Use:   "updatePolicyVersion",
	Short: "Update policy version",
	Long:  `Update policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdatePolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policy_versions_with_namespace.UpdatePolicyVersionParams{
			Body:            body,
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := policyVersionsWithNamespaceService.UpdatePolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdatePolicyVersionCmd.Flags().String("body", "", "Body")
	UpdatePolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePolicyVersionCmd.MarkFlagRequired("namespace")
	UpdatePolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = UpdatePolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
