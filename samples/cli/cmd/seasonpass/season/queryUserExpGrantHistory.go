// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryUserExpGrantHistoryCmd represents the QueryUserExpGrantHistory command
var QueryUserExpGrantHistoryCmd = &cobra.Command{
	Use:   "queryUserExpGrantHistory",
	Short: "Query user exp grant history",
	Long:  `Query user exp grant history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		from_, _ := cmd.Flags().GetString("from")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		source, _ := cmd.Flags().GetString("source")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		to, _ := cmd.Flags().GetString("to")
		input := &season.QueryUserExpGrantHistoryParams{
			Namespace: namespace,
			UserID:    userId,
			From:      &from_,
			Limit:     &limit,
			Offset:    &offset,
			SeasonID:  &seasonId,
			Source:    &source,
			Tags:      tags,
			To:        &to,
		}
		ok, err := seasonService.QueryUserExpGrantHistoryShort(input)
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
	QueryUserExpGrantHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserExpGrantHistoryCmd.MarkFlagRequired("namespace")
	QueryUserExpGrantHistoryCmd.Flags().String("userId", "", "User id")
	_ = QueryUserExpGrantHistoryCmd.MarkFlagRequired("userId")
	QueryUserExpGrantHistoryCmd.Flags().String("from", "", "From")
	QueryUserExpGrantHistoryCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserExpGrantHistoryCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserExpGrantHistoryCmd.Flags().String("seasonId", "", "Season id")
	QueryUserExpGrantHistoryCmd.Flags().String("source", "", "Source")
	QueryUserExpGrantHistoryCmd.Flags().String("tags", "", "Tags")
	QueryUserExpGrantHistoryCmd.Flags().String("to", "", "To")
}
