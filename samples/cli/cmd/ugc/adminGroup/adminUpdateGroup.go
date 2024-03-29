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

// AdminUpdateGroupCmd represents the AdminUpdateGroup command
var AdminUpdateGroupCmd = &cobra.Command{
	Use:   "adminUpdateGroup",
	Short: "Admin update group",
	Long:  `Admin update group`,
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
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_group.AdminUpdateGroupParams{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminGroupService.AdminUpdateGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateGroupCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateGroupCmd.MarkFlagRequired("body")
	AdminUpdateGroupCmd.Flags().String("groupId", "", "Group id")
	_ = AdminUpdateGroupCmd.MarkFlagRequired("groupId")
	AdminUpdateGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateGroupCmd.MarkFlagRequired("namespace")
	AdminUpdateGroupCmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateGroupCmd.MarkFlagRequired("userId")
}
