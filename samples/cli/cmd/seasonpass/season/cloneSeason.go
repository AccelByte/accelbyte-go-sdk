// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package season

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CloneSeasonCmd represents the CloneSeason command
var CloneSeasonCmd = &cobra.Command{
	Use:   "cloneSeason",
	Short: "Clone season",
	Long:  `Clone season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.SeasonCloneRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &season.CloneSeasonParams{
			Body:      body,
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := seasonService.CloneSeason(input)
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
	CloneSeasonCmd.Flags().StringP("body", "", "", "Body")
	CloneSeasonCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CloneSeasonCmd.MarkFlagRequired("namespace")
	CloneSeasonCmd.Flags().StringP("seasonId", "", "", "Season id")
	_ = CloneSeasonCmd.MarkFlagRequired("seasonId")
}
