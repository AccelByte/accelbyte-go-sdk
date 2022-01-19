// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// queryTiersCmd represents the queryTiers command
var queryTiersCmd = &cobra.Command{
	Use:   "queryTiers",
	Short: "Query tiers",
	Long:  `Query tiers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tierService := &seasonpass.TierService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &tier.QueryTiersParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := tierService.QueryTiers(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(queryTiersCmd)
	queryTiersCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = queryTiersCmd.MarkFlagRequired("namespace")
	queryTiersCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = queryTiersCmd.MarkFlagRequired("seasonId")
	queryTiersCmd.Flags().Int32P("limit", "l", 20, "Limit")
	queryTiersCmd.Flags().Int32P("offset", "o", 0, "Offset")
}
