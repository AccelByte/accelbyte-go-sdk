// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package keyGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetKeyGroupDynamicCmd represents the GetKeyGroupDynamic command
var GetKeyGroupDynamicCmd = &cobra.Command{
	Use:   "getKeyGroupDynamic",
	Short: "Get key group dynamic",
	Long:  `Get key group dynamic`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		keyGroupId, _ := cmd.Flags().GetString("keyGroupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &key_group.GetKeyGroupDynamicParams{
			KeyGroupID: keyGroupId,
			Namespace:  namespace,
		}
		ok, errOK := keyGroupService.GetKeyGroupDynamicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetKeyGroupDynamicCmd.Flags().String("keyGroupId", "", "Key group id")
	_ = GetKeyGroupDynamicCmd.MarkFlagRequired("keyGroupId")
	GetKeyGroupDynamicCmd.Flags().String("namespace", "", "Namespace")
	_ = GetKeyGroupDynamicCmd.MarkFlagRequired("namespace")
}
