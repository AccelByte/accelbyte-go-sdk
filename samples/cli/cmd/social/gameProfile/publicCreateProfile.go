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
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicCreateProfileCmd represents the PublicCreateProfile command
var PublicCreateProfileCmd = &cobra.Command{
	Use:   "publicCreateProfile",
	Short: "Public create profile",
	Long:  `Public create profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.GameProfileRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &game_profile.PublicCreateProfileParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errCreated := gameProfileService.PublicCreateProfileShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicCreateProfileCmd.Flags().String("body", "", "Body")
	PublicCreateProfileCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateProfileCmd.MarkFlagRequired("namespace")
	PublicCreateProfileCmd.Flags().String("userId", "", "User id")
	_ = PublicCreateProfileCmd.MarkFlagRequired("userId")
}
