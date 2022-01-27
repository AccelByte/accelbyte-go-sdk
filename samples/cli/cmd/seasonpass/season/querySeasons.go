// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package season

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// querySeasonsCmd represents the querySeasons command
var querySeasonsCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(querySeasonsCmd)
	querySeasonsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = querySeasonsCmd.MarkFlagRequired("namespace")
	querySeasonsCmd.Flags().Int32P("limit", "lt", 20, "Limit")
	querySeasonsCmd.Flags().Int32P("offset", "ot", 0, "Offset")
	querySeasonsCmd.Flags().StringP("status", "ss", " ", "Status")
}
