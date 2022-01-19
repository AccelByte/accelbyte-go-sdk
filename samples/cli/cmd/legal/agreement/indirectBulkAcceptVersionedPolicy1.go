// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// indirectBulkAcceptVersionedPolicy1Cmd represents the indirectBulkAcceptVersionedPolicy1 command
var indirectBulkAcceptVersionedPolicy1Cmd = &cobra.Command{
	Use:   "indirectBulkAcceptVersionedPolicy1",
	Short: "Indirect bulk accept versioned policy 1",
	Long:  `Indirect bulk accept versioned policy 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement.IndirectBulkAcceptVersionedPolicy1Params{
			Body:   body,
			UserID: userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := agreementService.IndirectBulkAcceptVersionedPolicy1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(indirectBulkAcceptVersionedPolicy1Cmd)
	indirectBulkAcceptVersionedPolicy1Cmd.Flags().StringP("body", "b", " ", "Body")
	indirectBulkAcceptVersionedPolicy1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = indirectBulkAcceptVersionedPolicy1Cmd.MarkFlagRequired("userId")
}
