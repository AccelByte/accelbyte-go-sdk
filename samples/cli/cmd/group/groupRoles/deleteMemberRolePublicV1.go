// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// DeleteMemberRolePublicV1Cmd represents the DeleteMemberRolePublicV1 command
var DeleteMemberRolePublicV1Cmd = &cobra.Command{
	Use:   "deleteMemberRolePublicV1",
	Short: "Delete member role public V1",
	Long:  `Delete member role public V1`,
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
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.DeleteMemberRolePublicV1Params{
			Body:         body,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		ok, err := groupRolesService.DeleteMemberRolePublicV1Short(input)
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
	DeleteMemberRolePublicV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = DeleteMemberRolePublicV1Cmd.MarkFlagRequired("body")
	DeleteMemberRolePublicV1Cmd.Flags().StringP("memberRoleId", "", "", "Member role id")
	_ = DeleteMemberRolePublicV1Cmd.MarkFlagRequired("memberRoleId")
	DeleteMemberRolePublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteMemberRolePublicV1Cmd.MarkFlagRequired("namespace")
}
