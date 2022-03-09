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

// UpdateUserProfileStatusCmd represents the UpdateUserProfileStatus command
var UpdateUserProfileStatusCmd = &cobra.Command{
	Use:   "updateUserProfileStatus",
	Short: "Update user profile status",
	Long:  `Update user profile status`,
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
		input := &user_profile.UpdateUserProfileStatusParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userProfileService.UpdateUserProfileStatus(input)
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
	UpdateUserProfileStatusCmd.Flags().StringP("body", "", "", "Body")
	UpdateUserProfileStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateUserProfileStatusCmd.MarkFlagRequired("namespace")
	UpdateUserProfileStatusCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateUserProfileStatusCmd.MarkFlagRequired("userId")
}
