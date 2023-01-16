// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicPlayerRecord

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrievePlayerRecordsCmd represents the RetrievePlayerRecords command
var RetrievePlayerRecordsCmd = &cobra.Command{
	Use:   "retrievePlayerRecords",
	Short: "Retrieve player records",
	Long:  `Retrieve player records`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicPlayerRecordService := &cloudsave.PublicPlayerRecordService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_player_record.RetrievePlayerRecordsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := publicPlayerRecordService.RetrievePlayerRecordsShort(input)
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
	RetrievePlayerRecordsCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrievePlayerRecordsCmd.MarkFlagRequired("namespace")
	RetrievePlayerRecordsCmd.Flags().Int64("limit", 20, "Limit")
	RetrievePlayerRecordsCmd.Flags().Int64("offset", 0, "Offset")
}
