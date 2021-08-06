// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateProfile represents the updateProfile command
var updateProfile = &cobra.Command{
	Use:   "updateProfile",
	Short: "Public Update profile",
	Long:  `Public Update profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("updateProfile called")
		gameProfileService := &service.GameProfileService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		profileId := cmd.Flag("profileId").Value.String()
		requestBody := cmd.Flag("body").Value.String()
		var gameProfileRequest *socialclientmodels.GameProfileRequest
		err := json.Unmarshal([]byte(requestBody), &gameProfileRequest)
		if err != nil {
			return err
		}
		ok, err := gameProfileService.PublicUpdateProfile(namespace, userId, profileId, gameProfileRequest)
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
	rootCmd.AddCommand(updateProfile)
	updateProfile.Flags().StringP("namespace", "n", "", "User namespace")
	updateProfile.MarkFlagRequired("namespace")
	updateProfile.Flags().StringP("userId", "u", "", "User ID")
	updateProfile.MarkFlagRequired("userId")
	updateProfile.Flags().StringP("profileId", "p", "", "User Profile ID")
	updateProfile.MarkFlagRequired("profileId")
	updateProfile.Flags().StringP("body", "b", "", "Request Body. Example : '{\"attributes\":{\"skin\":\"Red\"}, \"profileName\":\"Han Solo\"}' ")
	updateProfile.MarkFlagRequired("body")
}
