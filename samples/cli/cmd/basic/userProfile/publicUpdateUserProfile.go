// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userProfile

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateUserProfileCmd represents the PublicUpdateUserProfile command
var PublicUpdateUserProfileCmd = &cobra.Command{
	Use:   "publicUpdateUserProfile",
	Short: "Public update user profile",
	Long:  `Public update user profile`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfileUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.PublicUpdateUserProfileParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userProfileService.PublicUpdateUserProfileShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicUpdateUserProfileCmd.Flags().StringP("body", "", "", "Body")
	PublicUpdateUserProfileCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicUpdateUserProfileCmd.MarkFlagRequired("namespace")
	PublicUpdateUserProfileCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicUpdateUserProfileCmd.MarkFlagRequired("userId")
}
