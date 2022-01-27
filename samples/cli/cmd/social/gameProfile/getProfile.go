// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getProfileCmd represents the getProfile command
var getProfileCmd = &cobra.Command{
	Use:   "getProfile",
	Short: "Get profile",
	Long:  `Get profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.GetProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.GetProfile(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getProfileCmd)
	getProfileCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getProfileCmd.MarkFlagRequired("namespace")
	getProfileCmd.Flags().StringP("profileId", "pd", " ", "Profile id")
	_ = getProfileCmd.MarkFlagRequired("profileId")
	getProfileCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getProfileCmd.MarkFlagRequired("userId")
}
