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

// adminGetProfile represents the adminGetProfile command
var adminGetProfile = &cobra.Command{
	Use:   "adminGetProfile",
	Short: "Admin Get user profile",
	Long:  `Admin Get user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("adminGetProfile called")
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		profileId := cmd.Flag("profileId").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &game_profile.GetProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		ok, err := gameProfileService.GetProfile(input)
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
	rootCmd.AddCommand(adminGetProfile)
	adminGetProfile.Flags().StringP("namespace", "n", "", "User namespace")
	adminGetProfile.MarkFlagRequired("namespace")
	adminGetProfile.Flags().StringP("userId", "u", "", "User ID")
	adminGetProfile.MarkFlagRequired("userId")
	adminGetProfile.Flags().StringP("profileId", "p", "", "Profile ID")
	adminGetProfile.MarkFlagRequired("profileId")
}
