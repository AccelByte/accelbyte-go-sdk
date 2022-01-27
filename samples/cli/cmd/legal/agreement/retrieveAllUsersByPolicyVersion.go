// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package agreement

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveAllUsersByPolicyVersionCmd represents the retrieveAllUsersByPolicyVersion command
var retrieveAllUsersByPolicyVersionCmd = &cobra.Command{
	Use:   "retrieveAllUsersByPolicyVersion",
	Short: "Retrieve all users by policy version",
	Long:  `Retrieve all users by policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &agreement.RetrieveAllUsersByPolicyVersionParams{
			Keyword:         &keyword,
			Limit:           &limit,
			Offset:          &offset,
			PolicyVersionID: policyVersionId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := agreementService.RetrieveAllUsersByPolicyVersion(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveAllUsersByPolicyVersionCmd)
	retrieveAllUsersByPolicyVersionCmd.Flags().StringP("keyword", "kd", " ", "Keyword")
	retrieveAllUsersByPolicyVersionCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	retrieveAllUsersByPolicyVersionCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	retrieveAllUsersByPolicyVersionCmd.Flags().StringP("policyVersionId", "pd", " ", "Policy version id")
	_ = retrieveAllUsersByPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
