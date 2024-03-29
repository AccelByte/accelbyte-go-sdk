// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
		ok, errOK := tierService.QueryTiersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryTiersCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryTiersCmd.MarkFlagRequired("namespace")
	QueryTiersCmd.Flags().String("seasonId", "", "Season id")
	_ = QueryTiersCmd.MarkFlagRequired("seasonId")
	QueryTiersCmd.Flags().Int32("limit", 20, "Limit")
	QueryTiersCmd.Flags().Int32("offset", 0, "Offset")
}
