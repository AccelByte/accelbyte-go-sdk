// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateGroupCmd represents the adminUpdateGroup command
var adminUpdateGroupCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.AdminUpdateGroup(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateGroupCmd)
	adminUpdateGroupCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateGroupCmd.MarkFlagRequired("body")
	adminUpdateGroupCmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = adminUpdateGroupCmd.MarkFlagRequired("groupId")
	adminUpdateGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateGroupCmd.MarkFlagRequired("namespace")
	adminUpdateGroupCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminUpdateGroupCmd.MarkFlagRequired("userId")
}
