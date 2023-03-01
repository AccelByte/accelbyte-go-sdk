// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteGroupPublicV2Cmd represents the DeleteGroupPublicV2 command
var DeleteGroupPublicV2Cmd = &cobra.Command{
	Use:   "deleteGroupPublicV2",
	Short: "Delete group public V2",
	Long:  `Delete group public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.DeleteGroupPublicV2Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		errNoContent := groupService.DeleteGroupPublicV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGroupPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = DeleteGroupPublicV2Cmd.MarkFlagRequired("groupId")
	DeleteGroupPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupPublicV2Cmd.MarkFlagRequired("namespace")
}
