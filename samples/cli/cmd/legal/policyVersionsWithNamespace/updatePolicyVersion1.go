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

// UpdatePolicyVersion1Cmd represents the UpdatePolicyVersion1 command
var UpdatePolicyVersion1Cmd = &cobra.Command{
	Use:   "updatePolicyVersion1",
	Short: "Update policy version 1",
	Long:  `Update policy version 1`,
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
		input := &policy_versions_with_namespace.UpdatePolicyVersion1Params{
			Body:            body,
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		ok, err := policyVersionsWithNamespaceService.UpdatePolicyVersion1Short(input)
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
	UpdatePolicyVersion1Cmd.Flags().String("body", "", "Body")
	UpdatePolicyVersion1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePolicyVersion1Cmd.MarkFlagRequired("namespace")
	UpdatePolicyVersion1Cmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = UpdatePolicyVersion1Cmd.MarkFlagRequired("policyVersionId")
}
