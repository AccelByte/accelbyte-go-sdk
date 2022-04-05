// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// PublicUpdateUserProfileStatusCmd represents the PublicUpdateUserProfileStatus command
var PublicUpdateUserProfileStatusCmd = &cobra.Command{
	Use:   "publicUpdateUserProfileStatus",
	Short: "Public update user profile status",
	Long:  `Public update user profile status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userProfileService := &basic.UserProfileService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.UserProfileStatusUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_profile.PublicUpdateUserProfileStatusParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userProfileService.PublicUpdateUserProfileStatusShort(input)
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
	PublicUpdateUserProfileStatusCmd.Flags().StringP("body", "", "", "Body")
	PublicUpdateUserProfileStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicUpdateUserProfileStatusCmd.MarkFlagRequired("namespace")
	PublicUpdateUserProfileStatusCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicUpdateUserProfileStatusCmd.MarkFlagRequired("userId")
}
