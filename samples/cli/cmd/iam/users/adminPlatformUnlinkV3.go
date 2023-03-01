// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPlatformUnlinkV3Cmd represents the AdminPlatformUnlinkV3 command
var AdminPlatformUnlinkV3Cmd = &cobra.Command{
	Use:   "adminPlatformUnlinkV3",
	Short: "Admin platform unlink V3",
	Long:  `Admin platform unlink V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelUnlinkUserPlatformRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminPlatformUnlinkV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		errNoContent := usersService.AdminPlatformUnlinkV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminPlatformUnlinkV3Cmd.Flags().String("body", "", "Body")
	_ = AdminPlatformUnlinkV3Cmd.MarkFlagRequired("body")
	AdminPlatformUnlinkV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPlatformUnlinkV3Cmd.MarkFlagRequired("namespace")
	AdminPlatformUnlinkV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminPlatformUnlinkV3Cmd.MarkFlagRequired("platformId")
	AdminPlatformUnlinkV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminPlatformUnlinkV3Cmd.MarkFlagRequired("userId")
}
