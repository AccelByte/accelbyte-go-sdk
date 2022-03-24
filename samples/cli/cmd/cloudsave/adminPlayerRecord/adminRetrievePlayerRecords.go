// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package adminPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRetrievePlayerRecordsCmd represents the AdminRetrievePlayerRecords command
var AdminRetrievePlayerRecordsCmd = &cobra.Command{
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
		ok, err := adminPlayerRecordService.AdminRetrievePlayerRecordsShort(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	AdminRetrievePlayerRecordsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminRetrievePlayerRecordsCmd.MarkFlagRequired("namespace")
	AdminRetrievePlayerRecordsCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminRetrievePlayerRecordsCmd.MarkFlagRequired("userId")
	AdminRetrievePlayerRecordsCmd.Flags().Int64P("limit", "", 20, "Limit")
	AdminRetrievePlayerRecordsCmd.Flags().Int64P("offset", "", 0, "Offset")
}
