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

// PublicListUserIDByPlatformUserIDsV3Cmd represents the PublicListUserIDByPlatformUserIDsV3 command
var PublicListUserIDByPlatformUserIDsV3Cmd = &cobra.Command{
	Use:   "publicListUserIDByPlatformUserIDsV3",
	Short: "Public list user ID by platform user I ds V3",
	Long:  `Public list user ID by platform user I ds V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelPlatformUserIDRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		rawPID, _ := cmd.Flags().GetBool("rawPID")
		rawPUID, _ := cmd.Flags().GetBool("rawPUID")
		input := &users.PublicListUserIDByPlatformUserIDsV3Params{
			Body:       body,
			Namespace:  namespace,
			PlatformID: platformId,
			RawPID:     &rawPID,
			RawPUID:    &rawPUID,
		}
		ok, errOK := usersService.PublicListUserIDByPlatformUserIDsV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicListUserIDByPlatformUserIDsV3Cmd.Flags().String("body", "", "Body")
	_ = PublicListUserIDByPlatformUserIDsV3Cmd.MarkFlagRequired("body")
	PublicListUserIDByPlatformUserIDsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListUserIDByPlatformUserIDsV3Cmd.MarkFlagRequired("namespace")
	PublicListUserIDByPlatformUserIDsV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicListUserIDByPlatformUserIDsV3Cmd.MarkFlagRequired("platformId")
	PublicListUserIDByPlatformUserIDsV3Cmd.Flags().Bool("rawPID", false, "Raw PID")
	PublicListUserIDByPlatformUserIDsV3Cmd.Flags().Bool("rawPUID", false, "Raw PUID")
}
