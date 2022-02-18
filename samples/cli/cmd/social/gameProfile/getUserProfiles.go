// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserProfilesCmd represents the GetUserProfiles command
var GetUserProfilesCmd = &cobra.Command{
	Use:   "getUserProfiles",
	Short: "Get user profiles",
	Long:  `Get user profiles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.GetUserProfilesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.GetUserProfiles(input)
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
	GetUserProfilesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserProfilesCmd.MarkFlagRequired("namespace")
	GetUserProfilesCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserProfilesCmd.MarkFlagRequired("userId")
}
