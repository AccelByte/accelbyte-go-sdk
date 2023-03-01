// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetProfileAttributeCmd represents the PublicGetProfileAttribute command
var PublicGetProfileAttributeCmd = &cobra.Command{
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
		ok, errOK := gameProfileService.PublicGetProfileAttributeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetProfileAttributeCmd.Flags().String("attributeName", "", "Attribute name")
	_ = PublicGetProfileAttributeCmd.MarkFlagRequired("attributeName")
	PublicGetProfileAttributeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetProfileAttributeCmd.MarkFlagRequired("namespace")
	PublicGetProfileAttributeCmd.Flags().String("profileId", "", "Profile id")
	_ = PublicGetProfileAttributeCmd.MarkFlagRequired("profileId")
	PublicGetProfileAttributeCmd.Flags().String("userId", "", "User id")
	_ = PublicGetProfileAttributeCmd.MarkFlagRequired("userId")
}
