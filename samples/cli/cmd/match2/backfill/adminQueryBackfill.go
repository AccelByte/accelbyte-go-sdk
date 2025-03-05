// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/backfill"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminQueryBackfillCmd represents the AdminQueryBackfill command
var AdminQueryBackfillCmd = &cobra.Command{
	Use:   "adminQueryBackfill",
	Short: "Admin query backfill",
	Long:  `Admin query backfill`,
	RunE: func(cmd *cobra.Command, args []string) error {
		backfillService := &match2.BackfillService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		fromTime, _ := cmd.Flags().GetString("fromTime")
		isActive, _ := cmd.Flags().GetBool("isActive")
		limit, _ := cmd.Flags().GetInt64("limit")
		matchPool, _ := cmd.Flags().GetString("matchPool")
		offset, _ := cmd.Flags().GetInt64("offset")
		playerID, _ := cmd.Flags().GetString("playerID")
		region, _ := cmd.Flags().GetString("region")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		toTime, _ := cmd.Flags().GetString("toTime")
		input := &backfill.AdminQueryBackfillParams{
			Namespace: namespace,
			FromTime:  &fromTime,
			IsActive:  &isActive,
			Limit:     &limit,
			MatchPool: &matchPool,
			Offset:    &offset,
			PlayerID:  &playerID,
			Region:    &region,
			SessionID: &sessionID,
			ToTime:    &toTime,
		}
		ok, errOK := backfillService.AdminQueryBackfillShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminQueryBackfillCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminQueryBackfillCmd.MarkFlagRequired("namespace")
	AdminQueryBackfillCmd.Flags().String("fromTime", "", "From time")
	AdminQueryBackfillCmd.Flags().Bool("isActive", false, "Is active")
	AdminQueryBackfillCmd.Flags().Int64("limit", 20, "Limit")
	AdminQueryBackfillCmd.Flags().String("matchPool", "", "Match pool")
	AdminQueryBackfillCmd.Flags().Int64("offset", 0, "Offset")
	AdminQueryBackfillCmd.Flags().String("playerID", "", "Player ID")
	AdminQueryBackfillCmd.Flags().String("region", "", "Region")
	AdminQueryBackfillCmd.Flags().String("sessionID", "", "Session ID")
	AdminQueryBackfillCmd.Flags().String("toTime", "", "To time")
}
