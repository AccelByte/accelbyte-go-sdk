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

// DeleteGroupAdminV1Cmd represents the DeleteGroupAdminV1 command
var DeleteGroupAdminV1Cmd = &cobra.Command{
	Use:   "deleteGroupAdminV1",
	Short: "Delete group admin V1",
	Long:  `Delete group admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.DeleteGroupAdminV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		errNoContent := groupService.DeleteGroupAdminV1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGroupAdminV1Cmd.Flags().String("groupId", "", "Group id")
	_ = DeleteGroupAdminV1Cmd.MarkFlagRequired("groupId")
	DeleteGroupAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupAdminV1Cmd.MarkFlagRequired("namespace")
}
