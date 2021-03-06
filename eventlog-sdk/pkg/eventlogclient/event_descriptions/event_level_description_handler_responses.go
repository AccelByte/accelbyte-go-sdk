// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package event_descriptions

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// EventLevelDescriptionHandlerReader is a Reader for the EventLevelDescriptionHandler structure.
type EventLevelDescriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EventLevelDescriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewEventLevelDescriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/descriptions/eventLevel returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEventLevelDescriptionHandlerOK creates a EventLevelDescriptionHandlerOK with default headers values
func NewEventLevelDescriptionHandlerOK() *EventLevelDescriptionHandlerOK {
	return &EventLevelDescriptionHandlerOK{}
}

/*EventLevelDescriptionHandlerOK handles this case with default header values.

  OK
*/
type EventLevelDescriptionHandlerOK struct {
	Payload *eventlogclientmodels.ModelsMultipleEventLevel
}

func (o *EventLevelDescriptionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventLevel][%d] eventLevelDescriptionHandlerOK  %+v", 200, o.Payload)
}

func (o *EventLevelDescriptionHandlerOK) GetPayload() *eventlogclientmodels.ModelsMultipleEventLevel {
	return o.Payload
}

func (o *EventLevelDescriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(eventlogclientmodels.ModelsMultipleEventLevel)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
