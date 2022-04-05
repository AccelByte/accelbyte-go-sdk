// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package season

import (
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserParticipatedSeasonsCmd represents the GetUserParticipatedSeasons command
var GetUserParticipatedSeasonsCmd = &cobra.Command{
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
		ok, err := seasonService.GetUserParticipatedSeasonsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetUserParticipatedSeasonsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserParticipatedSeasonsCmd.MarkFlagRequired("namespace")
	GetUserParticipatedSeasonsCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserParticipatedSeasonsCmd.MarkFlagRequired("userId")
	GetUserParticipatedSeasonsCmd.Flags().Int32P("limit", "", 20, "Limit")
	GetUserParticipatedSeasonsCmd.Flags().Int32P("offset", "", 0, "Offset")
}
