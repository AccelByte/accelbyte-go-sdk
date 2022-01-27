// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminPlatformUnlinkV3Cmd represents the adminPlatformUnlinkV3 command
var adminPlatformUnlinkV3Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminPlatformUnlinkV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminPlatformUnlinkV3Cmd)
	adminPlatformUnlinkV3Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = adminPlatformUnlinkV3Cmd.MarkFlagRequired("body")
	adminPlatformUnlinkV3Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminPlatformUnlinkV3Cmd.MarkFlagRequired("namespace")
	adminPlatformUnlinkV3Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = adminPlatformUnlinkV3Cmd.MarkFlagRequired("platformId")
	adminPlatformUnlinkV3Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminPlatformUnlinkV3Cmd.MarkFlagRequired("userId")
}
