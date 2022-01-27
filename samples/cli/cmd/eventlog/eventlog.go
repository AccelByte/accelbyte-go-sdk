// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package eventlog

import (
	"github.com/AccelByte/sample-apps/cmd/eventlog/event"
	"github.com/AccelByte/sample-apps/cmd/eventlog/eventDescriptions"
	"github.com/AccelByte/sample-apps/cmd/eventlog/eventRegistry"
	"github.com/AccelByte/sample-apps/cmd/eventlog/eventV2"
	"github.com/AccelByte/sample-apps/cmd/eventlog/userInformation"
	"github.com/spf13/cobra"
)

// EventlogCmd represents the service's child command
var EventlogCmd = &cobra.Command{
	Use:   "Eventlog",
	Short: "Eventlog to get all the commands",
}

func init() {
	EventlogCmd.AddCommand(eventDescriptions.AgentTypeDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.SpecificAgentTypeDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.EventIDDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.SpecificEventIDDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.EventLevelDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.SpecificEventLevelDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.EventTypeDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.SpecificEventTypeDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.UXNameDescriptionHandlerCmd)
	EventlogCmd.AddCommand(eventDescriptions.SpecificUXDescriptionHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByNamespaceHandlerCmd)
	EventlogCmd.AddCommand(event.PostEventHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByEventIDHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByEventTypeHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByEventTypeAndEventIDHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByUserIDHandlerCmd)
	EventlogCmd.AddCommand(userInformation.GetUserActivitiesHandlerCmd)
	EventlogCmd.AddCommand(userInformation.DeleteUserActivitiesHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByUserIDAndEventIDHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByUserIDAndEventTypeHandlerCmd)
	EventlogCmd.AddCommand(event.GetEventByUserEventIDAndEventTypeHandlerCmd)
	EventlogCmd.AddCommand(userInformation.LastUserActivityTimeHandlerCmd)
	EventlogCmd.AddCommand(eventRegistry.GetRegisteredEventsHandlerCmd)
	EventlogCmd.AddCommand(eventRegistry.RegisterEventHandlerCmd)
	EventlogCmd.AddCommand(eventRegistry.GetRegisteredEventIDHandlerCmd)
	EventlogCmd.AddCommand(eventRegistry.UpdateEventRegistryHandlerCmd)
	EventlogCmd.AddCommand(eventRegistry.UnregisterEventIDHandlerCmd)
	EventlogCmd.AddCommand(eventRegistry.GetRegisteredEventsByEventTypeHandlerCmd)
	EventlogCmd.AddCommand(eventV2.QueryEventStreamHandlerCmd)
	EventlogCmd.AddCommand(eventV2.GetEventSpecificUserV2HandlerCmd)
	EventlogCmd.AddCommand(eventV2.GetPublicEditHistoryCmd)
	EventlogCmd.AddCommand(eventV2.GetUserEventsV2PublicCmd)
}
