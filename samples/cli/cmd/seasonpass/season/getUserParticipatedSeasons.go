// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserParticipatedSeasonsCmd represents the getUserParticipatedSeasons command
var getUserParticipatedSeasonsCmd = &cobra.Command{
	Use:   "getUserParticipatedSeasons",
	Short: "Get user participated seasons",
	Long:  `Get user participated seasons`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &season.GetUserParticipatedSeasonsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.GetUserParticipatedSeasons(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserParticipatedSeasonsCmd)
	getUserParticipatedSeasonsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserParticipatedSeasonsCmd.MarkFlagRequired("namespace")
	getUserParticipatedSeasonsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserParticipatedSeasonsCmd.MarkFlagRequired("userId")
	getUserParticipatedSeasonsCmd.Flags().Int32P("limit", "l", 20, "Limit")
	getUserParticipatedSeasonsCmd.Flags().Int32P("offset", "o", 0, "Offset")
}
