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

// getProfile represents the getProfile command
var getProfile = &cobra.Command{
	Use:   "getProfile",
	Short: "Public Get user profile",
	Long:  `Public Get user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getProfile called")
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		profileId := cmd.Flag("profileId").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &game_profile.PublicGetProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.PublicGetProfile(input)
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
	rootCmd.AddCommand(getProfile)
	getProfile.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getProfile.MarkFlagRequired("namespace")
	getProfile.Flags().StringP("userId", "u", "", "User ID")
	_ = getProfile.MarkFlagRequired("userId")
	getProfile.Flags().StringP("profileId", "p", "", "Profile ID")
	_ = getProfile.MarkFlagRequired("profileId")
}
