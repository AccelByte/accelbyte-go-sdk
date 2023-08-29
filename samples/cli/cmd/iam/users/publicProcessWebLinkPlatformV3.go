// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicProcessWebLinkPlatformV3Cmd represents the PublicProcessWebLinkPlatformV3 command
var PublicProcessWebLinkPlatformV3Cmd = &cobra.Command{
	Use:   "publicProcessWebLinkPlatformV3",
	Short: "Public process web link platform V3",
	Long:  `Public process web link platform V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		state, _ := cmd.Flags().GetString("state")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		code, _ := cmd.Flags().GetString("code")
		input := &users.PublicProcessWebLinkPlatformV3Params{
			Code:       &code,
			State:      state,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := usersService.PublicProcessWebLinkPlatformV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicProcessWebLinkPlatformV3Cmd.Flags().String("code", "", "Code")
	PublicProcessWebLinkPlatformV3Cmd.Flags().String("state", "", "State")
	_ = PublicProcessWebLinkPlatformV3Cmd.MarkFlagRequired("state")
	PublicProcessWebLinkPlatformV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicProcessWebLinkPlatformV3Cmd.MarkFlagRequired("namespace")
	PublicProcessWebLinkPlatformV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicProcessWebLinkPlatformV3Cmd.MarkFlagRequired("platformId")
}
