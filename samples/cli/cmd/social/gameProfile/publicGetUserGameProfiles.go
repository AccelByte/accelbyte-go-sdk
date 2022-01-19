// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetUserGameProfilesCmd represents the publicGetUserGameProfiles command
var publicGetUserGameProfilesCmd = &cobra.Command{
	Use:   "publicGetUserGameProfiles",
	Short: "Public get user game profiles",
	Long:  `Public get user game profiles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userIdsString := cmd.Flag("userIds").Value.String()
		var userIds []string
		errUserIds := json.Unmarshal([]byte(userIdsString), &userIds)
		if errUserIds != nil {
			return errUserIds
		}
		input := &game_profile.PublicGetUserGameProfilesParams{
			Namespace: namespace,
			UserIds:   userIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.PublicGetUserGameProfiles(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetUserGameProfilesCmd)
	publicGetUserGameProfilesCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetUserGameProfilesCmd.MarkFlagRequired("namespace")
	publicGetUserGameProfilesCmd.Flags().StringP("userIds", "u", " ", "User ids")
	_ = publicGetUserGameProfilesCmd.MarkFlagRequired("userIds")
}
