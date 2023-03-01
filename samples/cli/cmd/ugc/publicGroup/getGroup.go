// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupCmd represents the GetGroup command
var GetGroupCmd = &cobra.Command{
	Use:   "getGroup",
	Short: "Get group",
	Long:  `Get group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_group.GetGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicGroupService.GetGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGroupCmd.Flags().String("groupId", "", "Group id")
	_ = GetGroupCmd.MarkFlagRequired("groupId")
	GetGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupCmd.MarkFlagRequired("namespace")
	GetGroupCmd.Flags().String("userId", "", "User id")
	_ = GetGroupCmd.MarkFlagRequired("userId")
}
