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
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createProfile represents the createProfile command
var createProfile = &cobra.Command{
	Use:   "createProfile",
	Short: "Public Create user profiles",
	Long:  `Public Get user profiles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("createProfile called")
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		requestBody := cmd.Flag("body").Value.String()
		var gameProfileRequest *socialclientmodels.GameProfileRequest
		err := json.Unmarshal([]byte(requestBody), &gameProfileRequest)
		if err != nil {
			return err
		}
		input := &game_profile.PublicCreateProfileParams{
			Body:      gameProfileRequest,
			Namespace: namespace,
			UserID:    userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		err = gameProfileService.PublicCreateProfile(input)
		if err != nil {
			return err
		} else {
			logrus.Info("Successfully created profile")
		}
		return nil
	},
}

func init() {
	RootCmd.AddCommand(createProfile)
	createProfile.Flags().StringP("namespace", "n", "", "User namespace")
	_ = createProfile.MarkFlagRequired("namespace")
	createProfile.Flags().StringP("userId", "u", "", "User ID")
	_ = createProfile.MarkFlagRequired("userId")
	createProfile.Flags().StringP("body", "b", "", "Request Body. Example : '{\"attributes\":{\"skin\":\"Red\"}, \"profileName\":\"Han Solo\"}' ")
	_ = createProfile.MarkFlagRequired("body")
}
