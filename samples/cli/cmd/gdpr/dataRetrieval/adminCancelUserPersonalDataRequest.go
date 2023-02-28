// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminCancelUserPersonalDataRequestCmd represents the AdminCancelUserPersonalDataRequest command
var AdminCancelUserPersonalDataRequestCmd = &cobra.Command{
	Use:   "adminCancelUserPersonalDataRequest",
	Short: "Admin cancel user personal data request",
	Long:  `Admin cancel user personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_retrieval.AdminCancelUserPersonalDataRequestParams{
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
		}
		errNoContent := dataRetrievalService.AdminCancelUserPersonalDataRequestShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminCancelUserPersonalDataRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCancelUserPersonalDataRequestCmd.MarkFlagRequired("namespace")
	AdminCancelUserPersonalDataRequestCmd.Flags().String("requestDate", "", "Request date")
	_ = AdminCancelUserPersonalDataRequestCmd.MarkFlagRequired("requestDate")
	AdminCancelUserPersonalDataRequestCmd.Flags().String("userId", "", "User id")
	_ = AdminCancelUserPersonalDataRequestCmd.MarkFlagRequired("userId")
}
