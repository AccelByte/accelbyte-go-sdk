// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicDeleteProfileCmd represents the publicDeleteProfile command
var publicDeleteProfileCmd = &cobra.Command{
	Use:   "publicDeleteProfile",
	Short: "Public delete profile",
	Long:  `Public delete profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &game_profile.PublicDeleteProfileParams{
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := gameProfileService.PublicDeleteProfile(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicDeleteProfileCmd)
	publicDeleteProfileCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicDeleteProfileCmd.MarkFlagRequired("namespace")
	publicDeleteProfileCmd.Flags().StringP("profileId", "pd", " ", "Profile id")
	_ = publicDeleteProfileCmd.MarkFlagRequired("profileId")
	publicDeleteProfileCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicDeleteProfileCmd.MarkFlagRequired("userId")
}
