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

// unpublishSeasonCmd represents the unpublishSeason command
var unpublishSeasonCmd = &cobra.Command{
	Use:   "unpublishSeason",
	Short: "Unpublish season",
	Long:  `Unpublish season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		force, _ := cmd.Flags().GetBool("force")
		input := &season.UnpublishSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
			Force:     &force,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.UnpublishSeason(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(unpublishSeasonCmd)
	unpublishSeasonCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = unpublishSeasonCmd.MarkFlagRequired("namespace")
	unpublishSeasonCmd.Flags().StringP("seasonId", "s", " ", "Season id")
	_ = unpublishSeasonCmd.MarkFlagRequired("seasonId")
	unpublishSeasonCmd.Flags().BoolP("force", "f", false, "Force")
}
