// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QuerySectionsCmd represents the QuerySections command
var QuerySectionsCmd = &cobra.Command{
	Use:   "querySections",
	Short: "Query sections",
	Long:  `Query sections`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sectionService := &platform.SectionService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		end, _ := cmd.Flags().GetString("end")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		start, _ := cmd.Flags().GetString("start")
		storeId, _ := cmd.Flags().GetString("storeId")
		viewId, _ := cmd.Flags().GetString("viewId")
		input := &section.QuerySectionsParams{
			Namespace: namespace,
			End:       &end,
			Limit:     &limit,
			Offset:    &offset,
			Start:     &start,
			StoreID:   &storeId,
			ViewID:    &viewId,
		}
		ok, errOK := sectionService.QuerySectionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QuerySectionsCmd.Flags().String("namespace", "", "Namespace")
	_ = QuerySectionsCmd.MarkFlagRequired("namespace")
	QuerySectionsCmd.Flags().String("end", "", "End")
	QuerySectionsCmd.Flags().Int32("limit", 20, "Limit")
	QuerySectionsCmd.Flags().Int32("offset", 0, "Offset")
	QuerySectionsCmd.Flags().String("start", "", "Start")
	QuerySectionsCmd.Flags().String("storeId", "", "Store id")
	QuerySectionsCmd.Flags().String("viewId", "", "View id")
}
