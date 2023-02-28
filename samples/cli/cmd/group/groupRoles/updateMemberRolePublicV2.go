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

// UpdateMemberRolePublicV2Cmd represents the UpdateMemberRolePublicV2 command
var UpdateMemberRolePublicV2Cmd = &cobra.Command{
	Use:   "updateMemberRolePublicV2",
	Short: "Update member role public V2",
	Long:  `Update member role public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsAssignRoleToMemberRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.UpdateMemberRolePublicV2Params{
			Body:         body,
			GroupID:      groupId,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		ok, errOK := groupRolesService.UpdateMemberRolePublicV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateMemberRolePublicV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateMemberRolePublicV2Cmd.MarkFlagRequired("body")
	UpdateMemberRolePublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdateMemberRolePublicV2Cmd.MarkFlagRequired("groupId")
	UpdateMemberRolePublicV2Cmd.Flags().String("memberRoleId", "", "Member role id")
	_ = UpdateMemberRolePublicV2Cmd.MarkFlagRequired("memberRoleId")
	UpdateMemberRolePublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateMemberRolePublicV2Cmd.MarkFlagRequired("namespace")
}
