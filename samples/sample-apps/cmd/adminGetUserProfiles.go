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

// adminGetUserProfiles represents the adminGetUserProfiles command
var adminGetUserProfiles = &cobra.Command{
	Use:   "adminGetUserProfiles",
	Short: "Admin Get user profiles",
	Long:  `Admin Get user profiles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("adminGetUserProfiles called")
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &game_profile.GetUserProfilesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := gameProfileService.GetUserProfiles(input)
		if err != nil {
			logrus.Error(err)
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
	rootCmd.AddCommand(adminGetUserProfiles)
	adminGetUserProfiles.Flags().StringP("namespace", "n", "", "User namespace")
	adminGetUserProfiles.MarkFlagRequired("namespace")
	adminGetUserProfiles.Flags().StringP("userId", "u", "", "User ID")
	adminGetUserProfiles.MarkFlagRequired("userId")
}
