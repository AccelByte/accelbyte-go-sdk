// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserGameProfiles represents the getUserGameProfiles command
var getUserGameProfiles = &cobra.Command{
	Use:   "getUserGameProfiles",
	Short: "Public Get user game profile",
	Long:  `Public Get user game profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getUserGameProfiles called")
		gameProfileService := &service.GameProfileService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userIDsInput := cmd.Flag("userIDs").Value.String()
		var userIDs []string
		err := json.Unmarshal([]byte(userIDsInput), &userIDs)
		logrus.Info(userIDs[0])
		ok, err := gameProfileService.PublicGetUserGameProfiles(namespace, userIDs)
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
	rootCmd.AddCommand(getUserGameProfiles)
	getUserGameProfiles.Flags().StringP("namespace", "n", "", "User namespace")
	getUserGameProfiles.MarkFlagRequired("namespace")
	getUserGameProfiles.Flags().StringP( "userIDs", "u","", "Array of User ID. Example: '[\"98603754a2854b83bafde85402086956\",\"98603754a2854b83bafde8540208777\"]' ")
	getUserGameProfiles.MarkFlagRequired("userIDs")
}
