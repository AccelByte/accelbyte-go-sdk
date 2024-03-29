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

// GetProfileCmd represents the GetProfile command
var GetProfileCmd = &cobra.Command{
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
		ok, errOK := gameProfileService.GetProfileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = GetProfileCmd.MarkFlagRequired("namespace")
	GetProfileCmd.Flags().String("profileId", "", "Profile id")
	_ = GetProfileCmd.MarkFlagRequired("profileId")
	GetProfileCmd.Flags().String("userId", "", "User id")
	_ = GetProfileCmd.MarkFlagRequired("userId")
}
