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

// AdminGetListPersonalDataRequestCmd represents the AdminGetListPersonalDataRequest command
var AdminGetListPersonalDataRequestCmd = &cobra.Command{
	Use:   "adminGetListPersonalDataRequest",
	Short: "Admin get list personal data request",
	Long:  `Admin get list personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		input := &data_retrieval.AdminGetListPersonalDataRequestParams{
			Namespace:   namespace,
			Limit:       &limit,
			Offset:      &offset,
			RequestDate: &requestDate,
		}
		ok, errOK := dataRetrievalService.AdminGetListPersonalDataRequestShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetListPersonalDataRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetListPersonalDataRequestCmd.MarkFlagRequired("namespace")
	AdminGetListPersonalDataRequestCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetListPersonalDataRequestCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetListPersonalDataRequestCmd.Flags().String("requestDate", "", "Request date")
}
