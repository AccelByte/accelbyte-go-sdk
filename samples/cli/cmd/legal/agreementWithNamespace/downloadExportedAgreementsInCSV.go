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

// DownloadExportedAgreementsInCSVCmd represents the DownloadExportedAgreementsInCSV command
var DownloadExportedAgreementsInCSVCmd = &cobra.Command{
	Use:   "downloadExportedAgreementsInCSV",
	Short: "Download exported agreements in CSV",
	Long:  `Download exported agreements in CSV`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &agreement_with_namespace.DownloadExportedAgreementsInCSVParams{
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := agreementWithNamespaceService.DownloadExportedAgreementsInCSVShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DownloadExportedAgreementsInCSVCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadExportedAgreementsInCSVCmd.MarkFlagRequired("namespace")
	DownloadExportedAgreementsInCSVCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = DownloadExportedAgreementsInCSVCmd.MarkFlagRequired("policyVersionId")
}
