// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDeleteProfileCmd represents the PublicDeleteProfile command
var PublicDeleteProfileCmd = &cobra.Command{
	Use:   "publicDeleteProfile",
	Short: "Public delete profile",
	Long:  `Public delete profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.PublicDeleteProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		errNoContent := gameProfileService.PublicDeleteProfileShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeleteProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeleteProfileCmd.MarkFlagRequired("namespace")
	PublicDeleteProfileCmd.Flags().String("profileId", "", "Profile id")
	_ = PublicDeleteProfileCmd.MarkFlagRequired("profileId")
	PublicDeleteProfileCmd.Flags().String("userId", "", "User id")
	_ = PublicDeleteProfileCmd.MarkFlagRequired("userId")
}
