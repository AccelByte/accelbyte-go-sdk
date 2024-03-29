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

// QuerySeasonsCmd represents the QuerySeasons command
var QuerySeasonsCmd = &cobra.Command{
	Use:   "querySeasons",
	Short: "Query seasons",
	Long:  `Query seasons`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		statusString := cmd.Flag("status").Value.String()
		var status []string
		errStatus := json.Unmarshal([]byte(statusString), &status)
		if errStatus != nil {
			return errStatus
		}
		input := &season.QuerySeasonsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Status:    status,
		}
		ok, errOK := seasonService.QuerySeasonsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QuerySeasonsCmd.Flags().String("namespace", "", "Namespace")
	_ = QuerySeasonsCmd.MarkFlagRequired("namespace")
	QuerySeasonsCmd.Flags().Int32("limit", 20, "Limit")
	QuerySeasonsCmd.Flags().Int32("offset", 0, "Offset")
	QuerySeasonsCmd.Flags().String("status", "", "Status")
}
