// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupRoles

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_roles"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteMemberRolePublicV2Cmd represents the DeleteMemberRolePublicV2 command
var DeleteMemberRolePublicV2Cmd = &cobra.Command{
	Use:   "deleteMemberRolePublicV2",
	Short: "Delete member role public V2",
	Long:  `Delete member role public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsRemoveRoleFromMemberRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.DeleteMemberRolePublicV2Params{
			Body:         body,
			GroupID:      groupId,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		errNoContent := groupRolesService.DeleteMemberRolePublicV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteMemberRolePublicV2Cmd.Flags().String("body", "", "Body")
	_ = DeleteMemberRolePublicV2Cmd.MarkFlagRequired("body")
	DeleteMemberRolePublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = DeleteMemberRolePublicV2Cmd.MarkFlagRequired("groupId")
	DeleteMemberRolePublicV2Cmd.Flags().String("memberRoleId", "", "Member role id")
	_ = DeleteMemberRolePublicV2Cmd.MarkFlagRequired("memberRoleId")
	DeleteMemberRolePublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteMemberRolePublicV2Cmd.MarkFlagRequired("namespace")
}
