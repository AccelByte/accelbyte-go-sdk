// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetProfileCmd represents the PublicGetProfile command
var PublicGetProfileCmd = &cobra.Command{
	Use:   "publicGetProfile",
	Short: "Public get profile",
	Long:  `Public get profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.PublicGetProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		ok, err := gameProfileService.PublicGetProfileShort(input)
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
	PublicGetProfileCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetProfileCmd.MarkFlagRequired("namespace")
	PublicGetProfileCmd.Flags().StringP("profileId", "", "", "Profile id")
	_ = PublicGetProfileCmd.MarkFlagRequired("profileId")
	PublicGetProfileCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetProfileCmd.MarkFlagRequired("userId")
}
