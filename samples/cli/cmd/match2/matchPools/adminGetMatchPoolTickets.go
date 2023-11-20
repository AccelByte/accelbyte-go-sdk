// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetMatchPoolTicketsCmd represents the AdminGetMatchPoolTickets command
var AdminGetMatchPoolTicketsCmd = &cobra.Command{
	Use:   "adminGetMatchPoolTickets",
	Short: "Admin get match pool tickets",
	Long:  `Admin get match pool tickets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &match_pools.AdminGetMatchPoolTicketsParams{
			Namespace: namespace,
			Pool:      pool,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := matchPoolsService.AdminGetMatchPoolTicketsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetMatchPoolTicketsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetMatchPoolTicketsCmd.MarkFlagRequired("namespace")
	AdminGetMatchPoolTicketsCmd.Flags().String("pool", "", "Pool")
	_ = AdminGetMatchPoolTicketsCmd.MarkFlagRequired("pool")
	AdminGetMatchPoolTicketsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetMatchPoolTicketsCmd.Flags().Int64("offset", 0, "Offset")
}
