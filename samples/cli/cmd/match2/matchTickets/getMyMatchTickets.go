// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchTickets

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/match_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetMyMatchTicketsCmd represents the GetMyMatchTickets command
var GetMyMatchTicketsCmd = &cobra.Command{
	Use:   "getMyMatchTickets",
	Short: "Get my match tickets",
	Long:  `Get my match tickets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchTicketsService := &match2.MatchTicketsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &match_tickets.GetMyMatchTicketsParams{
			Namespace: namespace,
			Limit:     &limit,
			MatchPool: &matchPool,
			Offset:    &offset,
		}
		ok, errOK := matchTicketsService.GetMyMatchTicketsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetMyMatchTicketsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetMyMatchTicketsCmd.MarkFlagRequired("namespace")
	GetMyMatchTicketsCmd.Flags().Int64("limit", 20, "Limit")
	GetMyMatchTicketsCmd.Flags().String("matchPool", "", "Match pool")
	GetMyMatchTicketsCmd.Flags().Int64("offset", 0, "Offset")
}
