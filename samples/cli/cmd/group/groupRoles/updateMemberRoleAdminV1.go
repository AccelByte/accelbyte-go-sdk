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

// UpdateMemberRoleAdminV1Cmd represents the UpdateMemberRoleAdminV1 command
var UpdateMemberRoleAdminV1Cmd = &cobra.Command{
	Use:   "updateMemberRoleAdminV1",
	Short: "Update member role admin V1",
	Long:  `Update member role admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupRolesService := &group.GroupRolesService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateMemberRoleRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		memberRoleId, _ := cmd.Flags().GetString("memberRoleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_roles.UpdateMemberRoleAdminV1Params{
			Body:         body,
			MemberRoleID: memberRoleId,
			Namespace:    namespace,
		}
		ok, err := groupRolesService.UpdateMemberRoleAdminV1Short(input, nil)
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
	UpdateMemberRoleAdminV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateMemberRoleAdminV1Cmd.MarkFlagRequired("body")
	UpdateMemberRoleAdminV1Cmd.Flags().StringP("memberRoleId", "", "", "Member role id")
	_ = UpdateMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	UpdateMemberRoleAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
