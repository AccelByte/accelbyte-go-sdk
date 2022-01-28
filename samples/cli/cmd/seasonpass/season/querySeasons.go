// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.QuerySeasons(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	QuerySeasonsCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = QuerySeasonsCmd.MarkFlagRequired("namespace")
	QuerySeasonsCmd.Flags().Int32P("limit", "", 20, "Limit")
	QuerySeasonsCmd.Flags().Int32P("offset", "", 0, "Offset")
	QuerySeasonsCmd.Flags().StringP("status", "", " ", "Status")
}
