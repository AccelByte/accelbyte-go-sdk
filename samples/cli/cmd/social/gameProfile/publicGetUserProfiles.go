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

// PublicGetUserProfilesCmd represents the PublicGetUserProfiles command
var PublicGetUserProfilesCmd = &cobra.Command{
	Use:   "PublicGetUserProfiles",
	Short: "Public get user profiles",
	Long:  `Public get user profiles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.PublicGetUserProfilesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.PublicGetUserProfiles(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetUserProfilesCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicGetUserProfilesCmd.MarkFlagRequired("namespace")
	PublicGetUserProfilesCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PublicGetUserProfilesCmd.MarkFlagRequired("userId")
}
