// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UnpublishSeasonCmd represents the UnpublishSeason command
var UnpublishSeasonCmd = &cobra.Command{
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
		ok, errOK := seasonService.UnpublishSeasonShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UnpublishSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = UnpublishSeasonCmd.MarkFlagRequired("namespace")
	UnpublishSeasonCmd.Flags().String("seasonId", "", "Season id")
	_ = UnpublishSeasonCmd.MarkFlagRequired("seasonId")
	UnpublishSeasonCmd.Flags().Bool("force", false, "Force")
}
