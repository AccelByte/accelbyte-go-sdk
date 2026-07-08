// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrievalHeadless

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_headless"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSubmitMyHeadlessPersonalDataRequestCmd represents the PublicSubmitMyHeadlessPersonalDataRequest command
var PublicSubmitMyHeadlessPersonalDataRequestCmd = &cobra.Command{
	Use:   "publicSubmitMyHeadlessPersonalDataRequest",
	Short: "Public submit my headless personal data request",
	Long:  `Public submit my headless personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalHeadlessService := &gdpr.DataRetrievalHeadlessService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		email, _ := cmd.Flags().GetString("email")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &data_retrieval_headless.PublicSubmitMyHeadlessPersonalDataRequestParams{
			Email:       &email,
			LanguageTag: &languageTag,
		}
		created, errCreated := dataRetrievalHeadlessService.PublicSubmitMyHeadlessPersonalDataRequestShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicSubmitMyHeadlessPersonalDataRequestCmd.Flags().String("email", "", "Email")
	PublicSubmitMyHeadlessPersonalDataRequestCmd.Flags().String("languageTag", "", "Language tag")
}
