// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package agreement

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllUsersByPolicyVersionCmd represents the RetrieveAllUsersByPolicyVersion command
var RetrieveAllUsersByPolicyVersionCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	RetrieveAllUsersByPolicyVersionCmd.Flags().StringP("keyword", "", "", "Keyword")
	RetrieveAllUsersByPolicyVersionCmd.Flags().Int32P("limit", "", 20, "Limit")
	RetrieveAllUsersByPolicyVersionCmd.Flags().Int32P("offset", "", 0, "Offset")
	RetrieveAllUsersByPolicyVersionCmd.Flags().StringP("policyVersionId", "", "", "Policy version id")
	_ = RetrieveAllUsersByPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
