// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAcceptedAgreements1Cmd represents the RetrieveAcceptedAgreements1 command
var RetrieveAcceptedAgreements1Cmd = &cobra.Command{
	Use:   "retrieveAcceptedAgreements1",
	Short: "Retrieve accepted agreements 1",
	Long:  `Retrieve accepted agreements 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &agreement_with_namespace.RetrieveAcceptedAgreements1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := agreementWithNamespaceService.RetrieveAcceptedAgreements1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAcceptedAgreements1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAcceptedAgreements1Cmd.MarkFlagRequired("namespace")
	RetrieveAcceptedAgreements1Cmd.Flags().String("userId", "", "User id")
	_ = RetrieveAcceptedAgreements1Cmd.MarkFlagRequired("userId")
}
