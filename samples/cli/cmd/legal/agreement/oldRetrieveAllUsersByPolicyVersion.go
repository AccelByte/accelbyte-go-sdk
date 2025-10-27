// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// OldRetrieveAllUsersByPolicyVersionCmd represents the OldRetrieveAllUsersByPolicyVersion command
var OldRetrieveAllUsersByPolicyVersionCmd = &cobra.Command{
	Use:   "oldRetrieveAllUsersByPolicyVersion",
	Short: "Old retrieve all users by policy version",
	Long:  `Old retrieve all users by policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &agreement.OldRetrieveAllUsersByPolicyVersionParams{
			Keyword:         &keyword,
			Limit:           &limit,
			Offset:          &offset,
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := agreementService.OldRetrieveAllUsersByPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	OldRetrieveAllUsersByPolicyVersionCmd.Flags().String("keyword", "", "Keyword")
	OldRetrieveAllUsersByPolicyVersionCmd.Flags().Int32("limit", 20, "Limit")
	OldRetrieveAllUsersByPolicyVersionCmd.Flags().Int32("offset", 0, "Offset")
	OldRetrieveAllUsersByPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = OldRetrieveAllUsersByPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
