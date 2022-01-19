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

// singleAdminUpdateGroupCmd represents the singleAdminUpdateGroup command
var singleAdminUpdateGroupCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.SingleAdminUpdateGroup(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminUpdateGroupCmd)
	singleAdminUpdateGroupCmd.Flags().StringP("body", "b", " ", "Body")
	_ = singleAdminUpdateGroupCmd.MarkFlagRequired("body")
	singleAdminUpdateGroupCmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = singleAdminUpdateGroupCmd.MarkFlagRequired("groupId")
	singleAdminUpdateGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = singleAdminUpdateGroupCmd.MarkFlagRequired("namespace")
}
