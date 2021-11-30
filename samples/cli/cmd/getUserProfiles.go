// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserProfiles represents the getUserProfiles command
var getUserProfiles = &cobra.Command{
	Use:   "getUserProfiles",
	Short: "Public Get user profiles",
	Long:  `Public Get user profiles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getUserProfiles called")
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &game_profile.PublicGetUserProfilesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := gameProfileService.PublicGetUserProfiles(input)
		if err != nil {
			return err
		} else {
			response, err := json.Marshal(ok)
			if err != nil {
				return err
			} else {
				logrus.Infof("Response %s", response)
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getUserProfiles)
	getUserProfiles.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getUserProfiles.MarkFlagRequired("namespace")
	getUserProfiles.Flags().StringP("userId", "u", "", "User ID")
	_ = getUserProfiles.MarkFlagRequired("userId")
}
