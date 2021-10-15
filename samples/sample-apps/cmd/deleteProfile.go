// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteProfile represents the deleteProfile command
var deleteProfile = &cobra.Command{
	Use:   "deleteProfile",
	Short: "Public Delete user profile",
	Long:  `Public Delete user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("deleteProfile called")
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		profileId := cmd.Flag("profileId").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &game_profile.PublicDeleteProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		err := gameProfileService.PublicDeleteProfile(input)
		if err != nil {
			return err
		}
		logrus.Info("Delete profile successful")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteProfile)
	deleteProfile.Flags().StringP("namespace", "n", "", "User namespace")
	deleteProfile.MarkFlagRequired("namespace")
	deleteProfile.Flags().StringP("userId", "u", "", "User ID")
	deleteProfile.MarkFlagRequired("userId")
	deleteProfile.Flags().StringP("profileId", "p", "", "Profile ID")
	deleteProfile.MarkFlagRequired("profileId")
}
