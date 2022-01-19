// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetProfileAttributeCmd represents the publicGetProfileAttribute command
var publicGetProfileAttributeCmd = &cobra.Command{
	Use:   "publicGetProfileAttribute",
	Short: "Public get profile attribute",
	Long:  `Public get profile attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		attributeName, _ := cmd.Flags().GetString("attributeName")
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.PublicGetProfileAttributeParams{
			AttributeName: attributeName,
			Namespace:     namespace,
			ProfileID:     profileId,
			UserID:        userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.PublicGetProfileAttribute(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetProfileAttributeCmd)
	publicGetProfileAttributeCmd.Flags().StringP("attributeName", "a", " ", "Attribute name")
	_ = publicGetProfileAttributeCmd.MarkFlagRequired("attributeName")
	publicGetProfileAttributeCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicGetProfileAttributeCmd.MarkFlagRequired("namespace")
	publicGetProfileAttributeCmd.Flags().StringP("profileId", "p", " ", "Profile id")
	_ = publicGetProfileAttributeCmd.MarkFlagRequired("profileId")
	publicGetProfileAttributeCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicGetProfileAttributeCmd.MarkFlagRequired("userId")
}
