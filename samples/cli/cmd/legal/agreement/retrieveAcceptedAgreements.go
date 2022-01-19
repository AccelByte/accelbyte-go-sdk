// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// retrieveAcceptedAgreementsCmd represents the retrieveAcceptedAgreements command
var retrieveAcceptedAgreementsCmd = &cobra.Command{
	Use:   "retrieveAcceptedAgreements",
	Short: "Retrieve accepted agreements",
	Long:  `Retrieve accepted agreements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, _ := cmd.Flags().GetString("userId")
		input := &agreement.RetrieveAcceptedAgreementsParams{
			UserID: userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := agreementService.RetrieveAcceptedAgreements(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(retrieveAcceptedAgreementsCmd)
	retrieveAcceptedAgreementsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = retrieveAcceptedAgreementsCmd.MarkFlagRequired("userId")
}
