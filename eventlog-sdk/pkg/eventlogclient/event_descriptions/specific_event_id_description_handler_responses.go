// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_descriptions

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// SpecificEventIDDescriptionHandlerReader is a Reader for the SpecificEventIDDescriptionHandler structure.
type SpecificEventIDDescriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SpecificEventIDDescriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSpecificEventIDDescriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSpecificEventIDDescriptionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSpecificEventIDDescriptionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/descriptions/eventId/listByEventIds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSpecificEventIDDescriptionHandlerOK creates a SpecificEventIDDescriptionHandlerOK with default headers values
func NewSpecificEventIDDescriptionHandlerOK() *SpecificEventIDDescriptionHandlerOK {
	return &SpecificEventIDDescriptionHandlerOK{}
}

/*SpecificEventIDDescriptionHandlerOK handles this case with default header values.

  OK
*/
type SpecificEventIDDescriptionHandlerOK struct {
	Payload *eventlogclientmodels.ModelsMultipleEventID
}

func (o *SpecificEventIDDescriptionHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventId/listByEventIds][%d] specificEventIdDescriptionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *SpecificEventIDDescriptionHandlerOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *SpecificEventIDDescriptionHandlerOK) GetPayload() *eventlogclientmodels.ModelsMultipleEventID {
	return o.Payload
}

func (o *SpecificEventIDDescriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsMultipleEventID)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSpecificEventIDDescriptionHandlerBadRequest creates a SpecificEventIDDescriptionHandlerBadRequest with default headers values
func NewSpecificEventIDDescriptionHandlerBadRequest() *SpecificEventIDDescriptionHandlerBadRequest {
	return &SpecificEventIDDescriptionHandlerBadRequest{}
}

/*SpecificEventIDDescriptionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type SpecificEventIDDescriptionHandlerBadRequest struct {
}

func (o *SpecificEventIDDescriptionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventId/listByEventIds][%d] specificEventIdDescriptionHandlerBadRequest ", 400)
}

func (o *SpecificEventIDDescriptionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSpecificEventIDDescriptionHandlerNotFound creates a SpecificEventIDDescriptionHandlerNotFound with default headers values
func NewSpecificEventIDDescriptionHandlerNotFound() *SpecificEventIDDescriptionHandlerNotFound {
	return &SpecificEventIDDescriptionHandlerNotFound{}
}

/*SpecificEventIDDescriptionHandlerNotFound handles this case with default header values.

  Not Found
*/
type SpecificEventIDDescriptionHandlerNotFound struct {
}

func (o *SpecificEventIDDescriptionHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/descriptions/eventId/listByEventIds][%d] specificEventIdDescriptionHandlerNotFound ", 404)
}

func (o *SpecificEventIDDescriptionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
