// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminRetrievePlayerRecordsCmd represents the adminRetrievePlayerRecords command
var adminRetrievePlayerRecordsCmd = &cobra.Command{
	Use:   "adminRetrievePlayerRecords",
	Short: "Admin retrieve player records",
	Long:  `Admin retrieve player records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminPlayerRecordService := &cloudsave.AdminPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_player_record.AdminRetrievePlayerRecordsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminPlayerRecordService.AdminRetrievePlayerRecords(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminRetrievePlayerRecordsCmd)
	adminRetrievePlayerRecordsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminRetrievePlayerRecordsCmd.MarkFlagRequired("namespace")
	adminRetrievePlayerRecordsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminRetrievePlayerRecordsCmd.MarkFlagRequired("userId")
	adminRetrievePlayerRecordsCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	adminRetrievePlayerRecordsCmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
