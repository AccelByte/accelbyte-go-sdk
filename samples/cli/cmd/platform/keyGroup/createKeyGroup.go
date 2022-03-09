// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package keyGroup

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateKeyGroupCmd represents the CreateKeyGroup command
var CreateKeyGroupCmd = &cobra.Command{
	Use:   "createKeyGroup",
	Short: "Create key group",
	Long:  `Create key group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.KeyGroupCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &key_group.CreateKeyGroupParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := keyGroupService.CreateKeyGroup(input)
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
	CreateKeyGroupCmd.Flags().StringP("body", "", "", "Body")
	CreateKeyGroupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateKeyGroupCmd.MarkFlagRequired("namespace")
}
