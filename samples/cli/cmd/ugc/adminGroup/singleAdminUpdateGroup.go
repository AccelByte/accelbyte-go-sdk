// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGroup

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SingleAdminUpdateGroupCmd represents the SingleAdminUpdateGroup command
var SingleAdminUpdateGroupCmd = &cobra.Command{
	Use:   "singleAdminUpdateGroup",
	Short: "Single admin update group",
	Long:  `Single admin update group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_group.SingleAdminUpdateGroupParams{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := adminGroupService.SingleAdminUpdateGroupShort(input, nil)
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
	SingleAdminUpdateGroupCmd.Flags().StringP("body", "", "", "Body")
	_ = SingleAdminUpdateGroupCmd.MarkFlagRequired("body")
	SingleAdminUpdateGroupCmd.Flags().StringP("groupId", "", "", "Group id")
	_ = SingleAdminUpdateGroupCmd.MarkFlagRequired("groupId")
	SingleAdminUpdateGroupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SingleAdminUpdateGroupCmd.MarkFlagRequired("namespace")
}
