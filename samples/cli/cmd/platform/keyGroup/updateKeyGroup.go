// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// UpdateKeyGroupCmd represents the UpdateKeyGroup command
var UpdateKeyGroupCmd = &cobra.Command{
	Use:   "updateKeyGroup",
	Short: "Update key group",
	Long:  `Update key group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.KeyGroupUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		keyGroupId, _ := cmd.Flags().GetString("keyGroupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &key_group.UpdateKeyGroupParams{
			Body:       body,
			KeyGroupID: keyGroupId,
			Namespace:  namespace,
		}
		ok, errOK := keyGroupService.UpdateKeyGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateKeyGroupCmd.Flags().String("body", "", "Body")
	_ = UpdateKeyGroupCmd.MarkFlagRequired("body")
	UpdateKeyGroupCmd.Flags().String("keyGroupId", "", "Key group id")
	_ = UpdateKeyGroupCmd.MarkFlagRequired("keyGroupId")
	UpdateKeyGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateKeyGroupCmd.MarkFlagRequired("namespace")
}
