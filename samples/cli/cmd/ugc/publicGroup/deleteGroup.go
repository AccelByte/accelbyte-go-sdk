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

// DeleteGroupCmd represents the DeleteGroup command
var DeleteGroupCmd = &cobra.Command{
	Use:   "deleteGroup",
	Short: "Delete group",
	Long:  `Delete group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicGroupService := &ugc.PublicGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_group.DeleteGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := publicGroupService.DeleteGroupShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGroupCmd.Flags().String("groupId", "", "Group id")
	_ = DeleteGroupCmd.MarkFlagRequired("groupId")
	DeleteGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupCmd.MarkFlagRequired("namespace")
	DeleteGroupCmd.Flags().String("userId", "", "User id")
	_ = DeleteGroupCmd.MarkFlagRequired("userId")
}
