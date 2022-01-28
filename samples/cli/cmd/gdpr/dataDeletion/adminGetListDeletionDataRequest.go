// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataDeletion

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetListDeletionDataRequestCmd represents the AdminGetListDeletionDataRequest command
var AdminGetListDeletionDataRequestCmd = &cobra.Command{
	Use:   "adminGetListDeletionDataRequest",
	Short: "Admin get list deletion data request",
	Long:  `Admin get list deletion data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		input := &data_deletion.AdminGetListDeletionDataRequestParams{
			Namespace:   namespace,
			After:       &after,
			Before:      &before,
			Limit:       &limit,
			Offset:      &offset,
			RequestDate: &requestDate,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataDeletionService.AdminGetListDeletionDataRequest(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGetListDeletionDataRequestCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = AdminGetListDeletionDataRequestCmd.MarkFlagRequired("namespace")
	AdminGetListDeletionDataRequestCmd.Flags().StringP("after", "", "0", "After")
	AdminGetListDeletionDataRequestCmd.Flags().StringP("before", "", "0", "Before")
	AdminGetListDeletionDataRequestCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminGetListDeletionDataRequestCmd.Flags().Int64P("offset", "", 0, "Offset")
	AdminGetListDeletionDataRequestCmd.Flags().StringP("requestDate", "", " ", "Request date")
}
