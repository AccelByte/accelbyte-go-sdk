// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		errInput := dataRetrievalService.AdminCancelUserPersonalDataRequestShort(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminCancelUserPersonalDataRequestCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminCancelUserPersonalDataRequestCmd.MarkFlagRequired("namespace")
	AdminCancelUserPersonalDataRequestCmd.Flags().StringP("requestDate", "", "", "Request date")
	_ = AdminCancelUserPersonalDataRequestCmd.MarkFlagRequired("requestDate")
	AdminCancelUserPersonalDataRequestCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminCancelUserPersonalDataRequestCmd.MarkFlagRequired("userId")
}
