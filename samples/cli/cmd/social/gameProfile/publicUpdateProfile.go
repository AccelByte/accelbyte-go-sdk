// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateProfileCmd represents the PublicUpdateProfile command
var PublicUpdateProfileCmd = &cobra.Command{
	Use:   "PublicUpdateProfile",
	Short: "Public update profile",
	Long:  `Public update profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.GameProfileRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &game_profile.PublicUpdateProfileParams{
			Body:      body,
			Namespace: namespace,
			ProfileID: profileId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := gameProfileService.PublicUpdateProfile(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicUpdateProfileCmd.Flags().StringP("body", "by", " ", "Body")
	PublicUpdateProfileCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicUpdateProfileCmd.MarkFlagRequired("namespace")
	PublicUpdateProfileCmd.Flags().StringP("profileId", "pd", " ", "Profile id")
	_ = PublicUpdateProfileCmd.MarkFlagRequired("profileId")
	PublicUpdateProfileCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PublicUpdateProfileCmd.MarkFlagRequired("userId")
}
