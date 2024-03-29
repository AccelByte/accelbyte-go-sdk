// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// PublicGetUserGameProfilesCmd represents the PublicGetUserGameProfiles command
var PublicGetUserGameProfilesCmd = &cobra.Command{
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
		ok, errOK := gameProfileService.PublicGetUserGameProfilesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserGameProfilesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserGameProfilesCmd.MarkFlagRequired("namespace")
	PublicGetUserGameProfilesCmd.Flags().String("userIds", "", "User ids")
	_ = PublicGetUserGameProfilesCmd.MarkFlagRequired("userIds")
}
