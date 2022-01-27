// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataDeletion

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetListDeletionDataRequestCmd represents the adminGetListDeletionDataRequest command
var adminGetListDeletionDataRequestCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminGetListDeletionDataRequestCmd)
	adminGetListDeletionDataRequestCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGetListDeletionDataRequestCmd.MarkFlagRequired("namespace")
	adminGetListDeletionDataRequestCmd.Flags().StringP("after", "ar", "0", "After")
	adminGetListDeletionDataRequestCmd.Flags().StringP("before", "be", "0", "Before")
	adminGetListDeletionDataRequestCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	adminGetListDeletionDataRequestCmd.Flags().Int64P("offset", "ot", 0, "Offset")
	adminGetListDeletionDataRequestCmd.Flags().StringP("requestDate", "re", " ", "Request date")
}
