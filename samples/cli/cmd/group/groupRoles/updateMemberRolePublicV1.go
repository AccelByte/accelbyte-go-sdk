// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// updateMemberRolePublicV1Cmd represents the updateMemberRolePublicV1 command
var updateMemberRolePublicV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupRolesService.UpdateMemberRolePublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateMemberRolePublicV1Cmd)
	updateMemberRolePublicV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateMemberRolePublicV1Cmd.MarkFlagRequired("body")
	updateMemberRolePublicV1Cmd.Flags().StringP("memberRoleId", "m", " ", "Member role id")
	_ = updateMemberRolePublicV1Cmd.MarkFlagRequired("memberRoleId")
	updateMemberRolePublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateMemberRolePublicV1Cmd.MarkFlagRequired("namespace")
}
