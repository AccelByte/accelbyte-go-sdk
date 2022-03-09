// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package tier

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/tier"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryTiersCmd represents the QueryTiers command
var QueryTiersCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	QueryTiersCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QueryTiersCmd.MarkFlagRequired("namespace")
	QueryTiersCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = QueryTiersCmd.MarkFlagRequired("seasonId")
	QueryTiersCmd.Flags().Int32P("limit", "", 20, "Limit")
	QueryTiersCmd.Flags().Int32P("offset", "", 0, "Offset")
}
