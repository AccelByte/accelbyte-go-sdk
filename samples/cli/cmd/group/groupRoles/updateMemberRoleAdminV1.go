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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateMemberRoleAdminV1Cmd represents the updateMemberRoleAdminV1 command
var updateMemberRoleAdminV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupRolesService.UpdateMemberRoleAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateMemberRoleAdminV1Cmd)
	updateMemberRoleAdminV1Cmd.Flags().StringP("body", "by", " ", "Body")
	_ = updateMemberRoleAdminV1Cmd.MarkFlagRequired("body")
	updateMemberRoleAdminV1Cmd.Flags().StringP("memberRoleId", "md", " ", "Member role id")
	_ = updateMemberRoleAdminV1Cmd.MarkFlagRequired("memberRoleId")
	updateMemberRoleAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateMemberRoleAdminV1Cmd.MarkFlagRequired("namespace")
}
