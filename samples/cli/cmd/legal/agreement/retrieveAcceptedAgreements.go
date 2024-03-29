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

// RetrieveAcceptedAgreementsCmd represents the RetrieveAcceptedAgreements command
var RetrieveAcceptedAgreementsCmd = &cobra.Command{
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
		ok, errOK := agreementService.RetrieveAcceptedAgreementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAcceptedAgreementsCmd.Flags().String("userId", "", "User id")
	_ = RetrieveAcceptedAgreementsCmd.MarkFlagRequired("userId")
}
