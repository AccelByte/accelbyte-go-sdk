// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package season

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.UnpublishSeason(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	UnpublishSeasonCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UnpublishSeasonCmd.MarkFlagRequired("namespace")
	UnpublishSeasonCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = UnpublishSeasonCmd.MarkFlagRequired("seasonId")
	UnpublishSeasonCmd.Flags().BoolP("force", "", false, "Force")
}
