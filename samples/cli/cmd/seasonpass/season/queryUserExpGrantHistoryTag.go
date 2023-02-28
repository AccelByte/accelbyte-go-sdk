// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryUserExpGrantHistoryTagCmd represents the QueryUserExpGrantHistoryTag command
var QueryUserExpGrantHistoryTagCmd = &cobra.Command{
	Use:   "queryUserExpGrantHistoryTag",
	Short: "Query user exp grant history tag",
	Long:  `Query user exp grant history tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &season.QueryUserExpGrantHistoryTagParams{
			Namespace: namespace,
			UserID:    userId,
			SeasonID:  &seasonId,
		}
		ok, errOK := seasonService.QueryUserExpGrantHistoryTagShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryUserExpGrantHistoryTagCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserExpGrantHistoryTagCmd.MarkFlagRequired("namespace")
	QueryUserExpGrantHistoryTagCmd.Flags().String("userId", "", "User id")
	_ = QueryUserExpGrantHistoryTagCmd.MarkFlagRequired("userId")
	QueryUserExpGrantHistoryTagCmd.Flags().String("seasonId", "", "Season id")
}
