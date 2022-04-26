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

// UpdateMemberRolePublicV1Cmd represents the UpdateMemberRolePublicV1 command
var UpdateMemberRolePublicV1Cmd = &cobra.Command{
	Use:   "updateMemberRolePublicV1",
	Short: "Update member role public V1",
	Long:  `Update member role public V1`,
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
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.UpdateMemberRolePublicV1Params{
			Body:         body,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		ok, err := groupRolesService.UpdateMemberRolePublicV1Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateMemberRolePublicV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateMemberRolePublicV1Cmd.MarkFlagRequired("body")
	UpdateMemberRolePublicV1Cmd.Flags().StringP("memberRoleId", "", "", "Member role id")
	_ = UpdateMemberRolePublicV1Cmd.MarkFlagRequired("memberRoleId")
	UpdateMemberRolePublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateMemberRolePublicV1Cmd.MarkFlagRequired("namespace")
}
